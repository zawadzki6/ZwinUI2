
-- Attribution: credit must be given to the creators
-- Non Commercial: You are not allowed to sell this material
-- Adaptations: You must license the modified material under the same terms


local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local UserInputService = game:GetService("UserInputService")
local LogService = game:GetService("LogService")
local mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local name = game.Players.LocalPlayer.DisplayName
local filteringenabled = game.Workspace.FilteringEnabled
local stats = game:GetService("Stats")


local screenGui = Instance.new("ScreenGui")
local closeButton = Instance.new("TextButton")
local topBar = Instance.new("Frame")
local main = Instance.new("Frame")
local minimize = Instance.new("TextButton")
local bar = Instance.new("TextLabel")

local executorTab = Instance.new("TextButton")
local outputTab = Instance.new("TextButton")
local universalTab = Instance.new("TextButton")
local miscelaneousTab = Instance.new("TextButton")
local scriptsTab = Instance.new("TextButton")
local welcomeTab = Instance.new("TextButton")


local executorFrame = Instance.new("Frame")
local outputFrame = Instance.new("Frame")
local universalFrame = Instance.new("Frame")
local scriptsFrame = Instance.new("Frame")
local miscelaneousFrame = Instance.new("Frame")
local welcomeFrame = Instance.new("Frame")

local welcomeText = Instance.new("TextLabel")
local executorTextBox = Instance.new("TextBox")
local executeButton = Instance.new("TextButton")
local clearButton = Instance.new("TextButton")
local outputLabel = Instance.new("TextLabel")

local universal1 = Instance.new("TextButton")
local universal2 = Instance.new("TextButton")
local universal3 = Instance.new("TextButton")
local universal4 = Instance.new("TextButton")
local universal5 = Instance.new("TextButton")
local universal6 = Instance.new("TextButton")

local script1 = Instance.new("TextButton")
local script2 = Instance.new("TextButton")
local script3 = Instance.new("TextButton")
local script4 = Instance.new("TextButton")
local script5 = Instance.new("TextButton")
local script6 = Instance.new("TextButton")
local script7 = Instance.new("TextButton")
local script8 = Instance.new("TextButton")
local script9 = Instance.new("TextButton")

local misc1 = Instance.new("TextLabel")
local misc2 = Instance.new("TextLabel")
local misc3 = Instance.new("TextLabel")
local misc4 = Instance.new("TextLabel")
local misc5 = Instance.new("TextLabel")
local misc6 = Instance.new("TextLabel")

local misc7 = Instance.new("TextBox")
local misc8 = Instance.new("TextBox")

screenGui.Parent = PlayerGui
screenGui.ResetOnSpawn = false


topBar.Name = "topBar"
topBar.Size = UDim2.new(0.35, 0, 0.03, 0)
topBar.Position = UDim2.new(0.35, 0, 0.35, 0)
topBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topBar.Transparency = 0.3
topBar.BorderSizePixel = 0
topBar.Parent = screenGui
topBar.Active = true
topBar.Draggable = true


UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.Insert then
        topBar.Visible = not topBar.Visible
    end
end)


main.Name = "Main Frame"
main.Size = UDim2.new(1, 0, 10, 0)
main.Position = UDim2.new(0, 0.99, 1, 0)
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Transparency = 0.7
main.BorderSizePixel = 0
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Parent = topBar

closeButton.Name = "Close Button"
closeButton.Size = UDim2.new(0.04, 0, 1, 0)
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "X"
closeButton.BorderSizePixel = 0
closeButton.BackgroundTransparency = 1
closeButton.Parent = topBar

minimize.Name = "Minimize Button"
minimize.Size = UDim2.new(0.04, 0, 1, 0)
minimize.Position = UDim2.new(1, -40, 0, 0)
minimize.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.Text = "/"
minimize.BorderSizePixel = 0
minimize.BackgroundTransparency = 1
minimize.Parent = topBar

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

minimize.MouseButton1Click:Connect(function()
    if main.Visible == true then
        bar.Position = UDim2.new(0, 0, 1, 0)
        main.Visible = not main.Visible
    else
        bar.Position = UDim2.new(0, 0, 11, 0)
        main.Visible = not main.Visible
    end
end)


bar.Name = "Bottom Bar"
bar.Size = UDim2.new(1, 0, 1, 0)
bar.Position = UDim2.new(0, 0, 11, 0)
bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bar.Transparency = 0.3
bar.BorderSizePixel = 0
bar.Parent = topBar
bar.Text = ">> "
bar.TextColor3 = Color3.fromRGB(255, 255, 255)
bar.TextTransparency = 0
bar.TextXAlignment = Enum.TextXAlignment.Left

executorTab.Name = "Executor tab button"
executorTab.Size = UDim2.new(0.2, 0, 0.1, 0)
executorTab.Position = UDim2.new(0.02, 0, 0.045, 0)
executorTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
executorTab.Transparency = 0.6
executorTab.TextTransparency = 0
executorTab.BorderSizePixel = 0
executorTab.Text = "Executor"
executorTab.TextColor3 = Color3.fromRGB(255, 255, 255)
executorTab.Parent = main

outputTab.Name = "Console output tab button"
outputTab.Size = UDim2.new(0.2, 0, 0.1, 0)
outputTab.Position = UDim2.new(0.02, 0, 0.160, 0)
outputTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
outputTab.Transparency = 0.6
outputTab.TextTransparency = 0
outputTab.BorderSizePixel = 0
outputTab.Text = "Output"
outputTab.TextColor3 = Color3.fromRGB(255, 255, 255)
outputTab.Parent = main

universalTab.Name = "Universal scripts tab button"
universalTab.Size = UDim2.new(0.2, 0, 0.1, 0)
universalTab.Position = UDim2.new(0.02, 0, 0.365, 0)
universalTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universalTab.Transparency = 0.6
universalTab.TextTransparency = 0
universalTab.BorderSizePixel = 0
universalTab.Text = "Main"
universalTab.TextColor3 = Color3.fromRGB(255, 255, 255)
universalTab.Parent = main

scriptsTab.Name = "Scripts tab button"
scriptsTab.Size = UDim2.new(0.2, 0, 0.1, 0)
scriptsTab.Position = UDim2.new(0.02, 0, 0.470, 0)
scriptsTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
scriptsTab.Transparency = 0.6
scriptsTab.TextTransparency = 0
scriptsTab.BorderSizePixel = 0
scriptsTab.Text = "Scripts"
scriptsTab.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptsTab.Parent = main

miscelaneousTab.Name = "Miscelaneous tab button"
miscelaneousTab.Size = UDim2.new(0.2, 0, 0.1, 0)
miscelaneousTab.Position = UDim2.new(0.02, 0, 0.575, 0)
miscelaneousTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
miscelaneousTab.Transparency = 0.6
miscelaneousTab.TextTransparency = 0
miscelaneousTab.BorderSizePixel = 0
miscelaneousTab.Text = "Miscelaneous"
miscelaneousTab.TextColor3 = Color3.fromRGB(255, 255, 255)
miscelaneousTab.Parent = main

welcomeTab.Name = "Welcome tab button"
welcomeTab.Size = UDim2.new(0.2, 0, 0.1, 0)
welcomeTab.Position = UDim2.new(0.02, 0, 0.845, 0)
welcomeTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
welcomeTab.Transparency = 0.6
welcomeTab.TextTransparency = 0
welcomeTab.BorderSizePixel = 0
welcomeTab.Text = "Welcome"
welcomeTab.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeTab.Parent = main

executorFrame.Name = "Executor tab frame"
executorFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
executorFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
executorFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
executorFrame.Transparency = 0.5
executorFrame.BorderSizePixel = 0
executorFrame.Parent = main

outputFrame.Name = "Output tab frame"
outputFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
outputFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
outputFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
outputFrame.Transparency = 0.5
outputFrame.BorderSizePixel = 0
outputFrame.Parent = main

universalFrame.Name = "Universal tab frame"
universalFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
universalFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
universalFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universalFrame.Transparency = 0.5
universalFrame.BorderSizePixel = 0
universalFrame.Parent = main

scriptsFrame.Name = "script tab frame"
scriptsFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
scriptsFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
scriptsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
scriptsFrame.Transparency = 0.5
scriptsFrame.BorderSizePixel = 0
scriptsFrame.Parent = main

miscelaneousFrame.Name = "Miscelaneous tab frame"
miscelaneousFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
miscelaneousFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
miscelaneousFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
miscelaneousFrame.Transparency = 0.5
miscelaneousFrame.BorderSizePixel = 0
miscelaneousFrame.Parent = main

welcomeFrame.Name = "Welcome tab frame"
welcomeFrame.Size = UDim2.new(0.75, 0, 0.9, 0)
welcomeFrame.Position = UDim2.new(0.235, 0, 0.045, 0)
welcomeFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
welcomeFrame.Transparency = 0.5
welcomeFrame.BorderSizePixel = 0
welcomeFrame.Parent = main


function hideFrames()
    welcomeFrame.Visible = false
    executorFrame.Visible = false
    outputFrame.Visible = false
    universalFrame.Visible = false
    scriptsFrame.Visible = false
    miscelaneousFrame.Visible = false
end

hideFrames()
welcomeFrame.Visible = true

welcomeTab.MouseButton1Click:Connect(function()
    hideFrames()
    welcomeFrame.Visible = true
end)

executorTab.MouseButton1Click:Connect(function()
    hideFrames()
    executorFrame.Visible = true
end)

outputTab.MouseButton1Click:Connect(function()
    hideFrames()
    outputFrame.Visible = true
end)

universalTab.MouseButton1Click:Connect(function()
    hideFrames()
    universalFrame.Visible = true
end)

scriptsTab.MouseButton1Click:Connect(function()
    hideFrames()
    scriptsFrame.Visible = true
end)

miscelaneousTab.MouseButton1Click:Connect(function()
    hideFrames()
    miscelaneousFrame.Visible = true
end)


welcomeText.Name = "Welcome text"
welcomeText.Position = UDim2.new(0.0125, 0, 0.025, 0)
welcomeText.Size = UDim2.new(0.975, 0, 0.95, 0)
welcomeText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
welcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeText.Transparency = 0.7
welcomeText.TextTransparency = 0
welcomeText.BorderSizePixel = 0
welcomeText.Parent = welcomeFrame
welcomeText.Text =
[[

Welcome to zwinUI!

made by zwinplayer64/zawadzki

]]

executorTextBox.Name = "Executor textBox"
executorTextBox.Position = UDim2.new(0.0125, 0, 0.025, 0)
executorTextBox.Size = UDim2.new(0.975, 0, 0.8, 0)
executorTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
executorTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
executorTextBox.Transparency = 0.7
executorTextBox.TextTransparency = 0
executorTextBox.BorderSizePixel = 0
executorTextBox.Text = ""
executorTextBox.PlaceholderText = "-- bitdancer gay"
executorTextBox.TextXAlignment = Enum.TextXAlignment.Left
executorTextBox.TextYAlignment = Enum.TextYAlignment.Top
executorTextBox.ClearTextOnFocus = false
executorTextBox.TextWrapped = true
executorTextBox.MultiLine = true
executorTextBox.Parent = executorFrame

executeButton.Name = "Execute button"
executeButton.Size = UDim2.new(0.2, 0, 0.125, 0)
executeButton.Position = UDim2.new(0.7885, 0, 0.85, 0)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
executeButton.Transparency = 0.7
executeButton.TextTransparency = 0
executeButton.BorderSizePixel = 0
executeButton.Text = "Execute"
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.Parent = executorFrame

clearButton.Name = "Clear button"
clearButton.Size = UDim2.new(0.2, 0, 0.125, 0)
clearButton.Position = UDim2.new(0.0125, 0, 0.85, 0)
clearButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
clearButton.Transparency = 0.7
clearButton.TextTransparency = 0
clearButton.BorderSizePixel = 0
clearButton.Text = "Clear"
clearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
clearButton.Parent = executorFrame

executeButton.MouseButton1Click:Connect(function()
    loadstring(executorTextBox.Text)()
end)

clearButton.MouseButton1Click:Connect(function()
    executorTextBox.Text = ""
end)

outputLabel.Name = "ConHost"
outputLabel.Position = UDim2.new(0.0125, 0, 0.025, 0)
outputLabel.Size = UDim2.new(0.975, 0, 0.95, 0)
outputLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
outputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
outputLabel.Transparency = 0.7
outputLabel.TextTransparency = 0
outputLabel.BorderSizePixel = 0
outputLabel.Parent = outputFrame
outputLabel.Text = "Console output will be displayed here...\n"
outputLabel.TextYAlignment = Enum.TextYAlignment.Top
outputLabel.TextXAlignment = Enum.TextXAlignment.Left
outputLabel.TextWrapped = true

local function onMessageOut(message, messageType)
    local currentText = outputLabel.Text
    outputLabel.Text = currentText .. "\n" .. message

    local maxLines = 12
    local lines = string.split(outputLabel.Text, "\n")

    if #lines > maxLines then
        outputLabel.Text = table.concat(lines, "\n", #lines - maxLines + 1, #lines)
    end
end

LogService.MessageOut:Connect(onMessageOut)

universal1.Name = "Universal button 1"
universal1.Size = UDim2.new(0.3, 0, 0.2, 0)
universal1.Position = UDim2.new(0.0125, 0, 0.225, 0)
universal1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal1.TextColor3 = Color3.fromRGB(255, 255, 255)
universal1.BackgroundTransparency = 0.7
universal1.TextTransparency = 0
universal1.BorderSizePixel = 0
universal1.Parent = universalFrame
universal1.Text = "Infinite Yield"

universal2.Name = "Universal button 2"
universal2.Size = UDim2.new(0.3, 0, 0.2, 0)
universal2.Position = UDim2.new(0.35, 0, 0.225, 0)
universal2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal2.TextColor3 = Color3.fromRGB(255, 255, 255)
universal2.BackgroundTransparency = 0.7
universal2.TextTransparency = 0
universal2.BorderSizePixel = 0
universal2.Parent = universalFrame
universal2.Text = "Energize GUI"

universal3.Name = "Universal button 3"
universal3.Size = UDim2.new(0.3, 0, 0.2, 0)
universal3.Position = UDim2.new(0.6885, 0, 0.225, 0)
universal3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal3.TextColor3 = Color3.fromRGB(255, 255, 255)
universal3.BackgroundTransparency = 0.7
universal3.TextTransparency = 0
universal3.BorderSizePixel = 0
universal3.Parent = universalFrame
universal3.Text = "Dex Explorer"

universal4.Name = "Universal button 4"
universal4.Size = UDim2.new(0.3, 0, 0.2, 0)
universal4.Position = UDim2.new(0.0125, 0, 0.525, 0)
universal4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal4.TextColor3 = Color3.fromRGB(255, 255, 255)
universal4.BackgroundTransparency = 0.7
universal4.TextTransparency = 0
universal4.BorderSizePixel = 0
universal4.Parent = universalFrame
universal4.Text = "Annoy GUI v2"

universal5.Name = "Universal button 5"
universal5.Size = UDim2.new(0.3, 0, 0.2, 0)
universal5.Position = UDim2.new(0.35, 0, 0.525, 0)
universal5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal5.TextColor3 = Color3.fromRGB(255, 255, 255)
universal5.BackgroundTransparency = 0.7
universal5.TextTransparency = 0
universal5.BorderSizePixel = 0
universal5.Parent = universalFrame
universal5.Text = "Gravity Gun"

universal6.Name = "Universal button 6"
universal6.Size = UDim2.new(0.3, 0, 0.2, 0)
universal6.Position = UDim2.new(0.6885, 0, 0.525, 0)
universal6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
universal6.TextColor3 = Color3.fromRGB(255, 255, 255)
universal6.BackgroundTransparency = 0.7
universal6.TextTransparency = 0
universal6.BorderSizePixel = 0
universal6.Parent = universalFrame
universal6.Text = "TP Tool"


universal1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

universal2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/IlikeyocutgHAH12/FEEGGEG/main/%5BFE%5D%20Energize%20Animation%20Gui.txt'))()
end)

universal3.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/dex.lua',true))()
end)

universal4.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/48832d6c2c4a445dbfe52f98bbf6080f/files/a3898514d10c4c1d894b19ecd6d2cd33/raw"))()
end)

universal5.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zawadzki6/ZwinUI2/refs/heads/main/scripts/gravity%20gun.lua"))()
end)

universal6.MouseButton1Click:Connect(function()
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)


script1.Name = "script button"
script1.Size = UDim2.new(0.3, 0, 0.2, 0)
script1.Position = UDim2.new()
script1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script1.TextColor3 = Color3.fromRGB(255, 255, 255)
script1.TextTransparency = 0
script1.BackgroundTransparency = 0.7
script1.Parent = scriptsFrame
script1.Text = ""

script2.Name = "script button"
script2.Size = UDim2.new(0.3, 0, 0.2, 0)
script2.Position = UDim2.new()
script2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script2.TextColor3 = Color3.fromRGB(255, 255, 255)
script2.TextTransparency = 0
script2.BackgroundTransparency = 0.7
script2.Parent = scriptsFrame
script2.Text = ""

script3.Name = "script button"
script3.Size = UDim2.new(0.3, 0, 0.2, 0)
script3.Position = UDim2.new()
script3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script3.TextColor3 = Color3.fromRGB(255, 255, 255)
script3.TextTransparency = 0
script3.BackgroundTransparency = 0.7
script3.Parent = scriptsFrame
script3.Text = ""

script4.Name = "script button"
script4.Size = UDim2.new(0.3, 0, 0.2, 0)
script4.Position = UDim2.new()
script4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script4.TextColor3 = Color3.fromRGB(255, 255, 255)
script4.TextTransparency = 0
script4.BackgroundTransparency = 0.7
script4.Parent = scriptsFrame
script4.Text = ""

script5.Name = "script button"
script5.Size = UDim2.new(0.3, 0, 0.2, 0)
script5.Position = UDim2.new()
script5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script5.TextColor3 = Color3.fromRGB(255, 255, 255)
script5.TextTransparency = 0
script5.BackgroundTransparency = 0.7
script5.Parent = scriptsFrame
script5.Text = ""

script6.Name = "script button"
script6.Size = UDim2.new(0.3, 0, 0.2, 0)
script6.Position = UDim2.new()
script6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script6.TextColor3 = Color3.fromRGB(255, 255, 255)
script6.TextTransparency = 0
script6.BackgroundTransparency = 0.7
script6.Parent = scriptsFrame
script6.Text = ""

script7.Name = "script button"
script7.Size = UDim2.new(0.3, 0, 0.2, 0)
script7.Position = UDim2.new()
script7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script7.TextColor3 = Color3.fromRGB(255, 255, 255)
script7.TextTransparency = 0
script7.BackgroundTransparency = 0.7
script7.Parent = scriptsFrame
script7.Text = ""

script8.Name = "script button"
script8.Size = UDim2.new(0.3, 0, 0.2, 0)
script8.Position = UDim2.new()
script8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script8.TextColor3 = Color3.fromRGB(255, 255, 255)
script8.TextTransparency = 0
script8.BackgroundTransparency = 0.7
script8.Parent = scriptsFrame
script8.Text = ""

script9.Name = "script specific button"
script9.Size = UDim2.new(0.3, 0, 0.2, 0)
script9.Position = UDim2.new()
script9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
script9.TextColor3 = Color3.fromRGB(255, 255, 255)
script9.TextTransparency = 0
script9.BackgroundTransparency = 0.7
script9.Parent = scriptsFrame
script9.Text = ""

script1.Position = UDim2.new(0.0125, 0, 0.050, 0)
script2.Position = UDim2.new(0.35, 0, 0.050, 0)
script3.Position = UDim2.new(0.6885, 0, 0.050, 0)

script4.Position = UDim2.new(0.0125, 0, 0.38, 0)
script5.Position = UDim2.new(0.35, 0, 0.38, 0)
script6.Position = UDim2.new(0.6885, 0, 0.38, 0)

script7.Position = UDim2.new(0.0125, 0, 0.750, 0)
script8.Position = UDim2.new(0.35, 0, 0.750, 0)
script9.Position = UDim2.new(0.6885, 0, 0.750, 0)

misc1.Name = "FPS counter"
misc1.Size = UDim2.new(0.3, 0, 0.2, 0)
misc1.Position = UDim2.new()
misc1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc1.TextColor3 = Color3.fromRGB(255, 255, 255)
misc1.TextTransparency = 0
misc1.BackgroundTransparency = 0.7
misc1.Parent = miscelaneousFrame
misc1.Text = ""

misc2.Name = "Server size counter"
misc2.Size = UDim2.new(0.3, 0, 0.2, 0)
misc2.Position = UDim2.new()
misc2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc2.TextColor3 = Color3.fromRGB(255, 255, 255)
misc2.TextTransparency = 0
misc2.BackgroundTransparency = 0.7
misc2.Parent = miscelaneousFrame
misc2.Text = ""

misc3.Name = "Server time counter"
misc3.Size = UDim2.new(0.3, 0, 0.2, 0)
misc3.Position = UDim2.new()
misc3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc3.TextColor3 = Color3.fromRGB(255, 255, 255)
misc3.TextTransparency = 0
misc3.BackgroundTransparency = 0.7
misc3.Parent = miscelaneousFrame
misc3.Text = ""

misc4.Name = "FE status"
misc4.Size = UDim2.new(0.3, 0, 0.2, 0)
misc4.Position = UDim2.new()
misc4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc4.TextColor3 = Color3.fromRGB(255, 255, 255)
misc4.TextTransparency = 0
misc4.BackgroundTransparency = 0.7
misc4.Parent = miscelaneousFrame
misc4.Text = ""

misc5.Name = "Ping"
misc5.Size = UDim2.new(0.3, 0, 0.2, 0)
misc5.Position = UDim2.new()
misc5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc5.TextColor3 = Color3.fromRGB(255, 255, 255)
misc5.TextTransparency = 0
misc5.BackgroundTransparency = 0.7
misc5.Parent = miscelaneousFrame
misc5.Text = ""

misc6.Name = "Memory usage counter"
misc6.Size = UDim2.new(0.3, 0, 0.2, 0)
misc6.Position = UDim2.new()
misc6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc6.TextColor3 = Color3.fromRGB(255, 255, 255)
misc6.TextTransparency = 0
misc6.BackgroundTransparency = 0.7
misc6.Parent = miscelaneousFrame
misc6.Text = ""

misc1.Position = UDim2.new(0.0125, 0, 0.050, 0)
misc2.Position = UDim2.new(0.35, 0, 0.050, 0)
misc3.Position = UDim2.new(0.6885, 0, 0.050, 0)

misc4.Position = UDim2.new(0.0125, 0, 0.38, 0)
misc5.Position = UDim2.new(0.35, 0, 0.38, 0)
misc6.Position = UDim2.new(0.6885, 0, 0.38, 0)

spawn(function()
	while true do
		misc3.Text = "Server Time: " .. tostring(math.floor(game:GetService('Workspace').DistributedGameTime))
		wait(0.5)
	end
end)


spawn(function()
	while true do
		misc2.Text = "Server Size: "..tostring(game:GetService('Players').NumPlayers)
		wait(.5)
	end
end)

spawn(function()
	RunService.RenderStepped:Connect(function(frame)
		misc1.Text = "FPS: "..(math.round(1/frame))
	end)
end)

spawn(function()
	while true do
		local ping = game.Players.LocalPlayer:GetNetworkPing()
		misc5.Text = "Ping: " .. tostring(math.floor(ping * 1000)) .. " ms"
		wait(0.5)
	end
end)

spawn(function()
	while true do
		local memoryUsage = stats:GetTotalMemoryUsageMb()
		misc6.Text = "Mem: " .. tostring(math.floor(memoryUsage)) .. " MB"
		wait(0.5)
	end
end)

misc4.Text = "FE: "..tostring(filteringenabled)

misc1.TextWrapped = true
misc2.TextWrapped = true
misc3.TextWrapped = true
misc4.TextWrapped = true
misc5.TextWrapped = true
misc6.TextWrapped = true


misc7.Name = "Walkspeed textbox"
misc7.Size = UDim2.new(0.3, 0, 0.2, 0)
misc7.Position = UDim2.new(0.15, 0, 0.750, 0)
misc7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc7.TextColor3 = Color3.fromRGB(255, 255, 255)
misc7.TextTransparency = 0
misc7.BackgroundTransparency = 0.7
misc7.Parent = miscelaneousFrame
misc7.Text = ""
misc7.PlaceholderText = "WalkSpeed"

misc8.Name = "jump power textbox"
misc8.Size = UDim2.new(0.3, 0, 0.2, 0)
misc8.Position = UDim2.new(0.55, 0, 0.750, 0)
misc8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc8.TextColor3 = Color3.fromRGB(255, 255, 255)
misc8.TextTransparency = 0
misc8.BackgroundTransparency = 0.7
misc8.Parent = miscelaneousFrame
misc8.Text = ""
misc8.PlaceholderText = "JumpPower"

misc7.FocusLost:Connect(function(enterPressed)
	local value = tonumber(misc7.Text)
	local player = game.Players.LocalPlayer
	if player and player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.WalkSpeed = value or humanoid.WalkSpeed
		end
	end
end)

misc8.FocusLost:Connect(function(enterPressed)
	local value = tonumber(misc8.Text)
	local player = game.Players.LocalPlayer
	if player and player.Character then
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.JumpPower = value or humanoid.JumpPower
		end
	end
end)

script1.Text = "Prison Life"
script1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
end)

script2.Text = "ESP + AimLock"
script2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/x39qc/MyRobloxScripts/main/ESP%2BAimbot'))()
end)

script3.Text = "Domain X"
script3.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/source',true))()
end)

script4.Text = "Lag Switch\n(X toggle)"
script4.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/d3492bd620bd4c46b54680ac80b0fa0d/files/161ddd9c992c4ceba3c298458d45188a/raw"))()
end)

script5.Text = "Annoying Admin\n(say .cmds)"
script5.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheMightySource/FE-Annoying-Admin/main/Main.lua"))()
end)

script6.Text = "Break Joints (reset)"
script6.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

script7.Text = "Black Hole"
script7.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zawadzki6/ZwinUI2/refs/heads/main/scripts/blackhole.lua"))()
end)

script8.Text = "Fly Gui"
script8.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zawadzki6/ZwinUI2/refs/heads/main/scripts/blackhole.lua"))()
end)


game.StarterGui:SetCore("SendNotification", {
    Title = "Executed ZwinUI";
    Text = "To toggle UI press Insert";
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150";
    Duration = 5;
})

bar.Text = ">> ZwinUI2, " ..tostring(name)
-- Made by zwinplayer64/zawadzki