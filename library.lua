local library = {}
local ta = 0
local bta = 0

function library:Init(id, thx)
    local uis = game:GetService("UserInputService")
    local rs = game:GetService("RunService")
    local ts = game:GetService("TweenService")
    local dragging
    local dragInput
    local dragStart
    local startPos
    local lastMousePos
    local lastGoalPos
    local DRAG_SPEED = (15)

    function Lerp(a, b, m)
        return a + (b - a) * m
    end;

    local Design = Instance.new("ScreenGui")
    local WelcomeOF = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local WelcomeIF = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Thanks = Instance.new("TextLabel")
    local Start = Instance.new("TextLabel")
    local IconFrame = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local UICorner_4 = Instance.new("UICorner")
    local OuterFrame = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local InnerFrame = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local OuterTabFrame = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local ScrollingFrame_2 = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local ImageLabel = Instance.new("ImageLabel")

    Design.Name = "Design"
    Design.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Design.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    WelcomeOF.Name = "WelcomeOF"
    WelcomeOF.Parent = Design
    WelcomeOF.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
    WelcomeOF.Position = UDim2.new(0.325309992, 0, 0.386196762, 0)
    WelcomeOF.Size = UDim2.new(0, 441, 0, 170)
    WelcomeOF.Visible = false

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = WelcomeOF

    WelcomeIF.Name = "WelcomeIF"
    WelcomeIF.Parent = WelcomeOF
    WelcomeIF.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    WelcomeIF.Position = UDim2.new(0.0202101059, 0, 0.0391379297, 0)
    WelcomeIF.Size = UDim2.new(0, 422, 0, 155)

    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = WelcomeIF

    Thanks.Name = "Thanks"
    Thanks.Parent = WelcomeIF
    Thanks.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Thanks.BackgroundTransparency = 1.000
    Thanks.Size = UDim2.new(0, 422, 0, 113)
    Thanks.Font = Enum.Font.SourceSansBold
    Thanks.Text = "Thanks for using LSH "
    Thanks.TextColor3 = Color3.fromRGB(255, 255, 255)
    Thanks.TextSize = 50.000
    Thanks.TextStrokeTransparency = 0.000
    Thanks.TextWrapped = true

    Start.Name = "Start"
    Start.Parent = WelcomeIF
    Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Start.BackgroundTransparency = 1.000
    Start.Position = UDim2.new(0, 0, 0.322580636, 0)
    Start.Size = UDim2.new(0, 422, 0, 113)
    Start.Font = Enum.Font.SourceSansBold
    Start.Text = "Script will start in (3)"
    Start.TextColor3 = Color3.fromRGB(255, 255, 255)
    Start.TextSize = 25.000
    Start.TextStrokeTransparency = 0.000
    Start.TextWrapped = true

    IconFrame.Name = "IconFrame"
    IconFrame.Parent = Design
    IconFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
    IconFrame.Position = UDim2.new(0.448577672, 0, 0.437591791, 0)
    IconFrame.Size = UDim2.new(0, 100, 0, 100)
    IconFrame.Visible = false

    UICorner_3.CornerRadius = UDim.new(0, 10)
    UICorner_3.Parent = IconFrame

    ImageLabel.Parent = IconFrame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 0.500
    ImageLabel.Size = UDim2.new(0, 100, 0, 100)
    if id == "" then
        ImageLabel.Image = "http://www.roblox.com/asset/?id=10188534088"
    else
        ImageLabel.Image ="http://www.roblox.com/asset/?id=".. id
    end

    UICorner_4.CornerRadius = UDim.new(0, 10)
    UICorner_4.Parent = ImageLabel

    OuterFrame.Name = "OuterFrame"
    OuterFrame.Parent = Design
    OuterFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
    OuterFrame.Position = UDim2.new(0.00666666683, 0, 0.0161527172, 0)
    OuterFrame.Size = UDim2.new(0, 432, 0, 237)
    OuterFrame.Visible = false

    UICorner_5.CornerRadius = UDim.new(0, 10)
    UICorner_5.Parent = OuterFrame

    InnerFrame.Name = "InnerFrame"
    InnerFrame.Parent = OuterFrame
    InnerFrame.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
    InnerFrame.Position = UDim2.new(0.020555567, 0, 0.0414692052, 0)
    InnerFrame.Size = UDim2.new(0, 413, 0, 217)

    UICorner_6.CornerRadius = UDim.new(0, 10)
    UICorner_6.Parent = InnerFrame

    OuterTabFrame.Name = "OuterTabFrame"
    OuterTabFrame.Parent = InnerFrame
    OuterTabFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
    OuterTabFrame.BorderSizePixel = 0
    OuterTabFrame.Position = UDim2.new(-0.0234732628, 0, -0.0467246175, 0)
    OuterTabFrame.Size = UDim2.new(0, 98, 0, 237)

    UICorner_7.CornerRadius = UDim.new(0, 10)
    UICorner_7.Parent = OuterTabFrame

    ScrollingFrame.Parent = OuterTabFrame
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.BackgroundTransparency = 1.000
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0, 0, 0.00131238461, 0)
    ScrollingFrame.Size = UDim2.new(0, 100, 0, 236)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1.04999995, 0)
    ScrollingFrame.ScrollBarThickness = 4
    ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

    UIListLayout.Parent = ScrollingFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout.Padding = UDim.new(0, 10)

    ScrollingFrame_2.Parent = InnerFrame
    ScrollingFrame_2.Active = true
    ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame_2.BackgroundTransparency = 1.000
    ScrollingFrame_2.Position = UDim2.new(0.213814914, 0, 0.0276497696, 0)
    ScrollingFrame_2.Size = UDim2.new(0, 324, 0, 211)
    ScrollingFrame_2.Visible = true
    ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 1, 0)
    ScrollingFrame_2.ScrollBarThickness = 0

    UIListLayout_2.Parent = ScrollingFrame_2
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 10)

    function Update(dt)
        if not (startPos) then return end
        if not (dragging) and (lastGoalPos) then
            OuterFrame.Position = UDim2.new(startPos.X.Scale, Lerp(OuterFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(OuterFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
            return 
        end
    
        local delta = (lastMousePos - uis:GetMouseLocation())
        local xGoal = (startPos.X.Offset - delta.X)
        local yGoal = (startPos.Y.Offset - delta.Y)
        lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
        OuterFrame.Position = UDim2.new(startPos.X.Scale, Lerp(OuterFrame.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(OuterFrame.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
    end
    if not thx then
        IconFrame.Visible = true
        function sizescale(gui, goal, ttc)
            wait(ttc)
            gui:TweenSize(
                goal,
                Enum.EasingDirection.In,
                Enum.EasingStyle.Linear,
                1.5,
                true
            )
        end
        
        IconFrame:TweenPosition(
            OuterFrame.Position,
            Enum.EasingDirection.In,
            Enum.EasingStyle.Linear,
            1.5,
            true
        )
        
        sizescale(ImageLabel, OuterFrame.Size, 1.5)
        wait(2)
        OuterFrame.Visible = true
        IconFrame.Visible = false
    else
        WelcomeOF.Visible = true
        local i = 3
        while i > 0 do
            wait(1)
            i = i - 1
            Start.Text = "Script will start in".. "(".. i.. ")"
        end
        WelcomeOF.Visible = false
        IconFrame.Visible = true
        function sizescale(gui, goal, ttc)
            wait(ttc)
            gui:TweenSize(
                goal,
                Enum.EasingDirection.In,
                Enum.EasingStyle.Linear,
                1.5,
                true
            )
        end
        
        IconFrame:TweenPosition(
            OuterFrame.Position,
            Enum.EasingDirection.In,
            Enum.EasingStyle.Linear,
            1.5,
            true
        )
        
        sizescale(ImageLabel, OuterFrame.Size, 1.5)
        wait(2)
        OuterFrame.Visible = true
        IconFrame.Visible = false
    end
    OuterFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = OuterFrame.Position
            lastMousePos = uis:GetMouseLocation()
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    OuterFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    rs.Heartbeat:Connect(Update)

    local library2 = {}

    function library2:newTab(nme)
        local Tab = Instance.new("TextButton")
        local uic = Instance.new("UICorner")
        local Fol = Instance.new("Folder")
        local ull = Instance.new("UIListLayout")

        Tab.Name = nme.. "Tab"
        Tab.Parent = ScrollingFrame
        Tab.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
        Tab.Position = UDim2.new(0.0900000036, 0, 0.0349756479, 0)
        Tab.Size = UDim2.new(0, 83, 0, 50)
        Tab.Font = Enum.Font.SourceSans
        Tab.Text = nme
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.TextScaled = true
        Tab.TextWrapped = true

        uic.CornerRadius = UDim.new(0, 10)
        uic.Parent = Tab
        
        ta = ta + 1
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0.262 * ta, 0)

        Fol.Parent = ScrollingFrame_2
        Fol.Name = nme
        
        ull.Parent = Fol
        ull.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ull.SortOrder = Enum.SortOrder.LayoutOrder
        ull.Padding = UDim.new(0, 10)

        Tab.MouseButton1Click:Connect(function()
            for _, v in pairs(ScrollingFrame_2:GetChildren()) do
                for _, v2 in pairs(v:GetChildren()) do
                    if not v2:IsA("UIListLayout") then
                        v2.Visible = false
                    end
                end
            end
            for _, v in pairs(ScrollingFrame_2:FindFirstChild(nme):GetChildren()) do
                if not v:IsA("UIListLayout") then
                    v.Visible = true
                end
            end
        end)
    end
    
    function library2:newButton(nme, tb, callback)
        local callback = callback or function() end
        local ButtonText = Instance.new("TextButton")
        local uic = Instance.new("UICorner")
    
        ButtonText.Name = nme.. "Button"
        ButtonText.Parent = ScrollingFrame_2:FindFirstChild(tb)
        ButtonText.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        ButtonText.BorderSizePixel = 0
        ButtonText.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
        ButtonText.Size = UDim2.new(0, 312, 0, 44)
        ButtonText.Font = Enum.Font.SourceSansSemibold
        ButtonText.Text = nme
        ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonText.TextSize = 25.000
    
        uic.CornerRadius = UDim.new(0, 10)
        uic.Parent = ButtonText
        
        ta = ta + 1
        ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0.142 * ta, 0)
    
        ButtonText.MouseButton1Click:Connect(function()
            pcall(callback)
        end)
    end

    function library2:newToggle(nme, tb, callback)
        local enabled = false
        local callback = callback or function() end
        local ButtonText = Instance.new("TextButton")
        local ImageButton = Instance.new("ImageButton")
        local uic = Instance.new("UICorner")
    
        ButtonText.Name = nme.. "Button"
        ButtonText.Parent = ScrollingFrame_2:FindFirstChild(tb)
        ButtonText.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        ButtonText.BorderSizePixel = 0
        ButtonText.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
        ButtonText.Size = UDim2.new(0, 312, 0, 44)
        ButtonText.Font = Enum.Font.SourceSansSemibold
        ButtonText.Text = nme
        ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonText.TextSize = 25.000

        ImageButton.Parent = ButtonText
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
        ImageButton.Size = UDim2.new(0, 36, 0, 33)
        ImageButton.Image = "http://www.roblox.com/asset/?id=257125767"
    
        uic.CornerRadius = UDim.new(0, 10)
        uic.Parent = ButtonText
        
        ta = ta + 1
        ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0.142 * ta, 0)
    
        ButtonText.MouseButton1Click:Connect(function()
            enabled = not enabled
            pcall(callback, enabled)
        end)
    end
    return library2
end
return library
