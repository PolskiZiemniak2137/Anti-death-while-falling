local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local VOID_HEIGHT = -50

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local rootPart = character:WaitForChild("HumanoidRootPart")

        while character:IsDescendantOf(Workspace) do
            if rootPart.Position.Y < VOID_HEIGHT then

                local spawnLocation = Workspace:FindFirstChild("SpawnLocation")
                if spawnLocation then
                    rootPart.CFrame = spawnLocation.CFrame + Vector3.new(0, 3, 0)
                else
                    rootPart.CFrame = CFrame.new(0, 10, 0)
                end
            end
            task.wait(1)
        end
    end)
end)