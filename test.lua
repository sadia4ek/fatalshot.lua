-- LocalScript для загрузки картинки с GitHub

local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Создаем GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GitHubPhoto"
screenGui.Parent = gui

-- Контейнер с возможностью перемещения
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 400)
frame.Position = UDim2.new(0.5, -300, 0.5, -200)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Active = true
frame.Draggable = true  -- Можно перемещать
frame.Parent = screenGui

-- Заголовок
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
title.Text = "Картинка с GitHub (перетащи меня)"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSans
title.TextSize = 18
title.Parent = frame

-- Кнопка закрытия
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 0)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.BackgroundColor3 = Color3.new(1, 0, 0)
closeBtn.Parent = frame

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Место для картинки
local image = Instance.new("ImageLabel")
image.Size = UDim2.new(1, -20, 1, -50)
image.Position = UDim2.new(0, 10, 0, 40)
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.Parent = frame

-- Текст загрузки
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 1, 0)
loadingText.Text = "Загрузка картинки с GitHub..."
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.BackgroundTransparency = 1
loadingText.Parent = image

-- Функция загрузки с GitHub
local function loadFromGitHub()
    -- Прямая ссылка на картинку в GitHub
    -- Формат: https://raw.githubusercontent.com/用户名/仓库名/分支/путь/к/картинке.jpg
    local githubUrl = "https://raw.githubusercontent.com/sadia4ek/fatalshot.lua/refs/heads/main/image.png"
    
    -- Пример рабочей картинки (замени на свою):
    -- local githubUrl = "https://raw.githubusercontent.com/torvalds/linux/master/logo.png"
    
    -- Пробуем загрузить
    local success, result = pcall(function()
        return game:HttpGet(githubUrl)
    end)
    
    if success then
        loadingText.Text = "Загрузка завершена!"
        wait(1)
        loadingText.Visible = false
        
        -- Показываем картинку
        image.Image = githubUrl
    else
        loadingText.Text = "Ошибка загрузки :("
        loadingText.TextColor3 = Color3.new(1, 0, 0)
    end
end

-- Запускаем загрузку
loadFromGitHub()

-- Проверка загрузки картинки
image:GetPropertyChangedSignal("Image"):Connect(function()
    if image.Image ~= "" then
        print("Картинка загружена!")
    end
end)
