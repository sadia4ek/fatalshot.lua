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

local randomWord = WordList[math.random(#WordList)]

local Window = library.NewWindow({
	title = "FatalShot | " .. randomWord,
	size = UDim2.new(0, 525, 0, 650)
})


