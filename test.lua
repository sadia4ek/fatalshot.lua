-- Простой скрипт для скачивания фото в Roblox

local imageUrl = "https://example.com/image.jpg" -- Замени на ссылку на фото

-- Создаем GUI для показа фото
local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Создаем экран
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = gui

-- Создаем ImageLabel
local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0, 500, 0, 300)
image.Position = UDim2.new(0.5, -250, 0.5, -150)
image.BackgroundColor3 = Color3.new(1, 1, 1)
image.Image = imageUrl  -- Устанавливаем URL
image.Parent = screenGui

print("Пытаюсь загрузить фото...")

-- Просто ждем немного
wait(2)

print("Фото должно отобразиться")
