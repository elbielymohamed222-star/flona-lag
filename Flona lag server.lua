xpcall(function()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title="رابط سيرفري دس / اختصاره ",
Text="https://discord.gg/fln",
Duration=15
})
end,function()end)

for _,v in game:GetService("Players"):GetPlayers()do
if v~=game:GetService("Players").LocalPlayer then
v.CharacterAdded:Connect(function(c)
h=c:WaitForChild("Humanoid",5)
if h then
a=h:WaitForChild("Animator",5)
if a then
a.AnimationPlayed:Connect(function(t)
t:AdjustSpeed(-math.huge)
t:Stop()
end)
end
end
end)
if v.Character then
h=v.Character:FindFirstChildOfClass("Humanoid")
if h then
a=h:FindFirstChildOfClass("Animator")
if a then
a.AnimationPlayed:Connect(function(t)
t:AdjustSpeed(-math.huge)
t:Stop()
end)
end
end
end
end
end

game:GetService("Players").PlayerAdded:Connect(function(v)
v.CharacterAdded:Connect(function(c)
h=c:WaitForChild("Humanoid",5)
if h then
a=h:WaitForChild("Animator",5)
if a then
a.AnimationPlayed:Connect(function(t)
t:AdjustSpeed(-math.huge)
t:Stop()
end)
end
end
end)
end)

b=Instance.new("BindableFunction")
b.OnInvoke=function()
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end

xpcall(function()
game:GetService("StarterGui"):SetCore("SendNotification",{
Title="من صنع N99",
Text="تبي توقف؟ -اطلع من السيرفر وارجع",
Duration=999,
Button1="اطلع وارجع",
Callback=b
})
end,function()end)

task.spawn(function()
while task.wait()do
xpcall(function()
c=game:GetService("Players").LocalPlayer.Character
if c and c:FindFirstChild("Humanoid")and c.Humanoid:FindFirstChild("Animator")then
for i=99,99000 do
a=Instance.new("Animation")
a.AnimationId=`http{game:GetService("HttpService"):GenerateGUID()}=108713182294229`
t=c.Humanoid.Animator:LoadAnimation(a)
t:Play(21474836471234)
game:GetService("RunService").PreRender:Wait()
t:AdjustSpeed(-math.huge)
end
end	
end,function()end)
end
end)