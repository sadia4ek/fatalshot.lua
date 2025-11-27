
function CreateHealthBar(player)
    local bar = Drawing.new("Square")
    bar.Thickness = 1
    bar.Filled = true
    bar.Color = Color3.fromRGB(0, 255, 0)
    bar.Visible = false

    task.spawn(function()
        while player and player.Parent do
            local char = player.Character
            local hum = char and char:FindFirstChild("Humanoid")
            local hrp = char and char:FindFirstChild("HumanoidRootPart")

            if hum and hrp and hum.Health > 0 then
                local pos, vis = workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)
                if vis then
                    local hp = hum.Health / hum.MaxHealth
                    bar.Size = Vector2.new(5, 90 * hp)
                    bar.Position = Vector2.new(pos.X - 40, pos.Y - (90 * hp)/2)
                    bar.Color = Color3.fromRGB(255 * (1 - hp), 255 * hp, 0)
                    bar.Visible = true
                else
                    bar.Visible = false
                end
            else
                bar.Visible = false
            end

            RunService.Heartbeat:Wait()
        end

        bar:Remove()
    end)
end
