local function SubZeroScript()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/Natural-Disasters/refs/heads/main/Source.lua", true))()
end

local function createUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.CoreGui
    
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 400, 0, 250)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -125)
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Parent = ScreenGui
    Frame.BackgroundTransparency = 0
    Frame.ClipsDescendants = true
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.Active = true
    Frame.Draggable = true
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = Frame
    
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.BackgroundTransparency = 1
    Title.Text = "么 S U B → Z E R O 么"
    Title.TextColor3 = Color3.fromRGB(255, 0, 0)
    Title.TextSize = 24
    Title.Font = Enum.Font.SourceSansBold
    Title.Parent = Frame
    
    local Message = Instance.new("TextLabel")
    Message.Size = UDim2.new(1, -20, 0, 100)
    Message.Position = UDim2.new(0, 10, 0, 60)
    Message.BackgroundTransparency = 1
    Message.TextWrapped = true
    Message.Text = "Welcome player to SubZero thanks for using our cheat services. To continue press the accept button."
    Message.TextColor3 = Color3.fromRGB(255, 255, 255)
    Message.TextSize = 18
    Message.Font = Enum.Font.SourceSans
    Message.Parent = Frame
    
    local AcceptButton = Instance.new("TextButton")
    AcceptButton.Size = UDim2.new(0, 120, 0, 40)
    AcceptButton.Position = UDim2.new(0.5, -60, 0.75, 0)
    AcceptButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    AcceptButton.Text = "I ACCEPT"
    AcceptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    AcceptButton.TextSize = 20
    AcceptButton.Font = Enum.Font.SourceSansBold
    AcceptButton.Parent = Frame
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 10)
    ButtonCorner.Parent = AcceptButton
    
    local ProgressBar = Instance.new("Frame")
    ProgressBar.Size = UDim2.new(0, 0, 0, 5)
    ProgressBar.Position = UDim2.new(0.5, -100, 0.75, 0)
    ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ProgressBar.BorderSizePixel = 0
    ProgressBar.Parent = Frame
    
    local function showProgressBar()
        ProgressBar.Size = UDim2.new(0, 0, 0, 5)
        ProgressBar.Visible = true
        AcceptButton.Visible = false
        ProgressBar:TweenSize(UDim2.new(0, 200, 0, 5), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 2, true, function()
            wait(2)
            ProgressBar.Visible = false
            AcceptButton.Visible = true
        end)
    end
    
    AcceptButton.MouseButton1Click:Connect(function()
        if not isfolder("SubZero") then
            makefolder("SubZero")
        end
        writefile("SubZero/I accept", "true")
        ScreenGui:Destroy()
        SubZeroScript()
    end)
    
    showProgressBar()
end

if not isfolder("SubZero") then
    makefolder("SubZero")
end

if isfile("SubZero/I accept") then
    local content = readfile("SubZero/I accept")
    if content == "true" then
        SubZeroScript()
    else
        createUI()
    end
else
    writefile("SubZero/I accept", "false")
    createUI()
end
