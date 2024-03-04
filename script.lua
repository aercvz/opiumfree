local core_gui = game:GetService("CoreGui")
local players = game:GetService("Players")

local player = players.LocalPlayer
local player_gui = player.PlayerGui

local hud = Instance.new("ScreenGui")
hud.IgnoreGuiInset = true
hud.Parent = core_gui

local donation_frame = Instance.new("Frame") do
	donation_frame.AnchorPoint = Vector2.new(0.5, 0.5);
	donation_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	donation_frame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	donation_frame.Size = UDim2.new(1, 0, 1, 0)
	donation_frame.ZIndex = 9999
	donation_frame.Parent = hud
	
	local donation_text = Instance.new("TextLabel") do
		donation_text.AnchorPoint = Vector2.new(0.5, 0.5);
		donation_text.Position = UDim2.new(0.5, 0, 0.5, 0)
		donation_text.Size = UDim2.new(1, 0, 1, 0)
		donation_text.ZIndex = 9999
		donation_text.Text = "friendly reminder that this is a free rogue lineage script\nany type of donations accepted at fortairm@gmail.com"
		donation_text.TextColor3 = Color3.fromRGB(255, 255, 255)
		donation_text.TextSize = 50
		donation_text.TextWrapped = true
		donation_text.Font = Enum.Font.RobotoMono
		donation_text.TextStrokeTransparency = 0
		donation_text.Parent = donation_frame
	end
end

task.delay(5, donation_frame.Destroy, donation_frame)
