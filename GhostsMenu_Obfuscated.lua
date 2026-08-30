-- GHOSTS Dynamic Island + Tags + Reanimation
-- Roblox LocalScript

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local SoundService = game:GetService("SoundService")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local API_BASE = "https://ghosts-users.mountflysoo.workers.dev"
local REANIM_URL = "https://ghostsreanim.mountflysoo.workers.dev"
local REGISTER_INTERVAL = 30
local FETCH_INTERVAL = 5

for _, v in pairs(PlayerGui:GetChildren()) do
    if v.Name == "GhostsMenu" or v.Name == "GHOSTS_DynamicIsland" or v.Name == "GhostsTags" then v:Destroy() end
end

local connections = {}
local function saveConnection(conn)
    table.insert(connections, conn)
    return conn
end

local function httpGet(url)
    local req = (type(request) == "function" and request)
        or (type(http_request) == "function" and http_request)
        or (type(syn) == "table" and type(syn.request) == "function" and syn.request)
        or (type(http) == "table" and type(http.request) == "function" and http.request)
    if req then
        local ok, res = pcall(function()
            return req({Url = url, Method = "GET", Headers = {["Content-Type"] = "application/json"}})
        end)
        if ok and res and res.StatusCode == 200 and res.Body then
            return res.Body
        end
    end
    local ok2, body = pcall(function() return game:HttpGet(url, true) end)
    if ok2 then return body end
    return nil
end

local function httpPost(url, data)
    local body = HttpService:JSONEncode(data)
    local req = (type(request) == "function" and request)
        or (type(http_request) == "function" and http_request)
        or (type(syn) == "table" and type(syn.request) == "function" and syn.request)
        or (type(http) == "table" and type(http.request) == "function" and http.request)
    if req then
        local ok, res = pcall(function()
            return req({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = body})
        end)
        if ok and res then return true end
    end
    return false
end

local function PlayTeleportSound()
    pcall(function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://127439510287856"
        sound.Volume = 2
        sound.Parent = SoundService
        sound:Play()
        Debris:AddItem(sound, 4)
    end)
end

local function runCloudScript(key)
    task.spawn(function()
        print("[GHOSTS] Ejecutando: " .. key)
        local code = nil
        local methods = {
            function() return game:HttpGet(API_BASE .. "/raw/" .. key, true) end,
            function() return game:HttpGet(API_BASE .. "/api/scripts/" .. key) end,
            function() return httpGet(API_BASE .. "/raw/" .. key) end,
            function() return httpGet(API_BASE .. "/api/scripts/" .. key) end,
        }
        for i, method in ipairs(methods) do
            local ok, raw = pcall(method)
            if ok and raw and #raw > 50 then
                if i >= 3 then
                    local ok2, data = pcall(function() return HttpService:JSONDecode(raw) end)
                    if ok2 and data and data.code then code = data.code end
                else
                    code = raw
                end
                if code then break end
            end
        end
        if not code then warn("[GHOSTS] No se pudo obtener: " .. key) return end
        code = code:gsub("^[\239][\187][\191]", "")
        code = code:gsub("^[\0]+", "")
        local func, err = loadstring(code)
        if not func then warn("[GHOSTS] Error loadstring " .. key .. ": " .. tostring(err)) return end
        local success, runErr = pcall(func)
        if success then print("[GHOSTS] Script ejecutado: " .. key)
        else warn("[GHOSTS] Error ejecutando " .. key .. ": " .. tostring(runErr)) end
    end)
end

-- ================================================================
-- DYNAMIC ISLAND
-- ================================================================

local CLOSED_W, CLOSED_H = 180, 42
local OPEN_W, OPEN_H = 350, 380
local TOP = 14

local white = Color3.fromRGB(245, 245, 248)

local Themes = {
    Purple = {
        Name = "Purple",
        Accent = Color3.fromRGB(175, 105, 255),
        Border = Color3.fromRGB(150, 155, 165),
        Glass = Color3.fromRGB(30, 32, 36)
    },
    Blue = {
        Name = "Blue",
        Accent = Color3.fromRGB(80, 160, 255),
        Border = Color3.fromRGB(125, 170, 220),
        Glass = Color3.fromRGB(27, 32, 40)
    },
    Red = {
        Name = "Red",
        Accent = Color3.fromRGB(255, 90, 105),
        Border = Color3.fromRGB(220, 130, 140),
        Glass = Color3.fromRGB(38, 28, 31)
    },
    Green = {
        Name = "Green",
        Accent = Color3.fromRGB(80, 220, 145),
        Border = Color3.fromRGB(125, 190, 155),
        Glass = Color3.fromRGB(27, 36, 32)
    },
    White = {
        Name = "White",
        Accent = Color3.fromRGB(235, 235, 240),
        Border = Color3.fromRGB(210, 210, 220),
        Glass = Color3.fromRGB(34, 34, 37)
    }
}

local currentTheme = Themes.Purple
local transparency = 0.10

local openTween = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local closeTween = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

local gui = Instance.new("ScreenGui")
gui.Name = "GhostsMenu"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 100
gui.Parent = PlayerGui
if syn and syn.protect_gui then pcall(syn.protect_gui, gui) end

local island = Instance.new("Frame")
island.Name = "Island"
island.AnchorPoint = Vector2.new(0.5, 0)
island.Size = UDim2.fromOffset(CLOSED_W, CLOSED_H)
island.Position = UDim2.new(0.5, 0, 0, TOP)
island.BackgroundColor3 = currentTheme.Glass
island.BackgroundTransparency = transparency
island.BorderSizePixel = 0
island.ClipsDescendants = true
island.ZIndex = 10
island.Parent = gui

Instance.new("UICorner", island).CornerRadius = UDim.new(0, 24)

local stroke = Instance.new("UIStroke")
stroke.Color = currentTheme.Border
stroke.Transparency = 0.48
stroke.Thickness = 1.2
stroke.Parent = island

local shine = Instance.new("Frame")
shine.Size = UDim2.new(1, -28, 0, 1)
shine.Position = UDim2.fromOffset(14, 1)
shine.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
shine.BackgroundTransparency = 0.65
shine.BorderSizePixel = 0
shine.ZIndex = 11
shine.Parent = island

local dot = Instance.new("Frame")
dot.Size = UDim2.fromOffset(9, 9)
dot.Position = UDim2.fromOffset(15, 16)
dot.BackgroundColor3 = currentTheme.Accent
dot.BorderSizePixel = 0
dot.ZIndex = 12
dot.Parent = island
Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

local dotGlow = Instance.new("UIStroke")
dotGlow.Color = currentTheme.Accent
dotGlow.Transparency = 0.35
dotGlow.Thickness = 2
dotGlow.Parent = dot

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -90, 0, 42)
title.Position = UDim2.fromOffset(36, 0)
title.BackgroundTransparency = 1
title.Text = "GHOSTS"
title.TextColor3 = white
title.TextSize = 15
title.Font = Enum.Font.GothamMedium
title.ZIndex = 12
title.Parent = island

local menuButton = Instance.new("TextButton")
menuButton.Size = UDim2.fromOffset(42, 42)
menuButton.Position = UDim2.new(1, -45, 0, 0)
menuButton.BackgroundTransparency = 1
menuButton.Text = ""
menuButton.AutoButtonColor = false
menuButton.ZIndex = 30
menuButton.Parent = island

local lines = {}
for i = 1, 3 do
    local line = Instance.new("Frame")
    line.Size = UDim2.fromOffset(15, 2)
    line.Position = UDim2.new(0.5, -7, 0, 15 + ((i - 1) * 4))
    line.BackgroundColor3 = white
    line.BorderSizePixel = 0
    line.ZIndex = 31
    line.Parent = menuButton
    Instance.new("UICorner", line).CornerRadius = UDim.new(1, 0)
    lines[i] = line
end

local content = Instance.new("Frame")
content.Name = "Content"
content.Size = UDim2.new(1, 0, 1, -48)
content.Position = UDim2.fromOffset(0, 48)
content.BackgroundTransparency = 1
content.ZIndex = 15
content.Parent = island

local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, -100, 0, 28)
header.Position = UDim2.fromOffset(20, 4)
header.BackgroundTransparency = 1
header.Text = "COMMANDS"
header.TextColor3 = currentTheme.Accent
header.TextSize = 13
header.TextXAlignment = Enum.TextXAlignment.Left
header.Font = Enum.Font.GothamMedium
header.ZIndex = 20
header.Parent = content

local backButton = Instance.new("TextButton")
backButton.Size = UDim2.fromOffset(70, 28)
backButton.Position = UDim2.new(1, -90, 0, 4)
backButton.BackgroundTransparency = 1
backButton.Text = "‹ Back"
backButton.TextColor3 = Color3.fromRGB(200, 200, 208)
backButton.TextSize = 12
backButton.Font = Enum.Font.GothamMedium
backButton.AutoButtonColor = false
backButton.Visible = false
backButton.ZIndex = 21
backButton.Parent = content

local scroll = Instance.new("ScrollingFrame")
scroll.Name = "Scroll"
scroll.Size = UDim2.new(1, -10, 1, -38)
scroll.Position = UDim2.fromOffset(5, 36)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 3
scroll.ScrollBarImageColor3 = currentTheme.Accent
scroll.ScrollBarImageTransparency = 0.35
scroll.ScrollingDirection = Enum.ScrollingDirection.Y
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollingEnabled = true
scroll.Active = true
scroll.ZIndex = 16
scroll.Parent = content

Instance.new("UIPadding", scroll).PaddingTop = UDim.new(0, 2)
scroll:FindFirstChildOfClass("UIPadding") or Instance.new("UIPadding", scroll)
local scrollPad = scroll:FindFirstChildOfClass("UIPadding")
scrollPad.PaddingBottom = UDim.new(0, 8)
scrollPad.PaddingLeft = UDim.new(0, 4)
scrollPad.PaddingRight = UDim.new(0, 4)

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = scroll

local buttons = {}

local function clearList()
    for _, obj in ipairs(buttons) do
        obj:Destroy()
    end
    table.clear(buttons)
    scroll.CanvasPosition = Vector2.zero
end

local function createButton(titleText, descriptionText, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -4, 0, 48)
    button.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
    button.BackgroundTransparency = math.clamp(transparency + 0.28, 0, 0.85)
    button.BorderSizePixel = 0
    button.Text = ""
    button.AutoButtonColor = false
    button.LayoutOrder = #buttons + 1
    button.ZIndex = 17
    button.Parent = scroll

    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 15)

    local bs = Instance.new("UIStroke")
    bs.Color = currentTheme.Border
    bs.Transparency = 0.78
    bs.Thickness = 1
    bs.Parent = button

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -55, 0, 21)
    nameLabel.Position = UDim2.fromOffset(15, 5)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = titleText
    nameLabel.TextColor3 = white
    nameLabel.TextSize = 14
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Font = Enum.Font.GothamMedium
    nameLabel.ZIndex = 18
    nameLabel.Active = false
    nameLabel.Parent = button

    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(1, -55, 0, 17)
    descLabel.Position = UDim2.fromOffset(15, 26)
    descLabel.BackgroundTransparency = 1
    descLabel.Text = descriptionText or ""
    descLabel.TextColor3 = Color3.fromRGB(190, 193, 200)
    descLabel.TextSize = 10
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.Font = Enum.Font.Gotham
    descLabel.ZIndex = 18
    descLabel.Active = false
    descLabel.Parent = button

    local arrow = Instance.new("TextLabel")
    arrow.Size = UDim2.fromOffset(25, 48)
    arrow.Position = UDim2.new(1, -32, 0, 0)
    arrow.BackgroundTransparency = 1
    arrow.Text = "›"
    arrow.TextColor3 = white
    arrow.TextSize = 22
    arrow.Font = Enum.Font.Gotham
    arrow.ZIndex = 18
    arrow.Active = false
    arrow.Parent = button

    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.15), {
            BackgroundTransparency = math.clamp(transparency + 0.10, 0, 0.85)
        }):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.15), {
            BackgroundTransparency = math.clamp(transparency + 0.28, 0, 0.85)
        }):Play()
    end)
    button.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
    table.insert(buttons, button)
    return button
end

local function createToggle(titleText, descriptionText, default, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -4, 0, 48)
    button.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
    button.BackgroundTransparency = math.clamp(transparency + 0.28, 0, 0.85)
    button.BorderSizePixel = 0
    button.Text = ""
    button.AutoButtonColor = false
    button.LayoutOrder = #buttons + 1
    button.ZIndex = 17
    button.Parent = scroll

    Instance.new("UICorner", button).CornerRadius = UDim.new(0, 15)

    local bs = Instance.new("UIStroke")
    bs.Color = currentTheme.Border
    bs.Transparency = 0.78
    bs.Thickness = 1
    bs.Parent = button

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -75, 0, 21)
    nameLabel.Position = UDim2.fromOffset(15, 5)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = titleText
    nameLabel.TextColor3 = white
    nameLabel.TextSize = 14
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Font = Enum.Font.GothamMedium
    nameLabel.ZIndex = 18
    nameLabel.Active = false
    nameLabel.Parent = button

    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(1, -75, 0, 17)
    descLabel.Position = UDim2.fromOffset(15, 26)
    descLabel.BackgroundTransparency = 1
    descLabel.Text = descriptionText or ""
    descLabel.TextColor3 = Color3.fromRGB(190, 193, 200)
    descLabel.TextSize = 10
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.Font = Enum.Font.Gotham
    descLabel.ZIndex = 18
    descLabel.Active = false
    descLabel.Parent = button

    local toggleBg = Instance.new("TextButton")
    toggleBg.Size = UDim2.new(0, 40, 0, 22)
    toggleBg.Position = UDim2.new(1, -52, 0.5, -11)
    toggleBg.BackgroundColor3 = default and currentTheme.Accent or Color3.fromRGB(80, 82, 88)
    toggleBg.BorderSizePixel = 0
    toggleBg.ZIndex = 18
    toggleBg.Text = ""
    toggleBg.AutoButtonColor = false
    toggleBg.Parent = button
    Instance.new("UICorner", toggleBg).CornerRadius = UDim.new(1, 0)

    local toggleCircle = Instance.new("Frame")
    toggleCircle.Size = UDim2.new(0, 18, 0, 18)
    toggleCircle.Position = default and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
    toggleCircle.BackgroundColor3 = white
    toggleCircle.BorderSizePixel = 0
    toggleCircle.ZIndex = 19
    toggleCircle.Active = false
    toggleCircle.Parent = toggleBg
    Instance.new("UICorner", toggleCircle).CornerRadius = UDim.new(1, 0)

    local state = default or false

    local function doToggle()
        state = not state
        warn("[GHOSTS] Toggle " .. titleText .. " = " .. tostring(state))
        TweenService:Create(toggleBg, TweenInfo.new(0.2), {BackgroundColor3 = state and currentTheme.Accent or Color3.fromRGB(80, 82, 88)}):Play()
        TweenService:Create(toggleCircle, TweenInfo.new(0.2), {Position = state and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)}):Play()
        if callback then callback(state) end
    end

    toggleBg.MouseButton1Click:Connect(doToggle)

    table.insert(buttons, button)
    return button
end

local function createSlider()
    local holder = Instance.new("Frame")
    holder.Name = "TransparencySlider"
    holder.Size = UDim2.new(1, -28, 0, 70)
    holder.BackgroundTransparency = 1
    holder.LayoutOrder = #buttons + 1
    holder.ZIndex = 17
    holder.Parent = scroll

    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Size = UDim2.new(1, -55, 0, 22)
    sliderLabel.BackgroundTransparency = 1
    sliderLabel.Text = "Transparency"
    sliderLabel.TextColor3 = white
    sliderLabel.TextSize = 13
    sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
    sliderLabel.Font = Enum.Font.GothamMedium
    sliderLabel.ZIndex = 18
    sliderLabel.Parent = holder

    local valueLabel = Instance.new("TextLabel")
    valueLabel.Size = UDim2.fromOffset(50, 22)
    valueLabel.Position = UDim2.new(1, -50, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.TextColor3 = currentTheme.Accent
    valueLabel.TextSize = 12
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.Font = Enum.Font.GothamMedium
    valueLabel.ZIndex = 18
    valueLabel.Parent = holder

    local track = Instance.new("Frame")
    track.Size = UDim2.new(1, 0, 0, 6)
    track.Position = UDim2.fromOffset(0, 36)
    track.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
    track.BorderSizePixel = 0
    track.ZIndex = 18
    track.Parent = holder
    Instance.new("UICorner", track).CornerRadius = UDim.new(1, 0)

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new(transparency, 0, 1, 0)
    fill.BackgroundColor3 = currentTheme.Accent
    fill.BorderSizePixel = 0
    fill.ZIndex = 19
    fill.Parent = track
    Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)

    local knob = Instance.new("TextButton")
    knob.Size = UDim2.fromOffset(18, 18)
    knob.AnchorPoint = Vector2.new(0.5, 0.5)
    knob.Position = UDim2.new(transparency, 0, 0.5, 0)
    knob.BackgroundColor3 = white
    knob.BorderSizePixel = 0
    knob.Text = ""
    knob.AutoButtonColor = false
    knob.ZIndex = 20
    knob.Parent = track
    Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)

    local knobStroke = Instance.new("UIStroke")
    knobStroke.Color = currentTheme.Accent
    knobStroke.Thickness = 2
    knobStroke.Transparency = 0.15
    knobStroke.Parent = knob

    local dragging = false

    local function update(inputX)
        local left = track.AbsolutePosition.X
        local width = track.AbsoluteSize.X
        if width <= 0 then return end
        local percent = math.clamp((inputX - left) / width, 0, 1)
        transparency = percent
        fill.Size = UDim2.new(percent, 0, 1, 0)
        knob.Position = UDim2.new(percent, 0, 0.5, 0)
        valueLabel.Text = math.floor(percent * 100 + 0.5) .. "%"
        island.BackgroundTransparency = transparency
        for _, btn in ipairs(buttons) do
            if btn:IsA("TextButton") then
                btn.BackgroundTransparency = math.clamp(transparency + 0.28, 0, 0.85)
            end
        end
    end

    knob.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            update(input.Position.X)
        end
    end)
    track.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            update(input.Position.X)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            update(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    valueLabel.Text = math.floor(transparency * 100 + 0.5) .. "%"
    table.insert(buttons, holder)
    return holder
end

-- ================================================================
-- SETTINGS
-- ================================================================

local function applyTheme(theme)
    currentTheme = theme
    island.BackgroundColor3 = theme.Glass
    stroke.Color = theme.Border
    dot.BackgroundColor3 = theme.Accent
    dotGlow.Color = theme.Accent
    header.TextColor3 = theme.Accent
    scroll.ScrollBarImageColor3 = theme.Accent
    for userId, tagGui in pairs(existingTags) do
        if tagGui and tagGui.Parent then
            pcall(function()
                local TagButton = tagGui:FindFirstChildOfClass("TextButton")
                if TagButton then
                    local AvatarCircle = TagButton:FindFirstChild("AvatarCircle")
                    local TagStroke = TagButton:FindFirstChildOfClass("UIStroke")
                    local Content = TagButton:FindFirstChild("Content")
                    if AvatarCircle then
                        local s = AvatarCircle:FindFirstChildOfClass("UIStroke")
                        if s then s.Color = theme.Accent end
                    end
                    if TagStroke then TagStroke.Color = theme.Accent end
                    if Content then
                        local StatusLabel = Content:FindFirstChild("StatusLabel")
                        if StatusLabel then StatusLabel.TextColor3 = theme.Accent end
                    end
                end
            end)
        end
    end
end

function showSettings()
    clearList()
    header.Text = "SETTINGS"
    backButton.Visible = true
    createSlider()
    createToggle("Show Tags", "Mostrar/ocultar tags sobre los jugadores", _G.tagsEnabled, function(state)
        _G.tagsEnabled = state
        if not state then
            for userId, conn in pairs(tagConnections) do
                pcall(function() conn:Disconnect() end)
            end
            tagConnections = {}
            for _, child in pairs(tagsGui:GetChildren()) do
                child:Destroy()
            end
            existingTags = {}
        else
            for _, player in ipairs(Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("Head") then
                    applyTagToPlayer(player)
                end
            end
        end
    end)
    for _, theme in pairs(Themes) do
        createButton("Theme: " .. theme.Name, "Cambiar el color del panel", function()
            applyTheme(theme)
        end)
    end
    createButton("Reset Appearance", "Restaurar apariencia original", function()
        transparency = 0.10
        currentTheme = Themes.Purple
        island.BackgroundColor3 = currentTheme.Glass
        island.BackgroundTransparency = transparency
        stroke.Color = currentTheme.Border
        dot.BackgroundColor3 = currentTheme.Accent
        dotGlow.Color = currentTheme.Accent
        header.TextColor3 = currentTheme.Accent
        scroll.ScrollBarImageColor3 = currentTheme.Accent
        showSettings()
    end)
end

-- ================================================================
-- CATEGORÍAS
-- ================================================================

local categories = {
    {name = "Server Admin", icon = "◆", description = "Herramientas del servidor"},
    {name = "Visuals", icon = "◆", description = "Opciones visuales"},
}

local function showCategoryPage(catName)
    clearList()
    header.Text = catName
    backButton.Visible = true

    if catName == "Server Admin" then
        createToggle("Anti VC Ban", "Proteccion contra voice chat ban system", false, function(state)
            if state then
                runCloudScript("antivcban")
            end
        end)

    elseif catName == "Visuals" then
        createToggle("FlowReanimation", "Reanimation v1.0 - Server protected", false, function(state)
            if state then
                task.spawn(function()
                    local FlowCode = nil
                    local methods = {
                        function() return game:HttpGet(REANIM_URL .. "/api/script", true) end,
                        function()
                            local req = (type(request) == "function" and request) or (type(http_request) == "function" and http_request) or (type(syn) == "table" and type(syn.request) == "function" and syn.request) or (type(http) == "table" and type(http.request) == "function" and http.request)
                            if req then
                                local ok, res = pcall(function() return req({Url = REANIM_URL .. "/api/script", Method = "GET", Timeout = 15}) end)
                                if ok and res and res.StatusCode == 200 and res.Body then return res.Body end
                            end
                            return nil
                        end,
                        function() return readfile("FlowReanimation.lua") end,
                        function() return readfile("FlowReanimation.lua.txt") end,
                        function() return readfile("ghostsreanim.lua") end,
                    }
                    for _, method in ipairs(methods) do
                        local ok, result = pcall(method)
                        if ok and result and result ~= "" then FlowCode = result; break end
                    end
                    if FlowCode and FlowCode ~= "" then
                        loadstring(FlowCode)()
                    else
                        warn("[GHOSTS] No se pudo obtener FlowReanimation")
                    end
                end)
            else
                pcall(function() if _G._FlowReanimCleanup then _G._FlowReanimCleanup() end end)
                pcall(function()
                    local char = Players.LocalPlayer.Character
                    if char then
                        for _, v in pairs(char:GetDescendants()) do
                            if v:IsA("BasePart") and v.Name == "FakeRoot" then v:Destroy() end
                            if v:IsA("Motor6D") and v.Name == "FakeRootJoint" then v:Destroy() end
                        end
                    end
                end)
                pcall(function()
                    _G._FlowReanimCleanup = nil
                    if getgenv and getgenv()._FlowReanimCleanup then getgenv()._FlowReanimCleanup = nil end
                end)
            end
        end)
    end
end

local function showCategories()
    clearList()
    header.Text = "COMMANDS"
    backButton.Visible = false
    for _, category in ipairs(categories) do
        createButton(category.icon .. "  " .. category.name, category.description, function()
            showCategoryPage(category.name)
        end)
    end
    createButton("◆  Settings", "Personaliza el aspecto de GHOSTS", showSettings)
end

backButton.MouseButton1Click:Connect(showCategories)
showCategories()

-- ================================================================
-- ABRIR / CERRAR
-- ================================================================

local opened = false

local function openIsland()
    if opened then return end
    opened = true
    showCategories()
    TweenService:Create(island, openTween, {Size = UDim2.fromOffset(OPEN_W, OPEN_H)}):Play()
    TweenService:Create(title, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
    TweenService:Create(lines[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
    TweenService:Create(lines[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
    TweenService:Create(lines[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end

local function closeIsland()
    if not opened then return end
    opened = false
    TweenService:Create(island, closeTween, {Size = UDim2.fromOffset(CLOSED_W, CLOSED_H)}):Play()
    TweenService:Create(title, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
    TweenService:Create(lines[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
    TweenService:Create(lines[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
    TweenService:Create(lines[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end

menuButton.MouseButton1Click:Connect(function()
    if opened then closeIsland() else openIsland() end
end)

task.spawn(function()
    while gui.Parent do
        TweenService:Create(dot, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
        task.wait(0.8)
        TweenService:Create(dot, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
        task.wait(0.8)
    end
end)

-- ================================================================
-- SISTEMA DE TAGS - SOLO USUARIOS DEL SCRIPT
-- ================================================================

local tagsEnabled = true
_G["tagsEnabled"] = true
local activeUsers = {}
local tagsGui = Instance.new("ScreenGui")
tagsGui.Name = "GhostsTags"
tagsGui.ResetOnSpawn = false
tagsGui.IgnoreGuiInset = true
tagsGui.DisplayOrder = 99
tagsGui.Parent = PlayerGui

task.spawn(function()
    while true do
        httpPost(API_BASE .. "/api/register", {
            userId = LocalPlayer.UserId,
            displayName = LocalPlayer.DisplayName,
        })
        task.wait(REGISTER_INTERVAL)
    end
end)

task.spawn(function()
    while true do
        local raw = httpGet(API_BASE .. "/api/users")
        if raw then
            local ok, data = pcall(function() return HttpService:JSONDecode(raw) end)
            if ok and data and data.users then
                local newUserIds = {}
                for _, u in ipairs(data.users) do
                    newUserIds[tostring(u.userId)] = u
                end
                activeUsers = newUserIds
            end
        end
        task.wait(FETCH_INTERVAL)
    end
end)

local existingTags = {}
local tagConnections = {}

local function applyTagToPlayer(player)
    task.spawn(function()
        local function apply(character)
            if not _G.tagsEnabled then return end
            local head = character:WaitForChild("Head", 5)
            local humanoid = character:FindFirstChild("Humanoid", 5)
            if not head then return end
            if humanoid then humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end

            if existingTags[player.UserId] then
                existingTags[player.UserId]:Destroy()
                existingTags[player.UserId] = nil
            end

            local Billboard = Instance.new("BillboardGui", tagsGui)
            Billboard.Name = "BloxyTag_Dynamic"
            Billboard.Adornee = head
            Billboard.Size = UDim2.new(0, 300, 0, 50)
            Billboard.StudsOffset = Vector3.new(0, 2, 0)
            Billboard.AlwaysOnTop = true
            Billboard.MaxDistance = math.huge
            Billboard.Active = true

            local TagButton = Instance.new("TextButton", Billboard)
            TagButton.Text = ""
            TagButton.AnchorPoint = Vector2.new(0.5, 0.5)
            TagButton.Position = UDim2.new(0.5, 0, 0.5, 0)
            TagButton.Size = UDim2.new(0, 44, 0, 44)
            TagButton.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
            TagButton.BackgroundTransparency = 0.05
            TagButton.BorderSizePixel = 0
            TagButton.ClipsDescendants = true
            TagButton.Active = true
            TagButton.AutoButtonColor = false

            Instance.new("UICorner", TagButton).CornerRadius = UDim.new(0.5, 0)

            local TagStroke = Instance.new("UIStroke", TagButton)
            TagStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            TagStroke.Thickness = 1.5
            TagStroke.Color = Color3.fromRGB(60, 60, 65)
            TagStroke.Transparency = 0.3

            local OrbContainer = Instance.new("Frame", TagButton)
            OrbContainer.Size = UDim2.new(1, 0, 1, 0)
            OrbContainer.BackgroundTransparency = 1
            OrbContainer.ZIndex = 1
            OrbContainer.Active = false

            local AvatarCircle = Instance.new("Frame", TagButton)
            AvatarCircle.Name = "AvatarCircle"
            AvatarCircle.Size = UDim2.new(1, 0, 1, 0)
            AvatarCircle.Position = UDim2.new(0, 0, 0, 0)
            AvatarCircle.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
            AvatarCircle.BackgroundTransparency = 0.1
            AvatarCircle.ZIndex = 3
            AvatarCircle.Active = false
            Instance.new("UICorner", AvatarCircle).CornerRadius = UDim.new(0.5, 0)

            local AvatarStroke = Instance.new("UIStroke", AvatarCircle)
            AvatarStroke.Color = Color3.fromRGB(80, 80, 85)
            AvatarStroke.Thickness = 1.5
            AvatarStroke.Transparency = 0.4

            local AvatarImage = Instance.new("ImageLabel", AvatarCircle)
            AvatarImage.Size = UDim2.new(0.75, 0, 0.75, 0)
            AvatarImage.AnchorPoint = Vector2.new(0.5, 0.5)
            AvatarImage.Position = UDim2.new(0.5, 0, 0.5, 0)
            AvatarImage.BackgroundTransparency = 1
            AvatarImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=150&h=150"
            AvatarImage.ZIndex = 4
            Instance.new("UICorner", AvatarImage).CornerRadius = UDim.new(0.5, 0)

            local OnlineDot = Instance.new("Frame", AvatarCircle)
            OnlineDot.Name = "OnlineDot"
            OnlineDot.Size = UDim2.new(0, 8, 0, 8)
            OnlineDot.Position = UDim2.new(1, -6, 1, -6)
            OnlineDot.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
            OnlineDot.BorderSizePixel = 0
            OnlineDot.ZIndex = 6
            Instance.new("UICorner", OnlineDot).CornerRadius = UDim.new(0.5, 0)
            local OnlineDotStroke = Instance.new("UIStroke", OnlineDot)
            OnlineDotStroke.Color = Color3.fromRGB(10, 10, 12)
            OnlineDotStroke.Thickness = 1.5
            OnlineDot.BackgroundTransparency = 1
            OnlineDotStroke.Transparency = 1

            local ContentContainer = Instance.new("Frame", TagButton)
            ContentContainer.Name = "Content"
            ContentContainer.Size = UDim2.new(1, -44, 1, 0)
            ContentContainer.Position = UDim2.new(1, 0, 0, 0)
            ContentContainer.AnchorPoint = Vector2.new(1, 0.5)
            ContentContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
            ContentContainer.BackgroundTransparency = 0.2
            ContentContainer.ZIndex = 2
            ContentContainer.Active = false
            ContentContainer.ClipsDescendants = true
            Instance.new("UICorner", ContentContainer).CornerRadius = UDim.new(0.5, 0)
            local ContentStroke = Instance.new("UIStroke", ContentContainer)
            ContentStroke.Color = Color3.fromRGB(50, 50, 55)
            ContentStroke.Thickness = 1
            ContentStroke.Transparency = 0.5

            local NameLabel = Instance.new("TextLabel", ContentContainer)
            NameLabel.Name = "NameLabel"
            NameLabel.Size = UDim2.new(1, -12, 0.55, 0)
            NameLabel.Position = UDim2.new(0, 6, 0, 0)
            NameLabel.BackgroundTransparency = 1
            NameLabel.Text = player.DisplayName
            NameLabel.TextColor3 = Color3.fromRGB(230, 230, 240)
            NameLabel.Font = Enum.Font.GothamBlack
            NameLabel.TextSize = 11
            NameLabel.TextXAlignment = Enum.TextXAlignment.Center
            NameLabel.TextYAlignment = Enum.TextYAlignment.Bottom
            NameLabel.ZIndex = 3
            NameLabel.TextTruncate = Enum.TextTruncate.AtEnd

            local StatusLabel = Instance.new("TextLabel", ContentContainer)
            StatusLabel.Name = "StatusLabel"
            StatusLabel.Size = UDim2.new(1, -12, 0.4, 0)
            StatusLabel.Position = UDim2.new(0, 6, 0.55, 0)
            StatusLabel.BackgroundTransparency = 1
            StatusLabel.Text = "Loading..."
            StatusLabel.TextColor3 = Color3.fromRGB(100, 200, 100)
            StatusLabel.Font = Enum.Font.GothamMedium
            StatusLabel.TextSize = 9
            StatusLabel.TextXAlignment = Enum.TextXAlignment.Center
            StatusLabel.TextYAlignment = Enum.TextYAlignment.Top
            StatusLabel.ZIndex = 3
            StatusLabel.TextTruncate = Enum.TextTruncate.AtEnd

            existingTags[player.UserId] = Billboard

            TagButton.MouseButton1Click:Connect(function()
                if player ~= LocalPlayer then
                    pcall(function()
                        local lpChar = LocalPlayer.Character
                        local targetChar = player.Character
                        if lpChar and lpChar:FindFirstChild("HumanoidRootPart") and targetChar and targetChar:FindFirstChild("HumanoidRootPart") then
                            PlayTeleportSound()
                            lpChar:PivotTo(targetChar.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2))
                        end
                    end)
                end
            end)

            local isExpanded = false
            local orbTimer = 0
            local lastState = nil
            local frameCount = 0

            RunService.RenderStepped:Connect(function(dt)
                if not Billboard or not Billboard.Parent then return end
                frameCount = frameCount + 1
                if frameCount % 3 ~= 0 then return end

                local currentState = nil
                if player == LocalPlayer then
                    currentState = "self"
                else
                    currentState = activeUsers[tostring(player.UserId)] ~= nil and "active" or "inactive"
                end

                if currentState ~= lastState then
                    lastState = currentState
                    if currentState == "self" then
                        StatusLabel.Text = "GHOST MENU"
                        StatusLabel.TextColor3 = currentTheme.Accent
                        AvatarStroke.Color = currentTheme.Accent
                        AvatarStroke.Transparency = 0
                        TagStroke.Color = currentTheme.Accent
                    elseif currentState == "active" then
                        StatusLabel.Text = "GHOST"
                        StatusLabel.TextColor3 = Color3.fromRGB(34, 197, 94)
                        AvatarStroke.Color = Color3.fromRGB(34, 197, 94)
                        AvatarStroke.Transparency = 0
                        TagStroke.Color = Color3.fromRGB(34, 197, 94)
                    else
                        StatusLabel.Text = "OFFLINE"
                        StatusLabel.TextColor3 = Color3.fromRGB(140, 140, 150)
                        AvatarStroke.Color = Color3.fromRGB(80, 80, 85)
                        AvatarStroke.Transparency = 0.4
                        TagStroke.Color = Color3.fromRGB(60, 60, 65)
                    end
                end

                orbTimer = orbTimer + dt
                if orbTimer >= 1.5 then
                    orbTimer = 0
                    pcall(function()
                        local orb = Instance.new("Frame")
                        local sz = math.random(2, 4)
                        orb.Size = UDim2.new(0, sz, 0, sz)
                        orb.Position = UDim2.new(math.random(10, 90)/100, 0, 1.2, 0)
                        if currentState == "self" then
                            orb.BackgroundColor3 = currentTheme.Accent
                        elseif currentState == "active" then
                            orb.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
                        else
                            orb.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
                        end
                        orb.BackgroundTransparency = 0.5
                        orb.BorderSizePixel = 0
                        orb.ZIndex = 1
                        orb.Active = false
                        Instance.new("UICorner", orb).CornerRadius = UDim.new(1, 0)
                        orb.Parent = OrbContainer
                        local tween = TweenService:Create(orb, TweenInfo.new(math.random(15, 25)/10, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(orb.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
                        tween:Play()
                        tween.Completed:Connect(function() orb:Destroy() end)
                    end)
                end

                if frameCount % 6 ~= 0 then return end

                local distance = 9999
                local lpChar = LocalPlayer.Character
                if lpChar and lpChar:FindFirstChild("Head") then
                    distance = (head.Position - lpChar.Head.Position).Magnitude
                end

                if distance < 55 then
                    if not isExpanded then
                        isExpanded = true
                        TweenService:Create(TagButton, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
                        TweenService:Create(AvatarCircle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
                        TweenService:Create(ContentContainer, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
                        TweenService:Create(OnlineDot, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
                        TweenService:Create(OnlineDotStroke, TweenInfo.new(0.35), {Transparency = 0}):Play()
                    end
                else
                    if isExpanded then
                        isExpanded = false
                        TweenService:Create(TagButton, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
                        TweenService:Create(AvatarCircle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
                        TweenService:Create(ContentContainer, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
                        TweenService:Create(OnlineDot, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                        TweenService:Create(OnlineDotStroke, TweenInfo.new(0.2), {Transparency = 1}):Play()
                    end
                end
            end)
        end

        if player.Character then apply(player.Character) end
        local conn = player.CharacterAdded:Connect(function(char) apply(char) end)
        if tagConnections[player.UserId] then
            pcall(function() tagConnections[player.UserId]:Disconnect() end)
        end
        tagConnections[player.UserId] = conn
    end)
end)

task.spawn(function()
    while task.wait(FETCH_INTERVAL) do
        if not gui or not gui.Parent then break end
        if not _G.tagsEnabled then
            for _, child in pairs(tagsGui:GetChildren()) do
                child:Destroy()
            end
            existingTags = {}
            for userId, conn in pairs(tagConnections) do
                pcall(function() conn:Disconnect() end)
            end
            tagConnections = {}
        end
        for _, player in ipairs(Players:GetPlayers()) do
            local isUsingScript = activeUsers[tostring(player.UserId)] ~= nil
            local isLocal = player == LocalPlayer
            if _G.tagsEnabled and (isLocal or isUsingScript) then
                if player.Character and player.Character:FindFirstChild("Head") then
                    if not existingTags[player.UserId] or not existingTags[player.UserId].Parent then
                        applyTagToPlayer(player)
                    end
                end
            else
                if existingTags[player.UserId] then
                    existingTags[player.UserId]:Destroy()
                    existingTags[player.UserId] = nil
                end
            end
        end
    end
end)

Players.PlayerRemoving:Connect(function(player)
    if existingTags[player.UserId] then
        existingTags[player.UserId]:Destroy()
        existingTags[player.UserId] = nil
    end
    if tagConnections[player.UserId] then
        pcall(function() tagConnections[player.UserId]:Disconnect() end)
        tagConnections[player.UserId] = nil
    end
    activeUsers[tostring(player.UserId)] = nil
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player == LocalPlayer and _G.tagsEnabled then
        applyTagToPlayer(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player == LocalPlayer and _G.tagsEnabled then
        applyTagToPlayer(player)
    end
end)

print("[GHOSTS Dynamic Island] Loaded - Menu arriba con categorias")
print("[GHOSTS Dynamic Island] Tags solo para teleport")
print("[GHOSTS Dynamic Island] API: " .. API_BASE)
