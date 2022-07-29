--You need press F9 to get the code

for _, Part in pairs(workspace.Map.Main:GetChildren()) do
   if Part:IsA("Part") then
      if Part:FindFirstChild("Script") and Part:FindFirstChild("SurfaceGui") then
      print("Code Laboratory:"..Part.SurfaceGui.TextLabel.Text)
      end
   end
end
