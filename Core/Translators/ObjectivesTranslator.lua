--- @class WowUkrainizerInternals
local ns = select(2, ...);

local UpdateTextWithTranslation = ns.FontStringUtil.UpdateTextWithTranslation
local GetTranslatedGlobalString = ns.DbContext.GlobalStrings.GetTranslatedGlobalString
local GetTranslatedZoneText = ns.DbContext.ZoneTexts.GetTranslatedZoneText
local GetTranslatedQuestData = ns.DbContext.Quests.GetTranslatedQuestData
local GetTranslatedQuestTitle = ns.DbContext.Quests.GetTranslatedQuestTitle
local GetTranslatedQuestObjective = ns.DbContext.Quests.GetTranslatedQuestObjective
local GetWaypointTranslation = ns.DbContext.Quests.GetWaypointTranslation
local ExtractFromText = ns.StringUtil.ExtractFromText

---@class ObjectivesTranslator : BaseTranslator
local translator = setmetatable({}, { __index = ns.BaseTranslator })

function translator:IsEnabled()
    return ns.SettingsProvider.GetOption(WOW_UKRAINIZER_TRANSLATE_QUEST_AND_OBJECTIVES_FRAME_OPTION)
end

local function ScenarioObjectiveTracker_LayoutContents(objectiveTracker)
    local headerTextFontString = objectiveTracker.Header.Text

    local _, _, _, _, _, _, _, _, _, scenarioType, _, _, _ = C_Scenario.GetInfo();

    local inChallengeMode = (scenarioType == LE_SCENARIO_TYPE_CHALLENGE_MODE);
    local inProvingGrounds = (scenarioType == LE_SCENARIO_TYPE_PROVING_GROUNDS);
    local dungeonDisplay = (scenarioType == LE_SCENARIO_TYPE_USE_DUNGEON_DISPLAY);
    local provingGroundsActive = objectiveTracker.ProvingGroundsBlock:IsActive();
    local shouldShowMawBuffs = ShouldShowMawBuffs();

    -- header
    if inChallengeMode then
        -- headerTextFontString:SetText(scenarioName); -- TODO: Add translation when scenario name dbcontext ready
    elseif inProvingGrounds or provingGroundsActive or dungeonDisplay then
        UpdateTextWithTranslation(headerTextFontString, GetTranslatedGlobalString)
    elseif shouldShowMawBuffs and not IsInJailersTower() then
        headerTextFontString:SetText(GetTranslatedZoneText(GetZoneText()))
    else
        -- headerTextFontString:SetText(scenarioName); -- TODO: Add translation when scenario name dbcontext ready
    end
end

local function BonusObjectiveTracker_LayoutContents(objectiveTracker)
    UpdateTextWithTranslation(objectiveTracker.Header.Text, GetTranslatedGlobalString)
end

local function ObjectiveTracker_AddAutoQuestObjectives(objectiveTracker)
    local autoQuestPopUpsBlock = objectiveTracker.usedBlocks["AutoQuestPopUpBlockTemplate"]
    if not autoQuestPopUpsBlock then return end

    for i = 1, GetNumAutoQuestPopUps() do
        local questID, popUpType = GetAutoQuestPopUp(i);
        if objectiveTracker:ShouldDisplayAutoQuest(questID) then
            local questTranslatedTitle = questID and GetTranslatedQuestTitle(questID)
            if questTranslatedTitle then
                local block = autoQuestPopUpsBlock[questID .. popUpType];
                if (block) then
                    UpdateTextWithTranslation(block.Contents.TopText, GetTranslatedGlobalString)
                    UpdateTextWithTranslation(block.Contents.BottomText, GetTranslatedGlobalString)
                    block.Contents.QuestName:SetText(questTranslatedTitle)
                    block.Contents:SetWidth(262)
                end
            end
        end
    end
end

local function ObjectiveTracker_UpdateSingle(objectiveTracker, quest)
    local questID = tonumber(quest:GetID());
    if (not questID) then return end

    local template = objectiveTracker.blockTemplate;
    if not objectiveTracker.usedBlocks[template] then return end

    local block = objectiveTracker.usedBlocks[template][questID];
    if (not block) then return end

    local blockHeightDelta = 0;

    local questTranslatedData = questID and GetTranslatedQuestData(questID)
    if (questTranslatedData and questTranslatedData.Title) then
        local originalHeight = block.HeaderText:GetHeight()
        block.HeaderText:SetText(questTranslatedData.Title)
        blockHeightDelta = blockHeightDelta + (block.HeaderText:GetHeight() - originalHeight)
    end

    for key, value in pairs(block.usedLines) do
        local originalTextHeight = value.Text:GetHeight();
        local text = value.Text:GetText()
        if (key == "Failed") then
            value.Text:SetText(GetTranslatedGlobalString(FAILED))
        elseif (key == "QuestComplete") then
            if (text == QUEST_WATCH_QUEST_READY or text == QUEST_WATCH_QUEST_COMPLETE) then
                UpdateTextWithTranslation(value.Text, GetTranslatedGlobalString)
            else
                if (questTranslatedData) then
                    if (questTranslatedData.CompletionText) then
                        value.Text:SetText(questTranslatedData.CompletionText)
                    elseif (not questTranslatedData.ContainsObjectives and questTranslatedData.ObjectivesText) then
                        value.Text:SetText(questTranslatedData.ObjectivesText)
                    end
                end
            end
        elseif (key == "ClickComplete") then
            UpdateTextWithTranslation(value.Text, GetTranslatedGlobalString)
        elseif (key == "Waypoint") then
            local waypointText = ExtractFromText(WAYPOINT_OBJECTIVE_FORMAT_OPTIONAL, text)
            if (waypointText) then
                value.Text:SetText(GetTranslatedGlobalString(WAYPOINT_OBJECTIVE_FORMAT_OPTIONAL, true):format(GetWaypointTranslation(waypointText)))
            else
                value.Text:SetText(GetWaypointTranslation(waypointText))
            end
        elseif (key == "Money") then

        elseif (key == "TimeLeft") then -- only for WorldQuestObjectiveTracker

        else
            value.Text:SetText(GetTranslatedQuestObjective(questID, text))
        end

        local textHeightDelta = value.Text:GetHeight() - originalTextHeight
        value:SetHeight(value:GetHeight() + textHeightDelta)
        blockHeightDelta = blockHeightDelta + textHeightDelta
    end

    block:SetHeight(block:GetHeight() + blockHeightDelta)
end

local function ObjectiveTracker_UpdateHeight(objectiveTracker)
    if not objectiveTracker.usedBlocks[objectiveTracker.blockTemplate] then return end
    local offset = 0;
    for _, block in pairs(objectiveTracker.usedBlocks[objectiveTracker.blockTemplate]) do
        offset = offset + (block:GetHeight() - block.height)
    end

    objectiveTracker:SetHeight(objectiveTracker:GetHeight() + offset)
end

local function ObjectiveTrackerFrame_Init(frame)
    UpdateTextWithTranslation(frame.Header.Text, GetTranslatedGlobalString)
end

function translator:Init()
    UpdateTextWithTranslation(AchievementObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(MonthlyActivitiesObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(QuestObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(CampaignQuestObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(UIWidgetObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(WorldQuestObjectiveTracker.Header.Text, GetTranslatedGlobalString)
    UpdateTextWithTranslation(ProfessionsRecipeTracker.Header.Text, GetTranslatedGlobalString)

    hooksecurefunc(ScenarioObjectiveTracker, "LayoutContents", ScenarioObjectiveTracker_LayoutContents)
    hooksecurefunc(BonusObjectiveTracker, "LayoutContents", BonusObjectiveTracker_LayoutContents)

    hooksecurefunc(QuestObjectiveTracker, "UpdateHeight", ObjectiveTracker_UpdateHeight)
    hooksecurefunc(QuestObjectiveTracker, "AddAutoQuestObjectives", ObjectiveTracker_AddAutoQuestObjectives)
    hooksecurefunc(QuestObjectiveTracker, "UpdateSingle", ObjectiveTracker_UpdateSingle)

    hooksecurefunc(CampaignQuestObjectiveTracker, "UpdateHeight", ObjectiveTracker_UpdateHeight)
    hooksecurefunc(CampaignQuestObjectiveTracker, "AddAutoQuestObjectives", ObjectiveTracker_AddAutoQuestObjectives)
    hooksecurefunc(CampaignQuestObjectiveTracker, "UpdateSingle", ObjectiveTracker_UpdateSingle)

    -- Use hooksecurefunc since UpdateTextWithTranslation in this case call taint code!
    hooksecurefunc(ObjectiveTrackerFrame, "Init", ObjectiveTrackerFrame_Init)
end

ns.TranslationsManager:AddTranslator(translator)
