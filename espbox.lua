local RunService = game:GetService("RunService")

function CreateBoxESP(player)
    local box = Drawing.new("Square")
    box.Thickness = 2
    box.Filled = false
    box.Color = Color3.fromRGB(255, 255, 255)
    box.Visible = false

    -- обновление
    task.spawn(function()
        while player and player.Parent do
            local char = player.Character
            local hrp = char and char:FindFirstChild("HumanoidRootPart")
            local hum = char and char:FindFirstChild("Humanoid")

            if hrp and hum and hum.Health > 0 then
                local pos, visible = workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)

                if visible then
                    local size = Vector2.new(50, 90)
                    box.Size = size
                    box.Position = Vector2.new(pos.X - size.X/2, pos.Y - size.Y/2)
                    box.Visible = true
                else
                    box.Visible = false
                end
            else
                box.Visible = false
            end

            RunService.Heartbeat:Wait()
        end

        box:Remove()
    end)
end
