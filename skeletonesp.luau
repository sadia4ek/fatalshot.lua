function CreateSkeletonESP(player)
    local lines = {}

    -- создаём линии скелета
    local parts = {"Head","UpperTorso","LowerTorso","LeftUpperArm","LeftLowerArm","RightUpperArm","RightLowerArm","LeftUpperLeg","LeftLowerLeg","RightUpperLeg","RightLowerLeg"}
    for _, _ in ipairs(parts) do
        local line = Drawing.new("Line")
        line.Thickness = 2
        line.Color = Color3.fromRGB(0, 255, 0)
        line.Visible = false
        table.insert(lines, line)
    end

    task.spawn(function()
        while player and player.Parent do
            local char = player.Character

            if char then
                local Camera = workspace.CurrentCamera
                local idx = 1

                local function connect(a, b)
                    local pa = char:FindFirstChild(a)
                    local pb = char:FindFirstChild(b)
    
                    if pa and pb then
                        local p1, v1 = Camera:WorldToViewportPoint(pa.Position)
                        local p2, v2 = Camera:WorldToViewportPoint(pb.Position)
    
                        if v1 and v2 then
                            lines[idx].From = Vector2.new(p1.X, p1.Y)
                            lines[idx].To = Vector2.new(p2.X, p2.Y)
                            lines[idx].Visible = true
                        else
                            lines[idx].Visible = false
                        end
                    else
                        lines[idx].Visible = false
                    end
    
                    idx = idx + 1
                end

                connect("Head", "UpperTorso")
                connect("UpperTorso", "LowerTorso")
                connect("UpperTorso", "LeftUpperArm")
                connect("LeftUpperArm", "LeftLowerArm")
                connect("UpperTorso", "RightUpperArm")
                connect("RightUpperArm", "RightLowerArm")
                connect("LowerTorso", "LeftUpperLeg")
                connect("LeftUpperLeg", "LeftLowerLeg")
                connect("LowerTorso", "RightUpperLeg")
                connect("RightUpperLeg", "RightLowerLeg")

            else
                for _, l in ipairs(lines) do
                    l.Visible = false
                end
            end

            RunService.Heartbeat:Wait()
        end

        for _, l in ipairs(lines) do l:Remove() end
    end)
end
