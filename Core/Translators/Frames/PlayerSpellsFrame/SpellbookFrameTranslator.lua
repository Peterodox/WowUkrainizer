--- @class WowUkrainizerInternals
local ns = select(2, ...);

local spell_book_item_icon_enter_hooks = {}
local eventHandler = ns.EventHandlerFactory.CreateEventHandler()

local GetTranslatedSpellName = ns.DbContext.Spells.GetTranslatedSpellName
local GetTranslatedClass = ns.DbContext.Units.GetTranslatedClass
local GetTranslatedSpecialization = ns.DbContext.Units.GetTranslatedSpecialization
local GetTranslatedGlobalString = ns.DbContext.GlobalStrings.GetTranslatedGlobalString
local UpdateTextWithTranslation = ns.FontStringUtil.UpdateTextWithTranslation

---@class SpellbookFrameTranslator : BaseTranslator
local translator = setmetatable({}, { __index = ns.BaseTranslator })

local function SpellBookItem_OnIconEnter(spellBookItem)
    if (GameTooltip:GetOwner() ~= spellBookItem.Button) then return end
    local actionBarStatusToolTip = spellBookItem.actionBarStatus and SpellSearchUtil.GetTooltipForActionBarStatus(spellBookItem.actionBarStatus);
    if (actionBarStatusToolTip) then
        UpdateTextWithTranslation(_G["GameTooltipTextLeft" .. GameTooltip:NumLines()], GetTranslatedGlobalString)
        GameTooltip:Show()
    end
end

local function PagedContentFrame_OnUpdate()
    for _, frame in PlayerSpellsFrame.SpellBookFrame.PagedSpellsFrame:EnumerateFrames() do
        if frame.HasValidData and frame:HasValidData() then
            if (ns.SettingsProvider.IsNeedTranslateSpellNameInSpellbook()) then
                UpdateTextWithTranslation(frame.Name, GetTranslatedSpellName)
            end

            if (frame.SubName:IsVisible()) then
                local subNameText = frame.SubName:GetText()
                if (subNameText and string.match(subNameText, TRADESKILL_RANK_HEADER)) then
                    local rank = C_Spell.GetSpellSkillLineAbilityRank(frame.spellBookItemInfo.spellID)
                    frame.SubName:SetText(string.format(GetTranslatedGlobalString(TRADESKILL_RANK_HEADER), rank))
                else
                    UpdateTextWithTranslation(frame.SubName, GetTranslatedGlobalString)
                end
            end

            if (frame.RequiredLevel:IsVisible()) then
                local requiredLevel = C_SpellBook.GetSpellBookItemLevelLearned(frame.slotIndex, frame.spellBank);
                frame.RequiredLevel:SetText(string.format(GetTranslatedGlobalString(SPELLBOOK_AVAILABLE_AT), requiredLevel))
            end

            if (not spell_book_item_icon_enter_hooks[frame]) then
                spell_book_item_icon_enter_hooks[frame] = true;
                hooksecurefunc(frame, "OnIconEnter", SpellBookItem_OnIconEnter)
            end
        else
            local elementData = frame:GetElementData()
            if (elementData.spellGroup) then
                if (elementData.spellGroup.specID) then
                    UpdateTextWithTranslation(frame.Text, GetTranslatedSpecialization)
                else
                    UpdateTextWithTranslation(frame.Text, GetTranslatedClass)
                end
            else
                UpdateTextWithTranslation(frame.Text, GetTranslatedGlobalString)
            end
        end
    end
end

local function TranslateSpellBookFrame()
    local spellBookFrame = PlayerSpellsFrame.SpellBookFrame
    UpdateTextWithTranslation(spellBookFrame.CategoryTabSystem.tabs[1].Text, GetTranslatedClass)
    UpdateTextWithTranslation(spellBookFrame.CategoryTabSystem.tabs[2].Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(spellBookFrame.CategoryTabSystem.tabs[3].Text, GetTranslatedGlobalString)

    UpdateTextWithTranslation(spellBookFrame.HidePassivesCheckButton.Label, GetTranslatedGlobalString)
    UpdateTextWithTranslation(spellBookFrame.SearchBox.Instructions, GetTranslatedGlobalString)
    spellBookFrame.SearchBox.instructionText = GetTranslatedGlobalString(spellBookFrame.SearchBox.instructionText)
end

local function SetupAndTranslatePagedSpellsFrame(self)
    PlayerSpellsFrame.SpellBookFrame:HookScript("OnShow", PagedContentFrame_OnUpdate)

    local pagedSpellsFrame = PlayerSpellsFrame.SpellBookFrame.PagedSpellsFrame
    pagedSpellsFrame.PagingControls.currentPageOnlyText = GetTranslatedGlobalString(pagedSpellsFrame.PagingControls.currentPageOnlyText)
    pagedSpellsFrame.PagingControls.currentPageWithMaxText = GetTranslatedGlobalString(pagedSpellsFrame.PagingControls.currentPageWithMaxText)

    pagedSpellsFrame:RegisterCallback(PagedContentFrameBaseMixin.Event.OnUpdate, PagedContentFrame_OnUpdate, self);
end

function translator:IsEnabled()
    return ns.SettingsProvider.GetOption(WOW_UKRAINIZER_TRANSLATE_SPELLBOOK_FRAME_OPTION)
end

function translator:Init()
    local function OnAddOnLoaded(_, name)
        if (name == "Blizzard_PlayerSpells") then
            SetupAndTranslatePagedSpellsFrame(self)
            TranslateSpellBookFrame()
            eventHandler:Unregister(OnAddOnLoaded, "ADDON_LOADED")
        end
    end
    eventHandler:Register(OnAddOnLoaded, "ADDON_LOADED")
end

ns.TranslationsManager:AddTranslator(translator)
