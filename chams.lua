function CreateChams(player)
    task.spawn(function()
        while not player.Character do task.wait() end

        local hl = Instance.new("Highlight")
        hl.FillColor = Color3.fromRGB(255, 0, 150)
        hl.OutlineColor = Color3.fromRGB(255, 255, 255)
        hl.FillTransparency = 0.5
        hl.OutlineTransparency = 0
        hl.Parent = player.Character

        player.CharacterAdded:Connect(function(char)
            local new = hl:Clone()
            new.Parent = char
        end)
    end)
end
