local Decimals = 4
local Clock = os.clock()
local ValueText = "11valueww"
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

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/1%20Tokyo%20Lib%20(FIXED)/Tokyo%20Lib%20Source.lua"))({
    cheatname = "FatalShot",
    gamename = "Sniper Duels", 
})

library:init()

local randomWord = WordList[math.random(#WordList)]
local mainwindow = library.NewWindow({
    title = "FatalShot | " .. randomWord,
    size = UDim2.new(0, 510, 0.6, 6)
})

local AimTab = mainwindow:AddTab("Aim")
local TabSettings = library:CreateSettingsTab(Window1)
local AimSettingsSection = AimTab:AddSection("Aim Settings", 1)


AimSettingsSection:AddToggle({
    text = "Aim",
    state = false,
    risky = true,
    tooltip = "toooltiptetss",
    flag = "aim",
    risky = false,
    callback = function(v)
        print("Aim")
    end
}):AddBind({
    enabled = true,
    text = "Aim Keybind",
    tooltip = "tooltip1hzhzhzh",
    mode = "toggle",
    bind = "M2",
    flag = "aimkey",
    state = false,
    nomouse = false,
    risky = false,
    noindicator = false,
    callback = function(v)
        print(ValueText, v)
    end,
    keycallback = function(v)
        print("activated")
    end
})
