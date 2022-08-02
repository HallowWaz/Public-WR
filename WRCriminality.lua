local ScreenGui = Instance.new("ScreenGui",game.CoreGui)
ScreenGui.Name = "WRESP"
local player = game.Players.LocalPlayer
local Update = 1
while wait(Update) do
	for _,Frame in pairs(game.CoreGui.WRESP:GetChildren()) do
		if Frame:IsA("Frame") then
		   for _, gui in pairs(Frame:GetChildren()) do
		      gui.Adornee = nil
		   end
			Frame:Destroy()
		end
	end	
	for _, object in pairs(workspace.Characters:GetChildren()) do
		if  object.Name == player.Name then
		else

			local Frame = Instance.new("Frame",ScreenGui)
			Frame.Name = object.Name
			
			if object:FindFirstChild("Head") then

			local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
			BoxHandleAdornment.Name = "Head"
			BoxHandleAdornment.Adornee = object.Head
			BoxHandleAdornment.AlwaysOnTop = true
			BoxHandleAdornment.ZIndex = 0
			BoxHandleAdornment.Size = Vector3.new(1.1, 1, 1)
			BoxHandleAdornment.Color3 = Color3.fromRGB(221, 25, 255)
			BoxHandleAdornment.Transparency = 0.5		
		end
			if object:FindFirstChild("HumanoidRootPart") then
				local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
				BoxHandleAdornment.Name = "HumanoidRootPart"
				BoxHandleAdornment.Adornee = object.HumanoidRootPart
				BoxHandleAdornment.AlwaysOnTop = true
				BoxHandleAdornment.ZIndex = 0
				BoxHandleAdornment.Size = Vector3.new(2, 2, 1)
				BoxHandleAdornment.Color3 = Color3.fromRGB(255, 0, 4)
				BoxHandleAdornment.Transparency = 0.5		
			end

			
			
			if object:FindFirstChild("Left Arm") then
				local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
				BoxHandleAdornment.Name = "Left Arm"
				BoxHandleAdornment.Adornee = object["Left Arm"]
				BoxHandleAdornment.AlwaysOnTop = true
				BoxHandleAdornment.ZIndex = 0
				BoxHandleAdornment.Size = Vector3.new(1, 2, 1)
				BoxHandleAdornment.Color3 = Color3.fromRGB(33, 255, 218)
				BoxHandleAdornment.Transparency = 0.5	
			end
			
				
			if object:FindFirstChild("Right Arm") then
				local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
				BoxHandleAdornment.Name = "Right Arm"
				BoxHandleAdornment.Adornee = object["Right Arm"]
				BoxHandleAdornment.AlwaysOnTop = true
				BoxHandleAdornment.ZIndex = 0
				BoxHandleAdornment.Size = Vector3.new(1, 2, 1)
				BoxHandleAdornment.Color3 = Color3.fromRGB(33, 255, 218)
				BoxHandleAdornment.Transparency = 0.5	
			end
				
			if object:FindFirstChild("Right Leg") then

			local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
			BoxHandleAdornment.Name = "Right Leg"
			BoxHandleAdornment.Adornee = object["Right Leg"]
			BoxHandleAdornment.AlwaysOnTop = true
			BoxHandleAdornment.ZIndex = 0
			BoxHandleAdornment.Size = Vector3.new(1, 2, 1)
			BoxHandleAdornment.Color3 = Color3.fromRGB(33, 255, 218)
			BoxHandleAdornment.Transparency = 0.5	
			end
			if object:FindFirstChild("Left Leg") then
				local BoxHandleAdornment = Instance.new("BoxHandleAdornment",Frame)
				BoxHandleAdornment.Name = "Left Leg"
				BoxHandleAdornment.Adornee = object["Left Leg"]
				BoxHandleAdornment.AlwaysOnTop = true
				BoxHandleAdornment.ZIndex = 0
				BoxHandleAdornment.Size = Vector3.new(1, 2, 1)
				BoxHandleAdornment.Color3 = Color3.fromRGB(33, 255, 218)
				BoxHandleAdornment.Transparency = 0.5	
			end
				
		end
	end
end
