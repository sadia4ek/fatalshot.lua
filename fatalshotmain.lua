-- Credits To The Original Devs @xz, @goof
getgenv().Config = {
	Invite = "t.me/worldowner3",
	Version = "1.0",
}

getgenv().luaguardvars = {
	DiscordName = "sadia4ek",
}

local RandomNameList = {
    "path to victory",
    "road to glory",
    "journey to win",
    "quest for the crown",
    "highway to success",
    "chasing the top",
    "way to triumph",
    "route to fame",
    "run to the finish",
    "trail to victory",
    "path of champions",
    "road of legends",
    "victory lane",
    "race to the top",
    "destination: win",
}


local WordList = {
    "ez clap",
    "no chance",
    "outplayed",
    "gg ez",
    "too fast",
    "you can't hit me",
    "auto win",
    "skill issue",
    "next time maybe",
    "try harder",
    "no mercy",
    "too strong",
    "unstoppable",
    "dominated",
}

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Other/main/1"))()

library:init()

local randomWord = RandomNameList[math.random(#RandomNameList)]
local mainwindow = library.NewWindow({
    title = "FatalShot | " .. randomWord,
    size = UDim2.new(0, 525, 0, 650)
})

local tabs = {
    aimtab = mainwindow:AddTab("Aim"),
	esptab = mainwindow:AddTab("Esp"),
	aatab = mainwindow:AddTab("Anti-Aim"),
	misctab = mainwindow:AddTab("Misc"),
	Settings = library:CreateSettingsTab(mainwindow),
}

local sections = {
	-- aim tab sections
	aimsection = tabs.aimtab:AddSection("Aim", 1),
	fov = tabs.aimtab:AddSection("Fov", 2),
	-- esp tab sections
	espsection = tabs.esptab:AddSection("Player Esp", 1),
	weaponssection = tabs.esptab:AddSection("Player Chams", 2),
	espsection = tabs.esptab:AddSection("Items esp", 1),
	chams = tabs.esptab:AddSection("Items chams", 2),
	-- aa tab sections
	aimsection = tabs.aatab:AddSection("Aim", 1),
	fakepitchsection = tabs.aatab:AddSection("Fake Pitch", 2),
	-- misc tab sections
	another = tabs.misctab:AddSection("Another", 1),
	sounds = tabs.misctab:AddSection("Soon...", 2),
}

