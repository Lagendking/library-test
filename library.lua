local library = {}
local ta = 0
local bta = 0

function library:Init(id, thx)
    local uis = game:GetService("UserInputService")
    local rs = game:GetService("RunService")
    local ts = game:GetService("TweenService")
    local mouse = game.Players.LocalPlayer:GetMouse()
    local Value;
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
    ScrollingFrame_2.Size = UDim2.new(0, 324, 0, 205)
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
        Tab.Font = Enum.Font.SourceSansSemibold
        Tab.Text = nme
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.TextSize = 20
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
        
        ScrollingFrame_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
    
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
        
        ScrollingFrame_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
    
        ButtonText.MouseButton1Click:Connect(function()
            enabled = not enabled
            if enabled then
                ImageButton.Image = "http://www.roblox.com/asset/?id=257125764"
            else
                ImageButton.Image = "http://www.roblox.com/asset/?id=257125767"
            end
            pcall(callback, enabled)
        end)
    end

    function library2:newDrop(nme, tb, ops, callback)
        local oa = 0
        local callback = callback or function() end
        local DDFrame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local ScrollingFrame_3 = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local DropText = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local ImageButtond = Instance.new("ImageButton")
        local choice = ""
    
        DDFrame.Name = "DDFrame"
        DDFrame.Parent = OuterFrame
        DDFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        DDFrame.Position = UDim2.new(1.01923072, 0, 0, 0)
        DDFrame.Size = UDim2.new(0, 138, 0, 235)
        DDFrame.Visible = false
        
        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = DDFrame
        
        ScrollingFrame_3.Parent = DDFrame
        ScrollingFrame_3.Active = true
        ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame_3.BackgroundTransparency = 1.000
        ScrollingFrame_3.Size = UDim2.new(0, 138, 0, 235)
        ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 0.25, 0)
        ScrollingFrame_3.ScrollBarThickness = 3
        
        UIListLayout.Parent = ScrollingFrame_3
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
        UIListLayout.Padding = UDim.new(0, 10)
        
        DropText.Name = nme.. "Drop"
        DropText.Parent = ScrollingFrame_2:FindFirstChild(tb)
        DropText.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        DropText.BorderSizePixel = 0
        DropText.Position = UDim2.new(0, 6, 0, 5)
        DropText.Size = UDim2.new(0, 312, 0, 44)
        DropText.Font = Enum.Font.SourceSansSemibold
        DropText.Text = nme
        DropText.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropText.TextSize = 25.000
        
        UICorner_3.CornerRadius = UDim.new(0, 10)
        UICorner_3.Parent = DropText
        
        ImageButtond.Parent = DropText
        ImageButtond.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButtond.BackgroundTransparency = 1.000
        ImageButtond.Position = UDim2.new(0.0192307718, 0, 0.11363636, 0)
        ImageButtond.Size = UDim2.new(0, 36, 0, 33)
        ImageButtond.Image = "http://www.roblox.com/asset/?id=4430338795"
        
        for _, v in pairs(ops) do
            oa = oa + 1
            ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 0.25 * oa, 0)
            local TextButton = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            TextButton.Parent = ScrollingFrame_3
            TextButton.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
            TextButton.Position = UDim2.new(0.0760869533, 0, 0.404255331, 0)
            TextButton.Size = UDim2.new(0, 118, 0, 45)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = v
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 20.000
            TextButton.TextWrapped = true
            
            UICorner_2.CornerRadius = UDim.new(0, 10)
            UICorner_2.Parent = TextButton

            TextButton.MouseButton1Click:Connect(function()
                choice = TextButton.Text
                DDFrame.Visible = false
                DropText.Text = tostring(choice)
                pcall(callback, choice)
            end)
        end
        DropText.MouseButton1Click:Connect(function()
            if DDFrame.Visible then
                DDFrame.Visible = false
                ImageButtond.Rotation = 0
            else
                DDFrame.Visible = true
                ImageButtond.Rotation = 180
            end
        end)
    end

    function library2:newBind(nme, tb, key, callback)
        local BindText = Instance.new("TextLabel")
        local UICorner = Instance.new("UICorner")
        local aimText = Instance.new("TextBox")
        local UICorner_2 = Instance.new("UICorner")

        BindText.Name = nme.. "Bind"
        BindText.Parent = ScrollingFrame_2:FindFirstChild(tb)
        BindText.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        BindText.BorderSizePixel = 0
        BindText.Position = UDim2.new(0.0215384606, 0, 0.0276497696, 0)
        BindText.Size = UDim2.new(0, 312, 0, 44)
        BindText.Font = Enum.Font.SourceSansSemibold
        BindText.Text = nme
        BindText.TextColor3 = Color3.fromRGB(255, 255, 255)
        BindText.TextSize = 25.000

        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = BindText

        aimText.Name = nme.. "Key"
        aimText.Parent = BindText
        aimText.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
        aimText.BorderSizePixel = 0
        aimText.Position = UDim2.new(0.865384638, 0, 0.159090891, 0)
        aimText.Size = UDim2.new(0, 30, 0, 30)
        aimText.Font = Enum.Font.SourceSansBold
        aimText.Text = key
        aimText.TextColor3 = Color3.fromRGB(255, 255, 255)
        aimText.TextSize = 25.000

        UICorner_2.CornerRadius = UDim.new(0, 10)
        UICorner_2.Parent = aimText

        uis.InputBegan:Connect(function(input)
            if input.KeyCode == key then
                pcall(callback)
            end
        end)
    end
    
    function library2:newSlide(nme, tb, mi, ma, callback)
        local sliding = false
        local TextLabel = Instance.new("TextLabel")
        local Bar = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local Mark = Instance.new("Frame")
        local Amount = Instance.new("TextLabel")
        
        TextLabel.Parent = ScrollingFrame_2:FindFirstChild(tb)
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0, 0, 0, 0)
        TextLabel.Size = UDim2.new(0, 309, 0, 35)
        TextLabel.Font = Enum.Font.SourceSansSemibold
        TextLabel.Text = nme
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 25.000
        TextLabel.TextWrapped = true
        
        Bar.Name = nme.. "Bar"
        Bar.Parent = TextLabel.Parent
        Bar.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        Bar.Position = TextLabel.Position + UDim2.new(0, 0, 0, 45)
        Bar.Size = UDim2.new(0, 311, 0, 16)
        Bar.Text = ""
        
        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = Bar
        
        Mark.Name = "Mark"
        Mark.Parent = Bar
        Mark.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
        Mark.Position = UDim2.new(0, 0, 0, 0)
        Mark.Size = UDim2.new(0, 6, 0, 15)
        Mark.BorderSizePixel = 1
        
        
        Amount.Name = "Amount"
        Amount.Parent = Bar
        Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Amount.BackgroundTransparency = 1.000
        Amount.Position = UDim2.new(0.893890679, 0, -0.7, 0)
        Amount.Size = UDim2.new(0, 41, 0, 40)
        Amount.Font = Enum.Font.SourceSansSemibold
        Amount.Text = "0"
        Amount.TextColor3 = Color3.fromRGB(255, 255, 255)
        Amount.TextSize = 14.000
        
        ScrollingFrame_2.CanvasSize = ScrollingFrame_2.CanvasSize - UDim2.new(0, 0, 1, 0)
        
        Bar.MouseButton1Down:Connect(function()
            Value = math.floor((((tonumber(ma) - tonumber(mi)) / 311) * Mark.AbsoluteSize.X) + tonumber(mi)) or 0
            pcall(function()
                callback(Value)
            end)
            Mark.Size = UDim2.new(0, math.clamp(mouse.X - Mark.AbsolutePosition.X, 0, 311), 0, 16)
            moveconnection = mouse.Move:Connect(function()
                Amount.Text = Value
                Value = math.floor((((tonumber(ma) - tonumber(mi)) / 311) * Mark.AbsoluteSize.X) + tonumber(mi))
                pcall(function()
                    callback(Value)
                end)
                Mark.Size = UDim2.new(0, math.clamp(mouse.X - Mark.AbsolutePosition.X, 0, 311), 0, 16)
            end)
            releaseconnection = uis.InputEnded:Connect(function(Mouse)
                if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                    Value = math.floor((((tonumber(ma) - tonumber(mi)) / 311) * Mark.AbsoluteSize.X) + tonumber(mi))
                    pcall(function()
                        callback(Value)
                    end)
                    Mark.Size = UDim2.new(0, math.clamp(mouse.X - Mark.AbsolutePosition.X, 0, 311), 0, 16)
                    moveconnection:Disconnect()
                    releaseconnection:Disconnect()
                end
            end)
        end)
    end
    return library2
end

return library
