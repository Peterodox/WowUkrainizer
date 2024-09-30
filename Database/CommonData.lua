﻿--[[
    WARNING: This file is automatically generated. DO NOT modify this file manually, as your changes will be lost the next time this file is regenerated.
    Instead, modify the source files used to generate this file, and then regenerate the file using the appropriate tool.
]]

--- @class WowUkrainizerInternals
local ns = select(2, ...);

if (not ns._db) then return end

ns._db.UnitTypes = {
	[1533463572] = "Звір",
	[3622049986] = "Драконід",
	[3191838751] = "Демон",
	[2771787563] = "Елементаль",
	[1527380299] = "Гігант",
	[1604911792] = "Немертві",
	[2830990351] = "Гуманоїд",
	[2755661964] = "Звірятко",
	[80875114] = "Механізм",
	[507603013] = "Тотем",
	[1085814411] = "Небойовий супутник",
	[1402454280] = "Газова хмара",
	[2027583260] = "Неприручений супутник",
	[2540928608] = "Аберація",
	[766262262] = "Труп",
	[2093328826] = "Водний",
}


ns._db.UnitRanks = {
	[403204035] = "Елітний",
	[4252393971] = "Рідкісний",
	[2313915581] = "Рідкісний елітний",
	[865654154] = "Бос",
}


ns._db.CommonSpellAttributes = {
	[889212900] = "{1} од. сили світла",
	[595642041] = "{1} од. мани",
	[1851012437] = "{1} од. енергії",
	[2789754182] = "{1} од. мани за сек",
	[1080039023] = "{1} од. енергії, та {2} за сек",
	[2775880667] = "{1} Чі",
	[2437176725] = "{1} од. енергії за сек",
	[2837964483] = "{1} од. гніву",
	[3580147129] = "{1}-{2} од. гніву",
	[2275995772] = "{1} уламків душ",
	[2834363060] = "{1} уламок душі",
	[4180624434] = "{1}-{2} уламків душ",
	[2055429060] = "{1} од. безумства",
	[2084861346] = "{1}-{2} од. мани",
	[1182577013] = "{1} од. люті",
	[4007551214] = "{1} од. астральної сили",
	[2686434910] = "{1} од. виру стихій",
	[1070263057] = "{1} од. концентрації",
	[518114064] = "{1} руна",
	[4254714067] = "{1} рун",
	[764373567] = "{1} од. сили рун",
	[3220591907] = "{1} од. сили рун за сек",
	[3342297319] = "{1}-{2} од. сили рун",
	[2254423668] = "{1} од. есенції",
	[1209944415] = "Дистанція: {1} м",
	[477002124] = "Ближній бій",
	[906470033] = "Необмежена дистанція",
	[3676642863] = "Дистанція: {1}-{2} м",
	[171214425] = "Відновлення: {1} хв",
	[648828859] = "Відновлення: {1} сек",
	[4056728397] = "Перезарядження: {1} сек",
	[3579113963] = "Перезарядження: {1} хв",
	[2983551322] = "Відновлення: {1} год",
	[151898835] = "Миттєво",
	[1499728141] = "{1} сек застосування",
	[2154338693] = "Підтримується",
	[3309195287] = "{1} сек посилення",
	[2343899406] = "Зміна форми",
	[2651613284] = "Бронзовий",
	[1568279309] = "Синій",
	[2728481183] = "Чорний",
	[3151305389] = "Червоний",
	[1590011029] = "Зелений",
	[2645462707] = "{1}-{2} очок серії",
	[3235173138] = "До відновлення: {1} сек",
	[3211258688] = "До відновлення: {1} хв",
	[304539637] = "Максимум {1} {declension|заряд|заряди|зарядів}",
	[3654266355] = "Потрібен щит",
	[2303225791] = "Потрібна одноручна зброя ближнього бою",
	[2643075829] = "Потрібні кинджали",
	[1609004391] = "Потрібна дворучна зброя ближнього бою",
	[830916244] = "Потрібна зброя ближнього бою",
	[436339998] = "Потрібна невидимість",
	[2770770810] = "Потрібна тіньова форма",
	[2832961635] = "Потрібна форма ведмедя",
	[684924425] = "Потрібна форма кота",
	[2604743683] = "Потрібна форма кота, форма ведмедя",
	[1067800011] = "Потрібна форма місячного совуха",
	[1708251374] = "Потрібен {1} рівень",
	[2396389111] = "Потрібен талант: %s",
}


ns._db.Specializations = {
	[28900901] = "Таємна магія",
	[3148808328] = "Вогонь",
	[1184911057] = "Лід",
	[796193129] = "Святість",
	[3834747147] = "Захист",
	[2211441591] = "Розплата",
	[944060906] = "Зброя",
	[3054418531] = "Лють",
	[648292352] = "Баланс",
	[3421506584] = "Дикий",
	[1917015102] = "Вартовий",
	[2065666150] = "Відновлення",
	[266195678] = "Ткач Порожнечі",
	[190095954] = "Архонт",
	[1481185800] = "Оракул",
	[1165091278] = "Кров",
	[1459886898] = "Нечестивість",
	[3486419460] = "Володар звірів",
	[2036718994] = "Стрільба",
	[1435793978] = "Виживання",
	[3124326837] = "Дисципліна",
	[3417490995] = "Тінь",
	[3476080123] = "Вбивця",
	[261699827] = "Бандит",
	[1347760505] = "Розвідник",
	[2771787563] = "Стихії",
	[412578545] = "Вдосконалення",
	[2074444974] = "Прокляття",
	[4123847815] = "Демонологія",
	[583607346] = "Руйнування",
	[1444650385] = "Пивовар",
	[583688239] = "Вітрохід",
	[3971593729] = "Ткач туману",
	[1537849425] = "Сан'лейн",
	[4147087700] = "Вершник Апокаліпсиса",
	[3739020406] = "Смертеносець",
	[3991127153] = "Лють Сонця",
	[1527791070] = "Чарокид",
	[467600844] = "Морозний вогонь",
	[2480693027] = "Вартовий",
	[1127307626] = "Ватажок зграї",
	[728327149] = "Темний слідопит",
	[4085125538] = "Храмовник",
	[3544703929] = "Коваль Світла",
	[1579962378] = "Вісник Сонця",
	[3818106479] = "Хитрун",
	[667599157] = "Невільник долі",
	[1914697037] = "Ловчий Смерті",
	[4059117261] = "Тотемант",
	[1588508802] = "Буревісник",
	[4179637917] = "Провидець",
	[3611643100] = "Хаос",
	[3401686697] = "Жнець душ",
	[4128907500] = "Помста",
	[2468591690] = "Закликач Пекла",
	[4087082732] = "Дияволіст",
	[2091447644] = "Вбивця",
	[3879800873] = "Гірський Тан",
	[4244893385] = "Колос",
	[2410727175] = "Спустошення",
	[2130296764] = "Збереження",
	[1806072656] = "Аугментація",
	[381852735] = "Друїд Кігтя",
	[2671027599] = "Невгамовний хижак",
	[3725585430] = "Хранитель Гаю",
	[3464246914] = "Обранець Елуни",
	[1900163013] = "Пошрамований Скверною",
	[2323592535] = "Альдрахійський спустошувач",
	[1444918237] = "Дракомандир",
	[115486947] = "Творець полум'я",
	[90434986] = "Хранитель часу",
	[2178093326] = "Шадо-Пань",
	[578025463] = "Майстер гармонії",
	[1587795218] = "Провідник Небожителів",
}


ns._db.Classes = {
	[2568292970] = {"Воїн","Воїтелька","Воїна","Воїтельки","Воїну","Воїтельці","Воїна","Воїтельку","Воїном","Воїтелькою","Воїнові","Воїтельці","Воїне","Воїтелько"},
	[1764833471] = {"Паладин","Паладинка","Паладина","Паладинки","Паладину","Паладинці","Паладина","Паладинку","Паладином","Паладинкою","Паладинові","Паладинці","Паладине","Паладинко"},
	[545048292] = {"Мисливець","Мисливиця","Мисливця","Мисливиці","Мисливцю","Мисливиці","Мисливця","Мисливицю","Мисливцем","Мисливицею","Мисливцеві","Мисливиці","Мисливцю","Мисливице"},
	[1202678814] = {"Розбійник","Розбійниця","Розбійника","Розбійниці","Розбійнику","Розбійниці","Розбійника","Розбійницю","Розбійником","Розбійницею","Розбійникові","Розбійниці","Розбійнику","Розбійнице"},
	[128970865] = {"Жрець","Жриця","Жерця","Жриці","Жерцю","Жриці","Жерця","Жрицю","Жерцем","Жрицею","Жерцеві","Жриці","Жерче","Жрице"},
	[415415799] = {"Лицар Смерті","Лицарка Смерті","Лицаря Смерті","Лицарки Смерті","Лицарю Смерті","Лицарці Смерті","Лицаря Смерті","Лицарку Смерті","Лицарем Смерті","Лицаркою Смерті","Лицареві Смерті","Лицарці Смерті","Лицарю Смерті","Лицарко Смерті"},
	[3415876092] = {"Шаман","Шаманка","Шамана","Шаманки","Шаману","Шаманці","Шамана","Шаманку","Шаманом","Шаманкою","Шаманові","Шаманці","Шамане","Шаманко"},
	[1792658401] = {"Маг","Магиня","Мага","Магині","Магу","Магині","Мага","Магиню","Магом","Магинею","Магові","Магині","Магу","Магине"},
	[426473252] = {"Чорнокнижник","Чорнокнижниця","Чорнокнижника","Чорнокнижниці","Чорнокнижнику","Чорнокнижниці","Чорнокнижника","Чорнокнижницю","Чорнокнижником","Чорнокнижницею","Чорнокнижникові","Чорнокнижниці","Чорнокнижнику","Чорнокнижнице"},
	[1970356066] = {"Монах","Монахиня","Монаха","Монахині","Монаху","Монахині","Монаха","Монахиню","Монахом","Монахинею","Монахові","Монахині","Монаше","Монахине"},
	[1208892090] = {"Друїд","Друїдка","Друїда","Друїдки","Друїду","Друїдці","Друїда","Друїдку","Друїдом","Друїдкою","Друїдові","Друїдці","Друїде","Друїдко"},
	[2914174685] = {"Мисливець на демонів","Мисливиця на демонів","Мисливця на демонів","Мисливиці на демонів","Мисливцю на демонів","Мисливиці на демонів","Мисливця на демонів","Мисливицю на демонів","Мисливцем на демонів","Мисливицею на демонів","Мисливцеві на демонів","Мисливиці на демонів","Мисливцю на демонів","Мисливице на демонів"},
	[3611267505] = {"Пробудник","Пробудниця","Пробудника","Пробудниці","Пробуднику","Пробудниці","Пробудника","Пробудницю","Пробудником","Пробудницею","Пробудникові","Пробудниці","Пробуднику","Пробуднице"},
}


ns._db.Races = {
	[3622049986] = {"Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin","Dragonkin"},
	[2999684790] = {"Ельф","Ельфійка","Ельфа","Ельфійки","Ельфові","Ельфійці","Ельфа","Ельфійку","Ельфом","Ельфійкою","Ельфові","Ельфійці","Ельфе","Ельфійко"},
	[3133297939] = {"Людина","Людина","Людини","Людини","Людині","Людині","Людину","Людину","Людиною","Людиною","Людині","Людині","Людино","Людино"},
	[3205883584] = {"Орк","Оркиня","Орка","Оркині","Оркові","Оркині","Орка","Оркиню","Орком","Оркинею","Оркові","Оркині","Орку","Оркине"},
	[1845205659] = {"Дворф","Дворфа","Дворфа","Дворфи","Дворфові","Дворфі","Дворфа","Дворфу","Дворфом","Дворфою","Дворфові","Дворфі","Дворфе","Дворфо"},
	[633046969] = {"Нічний ельф","Нічна ельфійка","Нічного ельфа","Нічної ельфійки","Нічному ельфові","Нічній ельфійці","Нічного ельфа","Нічну ельфійку","Нічним ельфом","Нічною ельфійкою","Нічному ельфові","Нічній ельфійці","Нічний ельфе","Нічна ельфійко"},
	[1604911792] = {"Невмерлий","Невмерла","Невмерлого","Невмерлої","Невмерлому","Невмерлій","Невмерлого","Невмерлу","Невмерлим","Невмерлою","Невмерлому","Невмерлій","Невмерлий","Невмерла"},
	[3323700882] = {"Таурен","Тауренка","Таурена","Тауренки","Тауренові","Тауренці","Таурена","Тауренку","Тауреном","Тауренкою","Таурені","Тауренці","Таурене","Тауренко"},
	[2005188966] = {"Гном","Гномка","Гнома","Гномки","Гномові","Гномці","Гнома","Гномку","Гномом","Гномкою","Гномові","Гномці","Гноме","Гномко"},
	[2192248486] = {"Троль","Тролька","Троля","Трольки","Тролеві","Трольці","Троля","Трольку","Тролем","Тролькою","Тролеві","Трольці","Тролю","Тролько"},
	[486884302] = {"Гоблін","Гоблінка","Гобліна","Гоблінки","Гоблінові","Гоблінці","Гобліна","Гоблінку","Гобліном","Гоблінкою","Гоблінові","Гоблінці","Гобліне","Гоблінко"},
	[519300743] = {"Ельф крові","Ельфійка крові","Ельфа крові","Ельфійки крові","Ельфові крові","Ельфійці крові","Ельфа крові","Ельфійку крові","Ельфом крові","Ельфійкою крові","Ельфові крові","Ельфійці крові","Ельфе крові","Ельфійко крові"},
	[1531750224] = {"Дреней","Дренейка","Дренея","Дренейки","Дренею","Дренейці","Дренея","Дренейку","Дренеєм","Дренейкою","Дренею","Дренейці","Дренею","Дренейко"},
	[2849519574] = {"Ворґен","Ворґенка","Ворґена","Ворґенки","Ворґенові","Ворґенці","Ворґена","Ворґенку","Ворґеном","Ворґенкою","Ворґенові","Ворґенці","Ворґене","Ворґенко"},
	[544600994] = {"Пандарен","Пандаренка","Пандарена","Пандаренки","Пандаренові","Пандаренці","Пандарена","Пандаренку","Пандареном","Пандаренкою","Пандаренові","Пандаренці","Пандарене","Пандаренко"},
	[3517104877] = {"Ночероджений","Ночероджена","Ночеродженого","Ночеродженої","Ночеродженому","Ночеродженій","Ночероджного","Ночероджену","Ночеродженим","Ночеродженою","Ночеродженому","Ночеродженій","Ночероджений","Ночероджена"},
	[1117402833] = {"Таурен Високогір'я","Тауренка Високогір'я","Таурена Високогір'я","Тауренки Високогір'я","Тауренові Високогір'я","Тауренці Високогір'я","Таурена Високогір'я","Тауренку Високогір'я","Тауреном Високогір'я","Тауренкою Високогір'я","Таурені Високогір'я","Тауренці Високогір'я","Таурене Високогір'я","Тауренко Високогір'я"},
	[2665266283] = {"Ельф Порожнечі","Ельфійка Порожнечі","Ельфа Порожнечі","Ельфійки Порожнечі","Ельфові Порожнечі","Ельфійці Порожнечі","Ельфа Порожнечі","Ельфійку Порожнечі","Ельфом Порожнечі","Ельфійкою Порожнечі","Ельфові Порожнечі","Ельфійці Порожнечі","Ельфе Порожнечі","Ельфійко Порожнечі"},
	[1158487247] = {"Осяяний дреней","Осяяна дренейка","Осяяного дренея","Осяяної дренейки","Осяяному дренею","Осяяній дренейці","Осяяного дренея","Оссяну дренейку","Осяяним дренеєм","Осяяною дренейкою","Осяяному дренею","Осяяній дренейці","Осяяний дренею","Осяяна дренейко"},
	[2705026663] = {"Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі","Зандаларі"},
	[652685318] = {"Култірасець","Култіраска","Култірасця","Култіраски","Култірасцю","Култірасці","Култірасцеві","Култірасці","Култірасцем","Култіраскою","Култірасцеві","Култірасці","Култірасцю","Култіраско"},
	[2130253409] = {"Дворф Темного Заліза","Дворфа Темного Заліза","Дворфа Темного Заліза","Дворфи Темного Заліза","Дфорфові Темного Заліза","Дворфі Темного Заліза","Дворфа Темного Заліза","Дворфу Темного Заліза","Дворфом Темного Заліза","Дворфою Темного Заліза","Дворфові Темного Заліза","Дворфі Темного Заліза","Дворфе Темного Заліза","Дворфо Темного Заліза"},
	[3700864122] = {"Вульпера","Вульпера","Вульпери","Вульпери","Вульпері","Вульпері","Вульперу","Вульперу","Вульперою","Вульперою","Вульпері","Вульпері","Вульперо","Вульперо"},
	[1720870463] = {"Орк Маґ'гар","Оркиня Маґ'гар","Орка Маґ'гар","Оркині Маґ'гар","Оркові Маґ'гар","Оркині Маґ'гар","Орка Маґ'гар","Оркиню Маґ'гар","Орком Маґ'гар","Оркинею Маґ'гар","Оркові Маґ'гар","Оркині Маґ'гар","Орку Маґ'гар","Оркине Маґ'гар"},
	[1464936680] = {"Механогном","Механогномка","Механогнома","Механогномки","Механогномові","Механогномці","Механогнома","Механогномку","Механогномом","Механогномкою","Механогномові","Механогномці","Механогноме","Механогномко"},
	[1091579700] = {"Драктир","Драктирка","Драктира","Драктирки","Драктирові","Драктирці","Драктира","Драктирку","Драктиром","Драктиркою","Драктирові","Драктирці","Драктире","Драктирко"},
	[2869701595] = {"Земельник","Земельниця","Земельника","Земельниці","Земельникові","Земельниці","Земельника","Земельницю","Земельником","Земельницею","Земельникові","Земельниці","Земельнику","Земельнице"},
}


ns._db.ShortRaces = {
	["Human"] = "Human",
	["Orc"] = "Orc",
	["Dwarf"] = "Dwarf",
	["Night Elf"] = "Elf",
	["Undead"] = "Undead",
	["Tauren"] = "Tauren",
	["Gnome"] = "Gnome",
	["Troll"] = "Troll",
	["Goblin"] = "Goblin",
	["Blood Elf"] = "Elf",
	["Draenei"] = "Draenei",
	["Worgen"] = "Worgen",
	["Pandaren"] = "Pandaren",
	["Nightborne"] = "Elf",
	["Highmountain Tauren"] = "Tauren",
	["Void Elf"] = "Elf",
	["Lightforged Draenei"] = "Draenei",
	["Zandalari Troll"] = "Troll",
	["Kul Tiran"] = "Human",
	["Dark Iron Dwarf"] = "Dwarf",
	["Vulpera"] = "Vulpera",
	["Mag'har Orc"] = "Orc",
	["Mechagnome"] = "Gnome",
	["Dracthyr"] = "Dragonkin",
	["Visage"] = "Visage",
	["Earthen"] = "Earthen",
	["Haranir"] = "Haranir",
}


ns._db.Attributes = {
	[503660382] = "Сила",
	[1625811594] = "Інтелект",
	[2954854313] = "Спритність",
	[3986999497] = "Броня",
	[2366160346] = "Міцність",
	[2743937124] = "Шкода зброї",
	[458641960] = "Швидкість зброї",
	[2375685100] = "Критичний удар",
	[1930377443] = "Швидкість",
	[815347557] = "Майстерність",
	[3909808918] = "Універсальність",
	[247433944] = "Стрімкість",
	[3982637038] = "Самозцілення",
	[1507206193] = "Уникнення",
	[106082565] = "Парирування",
	[2289139729] = "Ухилення",
	[834022333] = "Незнищенний",
	[3760460996] = "Дух",
	[2123917991] = "Часовий удар",
	[2614035057] = "Згуба демонів",
	[4193550401] = "Згуба Скари",
	[228425106] = "Швидкість пересування",
	[422384902] = "Витривалість",
	[3615005538] = "Похитування",
	[1938725278] = "Здоров'я",
	[3019987949] = "Мана",
	[3445416405] = "Гнів",
	[3853681713] = "Концентрація",
	[3846565686] = "Енергія",
	[2851473056] = "Щастя",
	[4278432033] = "Руни",
	[4101952582] = "Сила рун",
	[1201373632] = "Уламок душі",
	[24821930] = "Уламки душ",
	[3989342769] = "Затемнення",
	[3755607852] = "Сила Світла",
	[2845656524] = "Набої",
	[2273078833] = "Паливо",
	[2944439992] = "Чі",
	[2409192035] = "Безумство",
	[3054418531] = "Лють",
	[114590184] = "Біль",
	[1245632098] = "Шанс ухилення",
	[1189560896] = "Шанс парирування",
	[3087670606] = "PvP-стійкість",
	[1479345781] = "Швидкість атаки",
	[1425150087] = "Сила атаки дальнього бою",
	[1646421999] = "Сила атаки ближнього бою",
	[3714220341] = "Сила заклинань",
	[4092325422] = "Відн. енергії",
	[2002146994] = "Відн. концентрації",
	[2413106340] = "Відн. рун",
	[3449323804] = "Відн. мани",
}


ns._db.Roles = {
	[1852463528] = "Цілитель",
	[3783624173] = "Танк",
	[3859909207] = "Боєць",
}


ns._db.SpecializationNotes = {
	[3852447780] = "Маніпулює чистою таємною магією, знищуючи ворогів з приголомшливою силою.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[316855215] = "Фокусує чисту сутність магії Вогню, атакуючи ворогів горючим полум'ям.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[872924061] = "Заморожує ворогів на місці й розбиває їх на друзки магією холоду.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[1542938356] = "Пробуджує силу світла, для зцілення та захисту союзників заради перемоги над злом з найтемніших куточків світу.\n\nБажана зброя: Меч, Булава, Щит",
	[2375740427] = "Використовує магію світла, щоб захистити себе і союзників від нападників. \n\nБажана зброя: Меч, Булава, Сокира, Щит.",
	[2890731931] = "Праведний хрестоносець, який судить і карає супротивників зброєю та магією Світла. \n\nБажана зброя: Дворучний меч, Булава, Сокира",
	[656074933] = "Загартований у боях майстер зброї, що використовує мобільність та надзвичайно потужні атаки для перемоги над супротивниками.\n\nБажана зброя: Дворучна сокира, Булава, Меч",
	[3652042103] = "Скажений берсерк, що викликає шквал атак, аби пошматувати своїх ворогів.\n\nБажана зброя: Дворучні сокири, Булави, Мечі",
	[1446208279] = "Відважний захисник, який використовує щит аби захистити себе та своїх союзників.\n\nБажана зброя: Сокира, Булава, Меч та Щит",
	[2578814365] = "Перевтілюється у могутню Місячну сову, балансуючи сили таємної магії та природи, щоб знищити ворогів.\n\nБажана зброя: Посох, Кинджал, Булава",
	[132812608] = "Приймає форму великого кота, щоб завдавати шкоди укусами та кровотечами.\n\nБажана зброя: Посох, Держакова зброя",
	[1720908269] = "Приймає форму могутнього ведмедя, щоб поглинати шкоду і захищати союзників.\n\nБажана зброя: Посох, Держакова зброя",
	[2606729245] = "Використовує потужну магію природи для зцілення і воскресіння союзників.\n\nБажана зброя: Посох, Кинджал, Булава",
	[2454294800] = "Ткачі Порожнечі присвятили себе дослідженню походження магії Порожнечі та знайшли спосіб встановити з нею тонкий зв'язок. Ця мінлива сила несе велику небезпеку, пожираючи все на своєму шляху.",
	[3388047494] = "Архонти — безмежно побожні жерці з міцним зв'язком зі Світлом та Темрявою. Завдяки благословінню вищих істот, вони зможуть досягнути вознесіння, ставши бездоганною версією себе самих.",
	[3712606480] = "Оракули зазирають у видіння майбутнього, щоб захистити та посилити своїх союзників. Передбачливість цих жерців дає їм змогу благословляти своїх союзників та надавати їм перевагу ще до того, як вони дізнаються про цю потребу.",
	[4097008473] = "Темний охоронець, який використовує і спотворює життєву енергію, щоб укріпити себе перед обличчям ворожої навали.\n\nБажана зброя: Дворучна сокира, Булава, Меч",
	[4260524073] = "Крижаний провісник загибелі, що спрямовує рунічну силу та завдає жорстоких ударів своєю зброєю.\n\nБажана зброя: Сокири, Булави, Мечі в обох руках",
	[1134464025] = "Володар смерті й розкладання, що поширює інфекцію й контролює неживих прислужників, які виконують його накази.\n\nБажана зброя: Дворучна сокира, Булава, Меч",
	[3730575672] = "Володар дикої природи, який приборкує найрізноманітніших звірів, щоб вони допомагали йому в бою.\n\nБажана зброя: Лук, Арбалет, Вогнепальна зброя",
	[3756711699] = "Вправний снайпер, який влучно знищує ворогів здалеку.\n\nБажана зброя: Лук, Арбалет, Вогнепальна зброя",
	[3200539494] = "Здібний рейнджер, який віддає перевагу використанню вибухівки, отрути тварин та скоординованим атакам з прирученим звіром.\n\nБажана зброя: Держакова зброя, Посох",
	[3483923889] = "Використовує магію, щоб захистити від ушкоджень союзників, а також зцілити їхні рани.\n\nБажана зброя: Посох, Жезл, Кинджал, Булава",
	[2474612279] = "Різносторонній цілитель, який може відвернути шкоду, завдану окремим особам або групам, і навіть продовжувати зцілювати з того світу.\n\nБажана зброя: Посох, Жезл, Кинджал, Булава",
	[1986596740] = "Використовує зловісну темну магію і жахливу магію Порожнечі для знищення ворогів.\n\nБажана зброя: Посох, Жезл, Кинджал, Булава",
	[134877213] = "Смертоносний майстер отрут, який відправляє жертв на той світ вбивчими ударами кинджалів.\n\nБажана зброя: Кинджали",
	[1675757402] = "Безжальний злочинець, який використовує спритність і хитрість, щоб сам на сам протистояти ворогам.\n\nБажана зброя: Сокири, Булави, Кулачна зброя",
	[3076820429] = "Безшумний переслідувач, що вистрибує з тіні, щоб влаштувати засідку на свою здобич, яка нічого не підозрює.\n\nБажана зброя: Кинджали",
	[2742600873] = "Заклинатель, який приборкує руйнівні сили природи та стихій.\n\nБажана зброя: Булава, Кинджал, та Щит",
	[3304964099] = "Тотемний воїн, який вражає ворогів зброєю, наповненою стихійною силою.\n\nБажана зброя: Сокири, Булави, Кулачна Зброя для обох рук",
	[2702726302] = "Цілитель, який закликає духів предків та очищувальну силу води, щоб загоїти рани союзників.\n\nБажана зброя: Булава, Кинджал, та Щит.",
	[881456825] = "Майстер темної магії, який спеціалізується на витягуванні життєвої сили та заклинаннях періодичної шкоди.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[4010652843] = "Повелитель демонів, що перетворює душі своєї армії на руйнівну силу.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[1408328421] = "Володар хаосу, який прикликає вогонь, щоб спалити та знищити ворогів.\n\nБажана зброя: Посох, Жезл, Кинджал, Меч",
	[928235981] = "Стійкий забіяка, який використовує непередбачувані рухи та містичні варива, щоб уникнути шкоди та захистити союзників.\n\nБажана зброя: Посох, Держакова зброя",
	[1818716868] = "Неперевершений майстер бойових мистецтв, який б'є супротивників руками та кулаками.\n\nБажана зброя: Кулачна зброя, Сокири, Булави, Мечі",
	[3739686864] = "Цілитель, який володіє таємничим мистецтвом маніпулювання життєвими енергіями за допомогою мудрості Нефритової Змії.\n\nБажана зброя: Посох, Булава, Меч",
	[2413132249] = "Сан'лейн майстерно використовують магію крові та темряви, щоб послабити своїх ворогів і посилити власні можливості.",
	[239570845] = "Вершники Апокаліпсиса закликають силу легендарних Чотирьох Вершників, які стануть на їхній бік у бою. Вони вміло користуються магією Смерті, голоду та зараження.",
	[3656887864] = "Станьте вісником Смерті. Пронизуйте душі ваших ворогів атаками, натхненими силами Тінезем'я, й нагадуйте їм, що загибель — неминуча.",
	[36722909] = "Розкриваючи сили потаємного полум'я, маги Люті Сонця посилюють свої найпотужніші заклинання. Навіть вогняний фенікс прийде їм на допомогу.",
	[63696145] = "Опановування мінливої природи магії дозволяє чарокидам розщеплювати її, створюючи нові могутні та нестабільні чари.",
	[2697098179] = "Маги морозного вогню сплітають, здавалося б, несумісні стихійні сили. Опановуючи протилежні енергії, вони посилюють свої стихійні атаки, навіть комбінуючи їх задля потужнішого удару.",
	[2998557660] = "Вартові черпають свою енергію з сил природи, завдаючи своїми здібностями додаткової шкоди від таємної магії, та закликаючи містичних сов, які обсипатимуть ворогів безжалісними ударами.",
	[3963483080] = "Ватажки зграї формують глибокий зв'язок і довіру зі своїми вихованцями, що дозволяє мисливцю та його зграї полювати з бездоганною координацією на полі бою.",
	[2928050742] = "Не стримуйте злості та нападайте з тіней, атакуючи своїх ворогів некротичними здібностями, підсиленими темрявою. Полеглі від ударів ваших заклинань вороги тільки посилюватимуть ваші тіньові чари.",
	[1054444577] = "Храмовники не спиняються ні перед чим, аби здійснити правосуддя над нечестивцями. Вони викликають молоти Світла й вивільняють руйнівний шквал фізичних атак та світлої магії для подолання ворогів.",
	[911228428] = "Ковалі Світла настільки майстерно опанували цю сяйну магію, що керують нею без зайвих зусиль, створюючи різні конструкції для своєї зброї й обладунків, та для захисту союзників.",
	[2840568154] = "Вісники Сонця укріплюють глибокий зв'язок із сонцем та сонячною енергією, використовуючи її, щоб спалювати ворогів і припікати рани союзників. Вони можуть створювати могутні сонячні промені, ставши провідниками Світла.",
	[3850612874] = "Лише дзенькіт леза та брудні прийоми оточують ворогів, коли в бій вступають хитруни. Вони відвертають увагу супротивників спритною зміною тактик чи змахом меча, щоб згодом розсікти їх прихованим до цього клинком.",
	[870878271] = "Невільники долі завзято схиляють терези, сіючи хаос у продумані плани. Доленосна монета — їхній кращий радник. Кинувши жереб, вони несуть ворогам кінець, сплетений самою долею. Кінець, на який вони заслуговують.",
	[3062518270] = "Ловчі Смерті, її передвісники, завдають удару з тіней, даруючи швидкий кінець своїм цілям.",
	[2275490413] = "Шамани-тотеманти вправно розкривають повну силу своїх тотемів, зміцнюючи їх та викликаючи нові. Вони також відточують свої навички насичення чарами задля майстерності в ближньому бою.",
	[3209123156] = "Буревісники приборкують силу шторму, підпорядковуючи блискавку своїй волі. Пробудіть люту бурю, щоб посіяти хаос серед ворогів, руйнуючи все на своєму шляху.",
	[569026906] = "Розкрийте свою духовну магію, покращуючи свої навички промовляння заклинань і отримуючи можливість викликати духів своїх предків на допомогу вам і союзникам у бою.",
	[3767012229] = "Задумливий майстер бойових клинків і руйнівної сили магії Скверни.\n\nБажана зброя: Бойові клинки, Мечі, Сокири, Кулачна зброя",
	[2123013682] = "Мало хто розуміє силу, приховану в душах загиблих, але багато знають про те, як демони безупинно полюють на них. Женці душ укладають пакти з демонами з Підсвітньої Крутоверті, слугуючи їм за господарів і годуючи їх душами своїх ворогів в обмін на безмежну могутність.",
	[3484223349] = "Приймає свого внутрішнього демона, щоб спопелити ворогів і захистити своїх союзників.\n\nБажана зброя: Бойові клинки, Мечі, Сокири, Кулачна Зброя",
	[1983863244] = "Серед усіх сатирських сект Азероту, Закликачі Пекла жахають найбільше. Ці чорнокнижники навчилися сплітати найогиднішу темну магію та ентропійний вогонь Скверни ціною осквернення власної душі.",
	[2831746571] = "Із загибеллю Легіону багато могутніх демонів опинилися на волі. Дияволісти командують дужими демонами, які колись вважалися непідвладними, і маніпулюють на полі бою безмежними силами Підсвітньої Крутоверті.",
	[3943971545] = "Жорстокий воїн, що зосереджується на цілі й невпинно переслідує її, ошелешуючи своїх ворогів шквалом зі сталевих ударів.",
	[3161113038] = "Гірські Тани — запеклі бійці, які живуть задля поєдинків із гідними супротивниками. Черпаючи силу з землі та енергію з бурі, вони завдають настільки могутнього громового удару, що приголомшують усіх ворогів навколо.",
	[904306448] = "Ветеран незліченних битв, який вміє відбивати атаки, які повалили б інших. З цим досвідом вони здатні завдавати найпотужніших ударів та знищувати своїх ворогів.",
	[1952558806] = "Вивільняє вроджену силу у вигляді хаотичного Червоного полум'я або зосередженої Синьої магії, для винищення ворогів на полі бою.\n\nБажана зброя: Посох, Меч, Кинджал, Булава.",
	[4165243951] = "Звертається до Смарагдового Сну для відновлення життя, а до Бронзових пісків часу - для запобігання шкоді.\n\nБажана зброя: Посох, Меч, Кинджал, Булава",
	[2839294588] = "Наділяє союзників могутністю Чорних драконів та схиляє час і долю на їхню користь з допомогою Бронзової магії.\n\nБажана зброя: Посох, Меч, Кинджал, Булава",
	[2774143245] = "Друїди Кігтя — майстерні знавці могутніх звіриних форм. Перевтілюючись у котів чи ведмедів, вони стають лютими бійцями та захисниками природи.",
	[1582644416] = "Невгамовні хижаки живуть серед далеких хащ, полюючи, щоб увічнити цикл життя і смерті. Вони прагнуть знищити тих, хто шкодить природі, а також використовують свої цілющі сили, щоб повернути життя на безплідні землі.",
	[3933666048] = "Хранителі Гаю надихаються могутніми дітьми Кенарія, щоб захистити природний баланс та Сон. Вони спрямовують силу Сну на посилення своїх заклинань і закликають могутніх дереванів, аби вберегти союзників і знищити ворогів.",
	[1226270598] = "Обранці Елуни присвячують себе Богині Місяця. У відповідь вона відкриває їм зв'язок із зірками та місяцем. Їхні здібності наповнені астральною силою, що дозволяє їм чаклувати потужними зоряними чарами.",
	[941393461] = "Пошрамовані Скверною не цураються свого внутрішнього демона та посилюють вибухову силу приборканого полум'я Скверни.",
	[1397524861] = "Альдрахійські воїни були досконалими майстрами глеф та володіли своїми клинками зі смертоносною грацією, поглинаючи душі й наділяючи свою зброю ще більшою силою.",
	[2759454369] = "Дракомандири — природжені лідери, що здатні надихати прибічників ставати кращими. Вони є обраними генералами драктирів та використовують свої посилені заклинання, щоб віддавати бойові накази й скликати війська.",
	[834197152] = "Творці полум'я використовують вчення Алекстрази й спеціалізуються на захисті союзників, омолодженні та оновленні. Вони також мають унікальну здатність маніпулювати драконячим полум'ям, поширювати та посилювати його.",
	[1963043502] = "Хранителі часу можуть маніпулювати ним, зазираючи у проблиски майбутнього, щоб пришвидшити свої атаки, або викликаючи відлунні копії, щоб повернутися у минуле. Зосередження на бронзовій магії може спричинити нестабільність через безліч майбутніх можливостей, які вони постійно бачать.",
	[2312852796] = "Учіться у своїх попередників і гордо виступайте проти ворогів, захищаючи своїх друзів і сім'ю, подібно до славних Шадо-Пань. Заряджайтеся силою та вичікуйте момент, перш ніж випустити шквал ударів, щоб приголомшити своїх супротивників.",
	[1665308182] = "Майстри гармонії прагнуть фізичної досконалості та перетворення свого тіла в джерело чистої сили, аби возз'єднатися із потоком Чі та природними циклами могутності.",
	[216760663] = "Провідники Небожителів присвячують себе вченню Найясніших, щоб втілити їхню мудрість і приборкати їхню силу. Досвідчені провідники можуть недовго скеровувати силу всіх Небожителів одночасно.",
}


ns._db.SplashFrames = {
	WhatsNew = {
		["11.0.0"] = {
			header = "Новинки в препатчі «Внутрішньої Війни»!",
			topLeftFeatureTitle = "Сяйні спогади",
			topLeftFeatureDesc = "Долайте ворогів зі спогадів минулого Азерот. Доступно з 30 липня!",
			bottomLeftFeatureTitle = "«Внутрішня Війна» вже незабаром!",
			bottomLeftFeatureDesc = "Розпочинається 26 серпня (дочасний доступ з 22 серпня).",
			rightFeatureTitle = "Бойові загони",
			rightFeatureDesc = "Ваші персонажі отримують доступ до банку бойового загону, репутацій «Dragonflight» та іншого!"
		},
		["11.0.2"] = {
			header = "Новинки «Внутрішньої Війни»!",
			topLeftFeatureTitle = "Вибої",
			topLeftFeatureDesc = "Занурюйтесь у вибої, розгадуйте таємниці та шукайте скарби.",
			bottomLeftFeatureTitle = "Героїчні таланти",
			bottomLeftFeatureDesc = "Розширте історію свого класу, завдяки новим наборам талантів!",
			rightFeatureTitle = "Внутрішня Війна",
			rightFeatureDesc = "Відвідайте Каз-Алґар та йдіть на поклик Сяйної Пісні!"
		},
	},
	SeasonRollOver = {
	}
,
}

