--You need press F9 to get the code
if game.CoreGui:FindFirstChild("WRIsle") then
	local WRIsle = game.CoreGui:FindFirstChild("WRIsle")
	for _, object in pairs(WRIsle:GetDescendants()) do
		if object:IsA("BillboardGui") then
			object.Adornee = nil
			object:Destroy()
		end
	end
	WRIsle:Destroy()
end

local player = game.Players.LocalPlayer


local ScreenGui = Instance.new("ScreenGui",game.CoreGui)
ScreenGui.Name = "WRIsle"

local DrinkFrame = Instance.new("Frame",ScreenGui)
DrinkFrame.Name = "DrinkFrame"

local SniperFrame = Instance.new("Frame",ScreenGui)
SniperFrame.Name = "SniperFrame"

local BattleRifleFrame = Instance.new("Frame",ScreenGui)
BattleRifleFrame.Name = "BattleRifleFrame"

local ScopedRifleFrame = Instance.new("Frame",ScreenGui)
ScopedRifleFrame.Name = "ScopedRifleFrame"

local MedickitFrame = Instance.new("Frame",ScreenGui)
MedickitFrame.Name = "MedickitFrame"

local protonFrame = Instance.new("Frame",ScreenGui)
protonFrame.Name = "protonFrame"

local machinegunframe = Instance.new("Frame",ScreenGui)
machinegunframe.Name = "machinegunframe"

local Turretframe = Instance.new("Frame",ScreenGui)
Turretframe.Name = "Turretframe"

local StrangeDrink = "Ceramic jar wrapped tightly. Contains some kind of liquid within. 3 uses."
local SniperRifle = "[10/10]"
local BattleRifle = "[30/30]"
local ScopedRifle = "[1/1]"
local Medickit = "A box carrying essential items used to treat basic injury."
local proton = "[5/5]"
local machinegun = "[60/60]"
local Turret = "[1 HP] Bee Buddy AI defense system. Requires a weapon to operate."


for _, Case in pairs(workspace:GetChildren()) do
	if Case:IsA("Model") then
		if Case.Name == "Crate" then
			if (player.Character.HumanoidRootPart.Position - Case.Main.Position).Magnitude <=5 then
				print("Crate item:"..Case["#Bypassable"].Item.Value)
			end
		end
	end
end


for _, Part in pairs(workspace.Map.Main:GetChildren()) do
	if Part:IsA("Part") then
		if Part:FindFirstChild("Script") and Part:FindFirstChild("SurfaceGui") then
			print("Code Laboratory:"..Part.SurfaceGui.TextLabel.Text)
		end
	end
end

for _, Tool in pairs(workspace.Map.Ignore.Tools:GetChildren()) do
	if Tool:FindFirstChild("ToolTip") then
		if Tool.ToolTip.Value == StrangeDrink then
			local Gui = Instance.new("BillboardGui",DrinkFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(251, 255, 0)	
		elseif Tool.ToolTip.Value == SniperRifle then
			local Gui = Instance.new("BillboardGui",SniperFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(28, 255, 119)	
		elseif Tool.ToolTip.Value == BattleRifle then
			local Gui = Instance.new("BillboardGui",BattleRifleFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(255, 64, 211)	
		elseif Tool.ToolTip.Value == ScopedRifle then
			local Gui = Instance.new("BillboardGui",ScopedRifleFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(38, 70, 255)	
		elseif Tool.ToolTip.Value == Medickit then
			local Gui = Instance.new("BillboardGui",MedickitFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)	
		elseif Tool.ToolTip.Value == proton then
			local Gui = Instance.new("BillboardGui",protonFrame)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(253, 243, 255)	
		elseif Tool.ToolTip.Value == machinegun then
			local Gui = Instance.new("BillboardGui",machinegunframe)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(17, 53, 61)	
		elseif Tool.ToolTip.Value == Turret then
			local Gui = Instance.new("BillboardGui",Turretframe)
			Gui.Name = "ESP"
			Gui.Size = UDim2.new(1, 0, 1, 0)
			Gui.AlwaysOnTop = true
			Gui.Adornee = Tool.Handle
			local frame = Instance.new("Frame", Gui)
			frame.Size = UDim2.new(3, 0, 3, 0)
			frame.BackgroundTransparency = 0.5
			frame.BorderSizePixel = 0
			frame.BackgroundColor3 = Color3.fromRGB(75, 255, 26)	
		end
	end
end

