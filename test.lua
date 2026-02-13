-- Простой скрипт для скачивания фото в Roblox

local imageUrl = "https://example.com/image.jpg" -- Замени на ссылку на фото

-- Функция для скачивания
local function downloadImage(url)
    -- Создаем объект для загрузки
    local image = Instance.new("ImageLabel")
    
    -- Загружаем изображение
    image.Image = url
    
    -- Ждем загрузки
    repeat
        wait(0.1)
    until image.ImageLoaded or image.ImageRectOffset
    
    print("Фото скачано!")
    
    return image
end

-- Используем
local myImage = downloadImage(imageUrl)

-- Можно вставить в GUI
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 500, 0, 300)
frame.Position = UDim2.new(0.5, -250, 0.5, -150)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = gui

myImage.Size = UDim2.new(1, 0, 1, 0)
myImage.BackgroundTransparency = 1
myImage.Parent = frame

print("Фото открыто!")
