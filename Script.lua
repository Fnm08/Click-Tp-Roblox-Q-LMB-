-- Script by Lasiv (Fnm08)
local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.Q) then -- Change Enum.KeyCode.Q to button which you want (ex. Enum.KeyCode.R)
       Teleport(Mouse.Hit.p)
   end
end)
