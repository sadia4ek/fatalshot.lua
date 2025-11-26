-- Credits To The Original Devs @xz, @goof
getgenv().Config = {
	Invite = "3sP26VZy",
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
sections.Section1:AddBind({
    text = "Keybind",
    flag = "Key_1",
    nomouse = true,
    noindicator = true,
    tooltip = "Tooltip1",
    mode = "toggle",
    bind = Enum.KeyCode.Q,
    risky = false,
    keycallback = function(v)
        local trashTalk = {
            "bro aiming at the moon?",
            "nice try… but no",
            "outplayed lol",
            "bro folding like paper",
            "you lagging or skill issue?",
            "I wasn’t even trying",
            "my pet rock plays better",
            "still loading?",
            "this is embarrassing",
            "why so slow?",
            "NPC detected",
            "bot behavior",
            "bro forgot to enable brain",
            "cry about it",
            "rent free",
            "you good? hello?",
            "bro blinked and died",
            "touch grass pls",
            "your aim is on vacation",
            "deleted from existence",
            "too easy",
            "bro thinks he's him",
            "respawn and try again",
            "what was the plan??",
            "you're not serious right?",
            "bro playing on toaster",
            "outskilled",
            "nah this can't be real",
            "thanks for the free kill",
            "matchmaking did you dirty",
            "bro panicked",
            "gg = get good",
            "who are you aiming at??",
            "I’ll wait until you hit one shot",
            "lost in the sauce",
            "bro moving in slow motion",
            "don’t uninstall pls 😭",
            "no way you missed that",
            "your reactions expired",
            "I’m playing with 1 FPS and still winning",
            "bro fighting ghosts",
            "aim.exe has stopped working",
            "I sneezed and won",
            "how are you losing this?",
            "bro playing with oven controls",
        }

        local ChatEvent = game.ReplicatedStorage.Chat.ChatEvents.SayMessage
        local randomIndex = math.random(1, #trashTalk)
        local message = trashTalk[randomIndex]
        ChatEvent:FireServer(message, "All")
		print("trashtalk sent")
    end
})


