-- Gui to Lua

-- Version: CrackedByFerestz


-- Instances:

local closeopen = Instance.new("TextButton")
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local maing = Instance.new("Frame")
local TextLabel1 = Instance.new("TextLabel")
local closeopen2 = Instance.new("TextButton")
--Properties:

Frame2.Name = "Frame2"
Frame2.Parent = main
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BorderColor3 = Color3.fromRGB(250, 0, 0)
Frame2.Position = UDim2.new(0.12, 0, 0, 0)
Frame2.Size = UDim2.new(0, 400, 0, 27)

closeopen.Name = "closeopen"
closeopen.Parent = Frame2
closeopen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeopen.Position = UDim2.new(0.8675, 0, 0.03, 0)
closeopen.Size = UDim2.new(0, 25, 0, 25)
closeopen.Font = Enum.Font.GothamBlack
closeopen.Text = "-"
closeopen.TextColor3 = Color3.fromRGB(217, 28, 235)
closeopen.TextSize = 23.000
closeopen.BorderColor3 = Color3.fromRGB(217, 28, 235)
closeopen.MouseButton1Click:Connect(function()
	if 	Frame.Visible == false then 
		Frame.Visible = true
	elseif Frame.Visible == true then
		Frame.Visible = false
	end	
end)


closeopen2.Name = "closeopen"
closeopen2.Parent = Frame2
closeopen2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeopen2.Position = UDim2.new(0.937, 0, 0.04, 0)
closeopen2.Size = UDim2.new(0, 25, 0, 25)
closeopen2.Font = Enum.Font.GothamBlack
closeopen2.Text = "x"
closeopen2.TextColor3 = Color3.fromRGB(217, 28, 235)
closeopen2.TextSize = 23.000
closeopen2.BorderColor3 = Color3.fromRGB(217, 28, 235)
closeopen2.MouseButton1Click:Connect(function()
	if 	Frame2.Visible == false then 
		Frame2.Visible = true
	elseif Frame2.Visible == true then
		Frame2.Visible = false
	end	
end)



main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Name = "Frame"
Frame.Parent = Frame2
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0, 0, 1.1, 0)
Frame.Size = UDim2.new(0, 400, 0, 57)

maing.Name = "maing"
maing.Parent = Frame
Frame.BackgroundColor3 = Color3.fromRGB(13, 1, 1)
Frame.BorderColor3 = Color3.fromRGB(212, 30, 30)
Frame.Size = UDim2.new(0, 400, 0, 80)


up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
up.Size = UDim2.new(0, 88, 0, 28)
up.Font = Enum.Font.GothamBlack
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(217, 28, 235)
up.TextSize = 14.000
up.Position = UDim2.new(0.02, 0, 0.10, 0)
up.BorderColor3 = Color3.fromRGB(217, 28, 235)

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
down.Position = UDim2.new(0.02, 0, 0.55, 0)
down.Size = UDim2.new(0, 88, 0, 28)
down.Font = Enum.Font.GothamBlack
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(217, 28, 235)
down.TextSize = 14.000
down.BorderColor3 = Color3.fromRGB(217, 28, 235)

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
onof.Position = UDim2.new(0.76, 0, 0.55, 0)
onof.Size = UDim2.new(0, 88, 0, 28)
onof.Font = Enum.Font.GothamBlack
onof.Text = "fly/unfly"
onof.TextColor3 = Color3.fromRGB(217, 28, 235)
onof.TextSize = 14.000
onof.BorderColor3 = Color3.fromRGB(217, 28, 235)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0.53, 0, 0.10, 0)
TextLabel.Size = UDim2.new(0, 180, 0, 28)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "FerestZ W?"
TextLabel.TextColor3 = Color3.fromRGB(217, 28, 235)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.BorderColor3 = Color3.fromRGB(217, 28, 235)

TextLabel1.Parent = Frame2
TextLabel1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.Position = UDim2.new(0.275, 0, 0.1, 0)
TextLabel1.Size = UDim2.new(0, 180, 0, 20)
TextLabel1.Font = Enum.Font.GothamBlack
TextLabel1.Text = "FerestZ Fly GUI"
TextLabel1.TextColor3 = Color3.fromRGB(217, 28, 235)
TextLabel1.TextScaled = true
TextLabel1.TextSize = 14.000
TextLabel1.TextWrapped = true
TextLabel1.BorderColor3 = Color3.fromRGB(13, 1, 1)

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
plus.Position = UDim2.new(0.275, 0, 0.10, 0)
plus.Size = UDim2.new(0, 88, 0, 28)
plus.Font = Enum.Font.GothamBlack
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(217, 28, 235)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true
plus.BorderColor3 = Color3.fromRGB(217, 28, 235)

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
speed.Position = UDim2.new(0.53, 0, 0.55, 0)
speed.Size = UDim2.new(0, 88, 0, 28)
speed.Font = Enum.Font.GothamBlack
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(217, 28, 235)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
speed.BorderColor3 = Color3.fromRGB(217, 28, 235)

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mine.Position = UDim2.new(0.275, 0, 0.55, 0)
mine.Size = UDim2.new(0, 88, 0, 28)
mine.Font = Enum.Font.GothamBlack
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(217, 28, 235)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true
mine.BorderColor3 = Color3.fromRGB(217, 28, 235)

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false



Frame2.Active = true -- main = gui
Frame2.Draggable = true


onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)


up.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	
end)


down.MouseButton1Down:connect(function()

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)

end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then
		

	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'can not be less than 1'
		wait(1)
		speed.Text = speeds
	else
	speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
		end
end)
