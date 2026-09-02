local _c_qoab = {}
local _clydeDec_xijh4f = function(t, k)
  if _c_qoab[t] then
    return _c_qoab[t]
  end
  local s = {}
  for i = 1, #t do
    s[i] = string.char(bit32.bxor(t[i], k))
  end
  local res = table.concat(s)
  _c_qoab[t] = res
  return res
end
local Players = game:GetService(_clydeDec_xijh4f({10, 54, 59, 35, 63, 40, 41}, 90))
local TweenService = game:GetService(_clydeDec_xijh4f({14, 45, 63, 63, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local UserInputService = game:GetService(_clydeDec_xijh4f({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local RunService = game:GetService(_clydeDec_xijh4f({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local Debris = game:GetService(_clydeDec_xijh4f({30, 63, 56, 40, 51, 41}, 90))
local SoundService = game:GetService(_clydeDec_xijh4f({9, 53, 47, 52, 62, 9, 63, 40, 44, 51, 57, 63}, 90))
local HttpService = game:GetService(_clydeDec_xijh4f({18, 46, 46, 42, 9, 63, 40, 44, 51, 57, 63}, 90))
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild(_clydeDec_xijh4f({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
local API_BASE = _clydeDec_xijh4f({50, 46, 46, 42, 41, 96, 117, 117, 61, 50, 53, 41, 46, 41, 119, 47, 41, 63, 40, 41, 116, 55, 53, 47, 52, 46, 60, 54, 35, 41, 53, 53, 116, 45, 53, 40, 49, 63, 40, 41, 116, 62, 63, 44}, 90)
local REANIM_URL = _clydeDec_xijh4f({50, 46, 46, 42, 41, 96, 117, 117, 61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 55, 53, 47, 52, 46, 60, 54, 35, 41, 53, 53, 116, 45, 53, 40, 49, 63, 40, 41, 116, 62, 63, 44}, 90)
for _, v in pairs(PlayerGui:GetChildren()) do
  if ((v.Name == _clydeDec_xijh4f({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)) or (v.Name == _clydeDec_xijh4f({29, 18, 21, 9, 14, 9, 5, 30, 35, 52, 59, 55, 51, 57, 19, 41, 54, 59, 52, 62}, 90))) then
    v:Destroy()
  end
end
local function httpGet(url)
  local req = ((((((type(request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(http.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if req then
    local ok, res = pcall(function()
      return req({Url = url, Method = _clydeDec_xijh4f({29, 31, 14}, 90), Headers = {[_clydeDec_xijh4f({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = _clydeDec_xijh4f({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}})
    end)
    if (((ok and res) and (res.StatusCode == 200)) and res.Body) then
      return res.Body
    end
  end
  local ok2, body = pcall(function()
    return game:HttpGet(url, true)
  end)
  if ok2 then
    return body
  end
  return nil
end
local function httpPost(url, data)
  local body = HttpService:JSONEncode(data)
  local req = ((((((type(request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(http.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if req then
    local ok, res = pcall(function()
      return req({Url = url, Method = _clydeDec_xijh4f({10, 21, 9, 14}, 90), Headers = {[_clydeDec_xijh4f({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = _clydeDec_xijh4f({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}, Body = body})
    end)
    if (ok and res) then
      return true
    end
  end
  return false
end
local function PlayTeleportSound()
  pcall(function()
    local sound = Instance.new(_clydeDec_xijh4f({9, 53, 47, 52, 62}, 90))
    sound.SoundId = _clydeDec_xijh4f({40, 56, 34, 59, 41, 41, 63, 46, 51, 62, 96, 117, 117, 107, 104, 109, 110, 105, 99, 111, 107, 106, 104, 98, 109, 98, 111, 108}, 90)
    sound.Volume = 2
    sound.Parent = SoundService
    sound:Play()
    Debris:AddItem(sound, 4)
  end)
end
local function runCloudScript(key)
  task.spawn(function()
    print((_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 48, 63, 57, 47, 46, 59, 52, 62, 53, 96, 122}, 90) .. key))
    local code = nil
    local methods = {function()
      return game:HttpGet((API_BASE .. (_clydeDec_xijh4f({117, 40, 59, 45, 117}, 90) .. key)), true)
    end, function()
      return game:HttpGet((API_BASE .. (_clydeDec_xijh4f({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. key)))
    end, function()
      return httpGet((API_BASE .. (_clydeDec_xijh4f({117, 40, 59, 45, 117}, 90) .. key)))
    end, function()
      return httpGet((API_BASE .. (_clydeDec_xijh4f({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. key)))
    end}
    for i, method in ipairs(methods) do
      local ok, raw = pcall(method)
      if ((ok and raw) and (#raw > 50)) then
        if (i >= 3) then
          local ok2, data = pcall(function()
            return HttpService:JSONDecode(raw)
          end)
          if ((ok2 and data) and data.code) then
            code = data.code
          end
        else
          code = raw
        end
        if code then
          break
        end
      end
    end
    if not code then
      warn((_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 96, 122}, 90) .. key))
      return
    end
    code = code:gsub(_clydeDec_xijh4f({4, 1, 181, 7, 1, 225, 7, 1, 229, 7}, 90), "")
    code = code:gsub(_clydeDec_xijh4f({4, 1, 90, 7, 113}, 90), "")
    local func, err = loadstring(code)
    if not func then
      warn((_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 54, 53, 59, 62, 41, 46, 40, 51, 52, 61, 122}, 90) .. (key .. (_clydeDec_xijh4f({96, 122}, 90) .. tostring(err)))))
      return
    end
    local success, runErr = pcall(func)
    if success then
      print((_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 9, 57, 40, 51, 42, 46, 122, 63, 48, 63, 57, 47, 46, 59, 62, 53, 96, 122}, 90) .. key))
    else
      warn((_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 63, 48, 63, 57, 47, 46, 59, 52, 62, 53, 122}, 90) .. (key .. (_clydeDec_xijh4f({96, 122}, 90) .. tostring(runErr)))))
    end
  end)
end
local TAGS_API = (API_BASE .. _clydeDec_xijh4f({117, 59, 42, 51, 117, 46, 59, 61, 41}, 90))
local tagsEnabled = true
local tagsData = {}
local activeTags = {}
local STYLE_PRESETS = {default = {Color3.fromRGB(128, 128, 128), _clydeDec_xijh4f({30, 31, 28, 27, 15, 22, 14}, 90)}, vip = {Color3.fromRGB(255, 215, 0), _clydeDec_xijh4f({12, 19, 10}, 90)}, admin = {Color3.fromRGB(255, 68, 68), _clydeDec_xijh4f({27, 30, 23, 19, 20}, 90)}, mod = {Color3.fromRGB(68, 170, 255), _clydeDec_xijh4f({23, 21, 30}, 90)}, owner = {Color3.fromRGB(255, 105, 180), _clydeDec_xijh4f({21, 13, 20, 31, 8}, 90)}, custom = {Color3.fromRGB(255, 255, 255), ""}}
local function parseColor(colorStr)
  if (not colorStr or (colorStr == "")) then
    return Color3.fromRGB(128, 128, 128)
  end
  local r, g, b = colorStr:match(_clydeDec_xijh4f({121, 101, 114, 127, 34, 127, 34, 115, 114, 127, 34, 127, 34, 115, 114, 127, 34, 127, 34, 115}, 90))
  if ((r and g) and b) then
    return Color3.fromRGB(tonumber(r, 16), tonumber(g, 16), tonumber(b, 16))
  end
  return Color3.fromRGB(128, 128, 128)
end
local function fetchTags()
  local raw = httpGet(TAGS_API)
  if raw then
    local ok, data = pcall(function()
      return HttpService:JSONDecode(raw)
    end)
    if ((ok and data) and data.tags) then
      tagsData = {}
      for _, tag in ipairs(data.tags) do
        tagsData[tostring(tag.userId)] = tag
      end
    end
  end
end
local function destroyTag(userId)
  if activeTags[userId] then
    pcall(function()
      activeTags[userId]:Destroy()
    end)
    activeTags[userId] = nil
  end
end
local function createTag(plr, tagInfo)
  if (plr == player) then
    return
  end
  local character = plr.Character
  if not character then
    return
  end
  local head = character:FindFirstChild(_clydeDec_xijh4f({18, 63, 59, 62}, 90))
  if not head then
    return
  end
  destroyTag(plr.UserId)
  local style = (tagInfo.style or _clydeDec_xijh4f({62, 63, 60, 59, 47, 54, 46}, 90))
  local preset = (STYLE_PRESETS[style] or STYLE_PRESETS.default)
  local tagColor = ((tagInfo.color and parseColor(tagInfo.color)) or preset[1])
  local label = preset[2]
  local billboard = Instance.new(_clydeDec_xijh4f({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  billboard.Name = _clydeDec_xijh4f({29, 50, 53, 41, 46, 41, 14, 59, 61}, 90)
  billboard.Adornee = head
  billboard.Size = UDim2.new(0, 200, 0, 50)
  billboard.StudsOffset = Vector3.new(0, 2.5, 0)
  billboard.AlwaysOnTop = true
  billboard.MaxDistance = 100
  billboard.Parent = character
  local bg = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  bg.Size = UDim2.new(0, 180, 0, 22)
  bg.Position = UDim2.new(0.5, -90, 0, 14)
  bg.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
  bg.BackgroundTransparency = 0.2
  bg.BorderSizePixel = 0
  bg.Parent = billboard
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), bg).CornerRadius = UDim.new(0, 10)
  local stroke = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  stroke.Color = tagColor
  stroke.Thickness = 1.5
  stroke.Transparency = 0.3
  stroke.Parent = bg
  if (tagInfo.image and (tagInfo.image ~= "")) then
    local icon = Instance.new(_clydeDec_xijh4f({19, 55, 59, 61, 63, 22, 59, 56, 63, 54}, 90))
    icon.Size = UDim2.new(0, 18, 0, 18)
    icon.Position = UDim2.new(0, 3, 0.5, -9)
    icon.BackgroundTransparency = 1
    icon.Image = tagInfo.image
    icon.Parent = bg
    Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), icon).CornerRadius = UDim.new(1, 0)
  end
  local nameLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  nameLabel.Size = UDim2.new(1, -70, 1, 0)
  nameLabel.Position = UDim2.new(0, 26, 0, 0)
  nameLabel.BackgroundTransparency = 1
  nameLabel.Text = (tagInfo.username or plr.DisplayName)
  nameLabel.TextColor3 = Color3.fromRGB(230, 230, 240)
  nameLabel.Font = Enum.Font.GothamBold
  nameLabel.TextSize = 11
  nameLabel.TextXAlignment = Enum.TextXAlignment.Left
  nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
  nameLabel.Parent = bg
  if (label ~= "") then
    local badge = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    badge.Size = UDim2.new(0, 50, 0, 16)
    badge.Position = UDim2.new(1, -56, 0.5, -8)
    badge.BackgroundColor3 = tagColor
    badge.BackgroundTransparency = 0.3
    badge.Text = label
    badge.TextColor3 = Color3.fromRGB(255, 255, 255)
    badge.Font = Enum.Font.GothamBlack
    badge.TextSize = 9
    badge.Parent = bg
    Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), badge).CornerRadius = UDim.new(1, 0)
  end
  if (tagInfo.status and (tagInfo.status ~= "")) then
    local statusLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    statusLabel.Size = UDim2.new(1, -10, 0, 14)
    statusLabel.Position = UDim2.new(0, 26, 1, -14)
    statusLabel.BackgroundTransparency = 1
    statusLabel.Text = tagInfo.status
    statusLabel.TextColor3 = tagColor
    statusLabel.Font = Enum.Font.Gotham
    statusLabel.TextSize = 9
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.TextTruncate = Enum.TextTruncate.AtEnd
    statusLabel.Parent = bg
  end
  activeTags[plr.UserId] = billboard
end
local function updateTags()
  for _, plr in ipairs(Players:GetPlayers()) do
    if (plr ~= player) then
      local tagInfo = tagsData[tostring(plr.UserId)]
      if tagInfo then
        createTag(plr, tagInfo)
      else
        destroyTag(plr.UserId)
      end
    end
  end
end
local function cleanupTags()
  for userId, billboard in pairs(activeTags) do
    pcall(function()
      billboard:Destroy()
    end)
  end
  activeTags = {}
end
Players.PlayerRemoving:Connect(function(plr)
  destroyTag(plr.UserId)
end)
task.spawn(function()
  while true do
    if tagsEnabled then
      pcall(fetchTags)
      updateTags()
    else
      cleanupTags()
    end
    task.wait(30)
  end
end)
RunService.Heartbeat:Connect(function()
  if not tagsEnabled then
    return
  end
  for _, plr in ipairs(Players:GetPlayers()) do
    if (plr ~= player) then
      local character = plr.Character
      local head = (character and character:FindFirstChild(_clydeDec_xijh4f({18, 63, 59, 62}, 90)))
      local tag = activeTags[plr.UserId]
      if (tag and ((not head or not tag.Parent))) then
        destroyTag(plr.UserId)
      end
    end
  end
end)
local Themes = {Purple = {Name = _clydeDec_xijh4f({10, 47, 40, 42, 54, 63}, 90), Accent = Color3.fromRGB(175, 105, 255), Border = Color3.fromRGB(150, 155, 165), Glass = Color3.fromRGB(30, 32, 36)}, Blue = {Name = _clydeDec_xijh4f({24, 54, 47, 63}, 90), Accent = Color3.fromRGB(80, 160, 255), Border = Color3.fromRGB(125, 170, 220), Glass = Color3.fromRGB(27, 32, 40)}, Red = {Name = _clydeDec_xijh4f({8, 63, 62}, 90), Accent = Color3.fromRGB(255, 90, 105), Border = Color3.fromRGB(220, 130, 140), Glass = Color3.fromRGB(38, 28, 31)}, Green = {Name = _clydeDec_xijh4f({29, 40, 63, 63, 52}, 90), Accent = Color3.fromRGB(80, 220, 145), Border = Color3.fromRGB(125, 190, 155), Glass = Color3.fromRGB(27, 36, 32)}, White = {Name = _clydeDec_xijh4f({13, 50, 51, 46, 63}, 90), Accent = Color3.fromRGB(235, 235, 240), Border = Color3.fromRGB(210, 210, 220), Glass = Color3.fromRGB(34, 34, 37)}}
_G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = Themes.Purple
local transparency = 0.10
local openTween = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local closeTween = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local gui = Instance.new(_clydeDec_xijh4f({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90))
gui.Name = _clydeDec_xijh4f({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = PlayerGui
if (syn and syn.protect_gui) then
  pcall(syn.protect_gui, gui)
end
local CLOSED_W, CLOSED_H = 180, 42
local OPEN_W, OPEN_H = 350, 380
local TOP = 14
local white = Color3.fromRGB(245, 245, 248)
local island = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
island.Name = _clydeDec_xijh4f({19, 41, 54, 59, 52, 62}, 90)
island.AnchorPoint = Vector2.new(0.5, 0)
island.Size = UDim2.fromOffset(CLOSED_W, CLOSED_H)
island.Position = UDim2.new(0.5, 0, 0, TOP)
island.BackgroundColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
island.BackgroundTransparency = transparency
island.BorderSizePixel = 0
island.ClipsDescendants = true
island.ZIndex = 10
island.Parent = gui
Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), island).CornerRadius = UDim.new(0, 24)
local stroke = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
stroke.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
stroke.Transparency = 0.48
stroke.Thickness = 1.2
stroke.Parent = island
local shine = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
shine.Size = UDim2.new(1, -28, 0, 1)
shine.Position = UDim2.fromOffset(14, 1)
shine.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
shine.BackgroundTransparency = 0.65
shine.BorderSizePixel = 0
shine.ZIndex = 11
shine.Parent = island
local dot = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
dot.Size = UDim2.fromOffset(9, 9)
dot.Position = UDim2.fromOffset(15, 16)
dot.BackgroundColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
dot.BorderSizePixel = 0
dot.ZIndex = 12
dot.Parent = island
Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), dot).CornerRadius = UDim.new(1, 0)
local dotGlow = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
dotGlow.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
dotGlow.Transparency = 0.35
dotGlow.Thickness = 2
dotGlow.Parent = dot
local title = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
title.Size = UDim2.new(1, -90, 0, 42)
title.Position = UDim2.fromOffset(36, 0)
title.BackgroundTransparency = 1
title.Text = _clydeDec_xijh4f({29, 18, 21, 9, 14, 9}, 90)
title.TextColor3 = white
title.TextSize = 15
title.Font = Enum.Font.GothamMedium
title.ZIndex = 12
title.Parent = island
local menuButton = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
menuButton.Size = UDim2.fromOffset(42, 42)
menuButton.Position = UDim2.new(1, -45, 0, 0)
menuButton.BackgroundTransparency = 1
menuButton.Text = ""
menuButton.AutoButtonColor = false
menuButton.ZIndex = 30
menuButton.Parent = island
local lines = {}
for i = 1, 3 do
  local line = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  line.Size = UDim2.fromOffset(15, 2)
  line.Position = UDim2.new(0.5, -7, 0, (15 + ((((i - 1)) * 4))))
  line.BackgroundColor3 = white
  line.BorderSizePixel = 0
  line.ZIndex = 31
  line.Parent = menuButton
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), line).CornerRadius = UDim.new(1, 0)
  lines[i] = line
end
local content = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
content.Name = _clydeDec_xijh4f({25, 53, 52, 46, 63, 52, 46}, 90)
content.Size = UDim2.new(1, 0, 1, -48)
content.Position = UDim2.fromOffset(0, 48)
content.BackgroundTransparency = 1
content.ZIndex = 15
content.Parent = island
local header = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
header.Size = UDim2.new(1, -100, 0, 28)
header.Position = UDim2.fromOffset(20, 4)
header.BackgroundTransparency = 1
header.Text = _clydeDec_xijh4f({25, 21, 23, 23, 27, 20, 30, 9}, 90)
header.TextColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
header.TextSize = 13
header.TextXAlignment = Enum.TextXAlignment.Left
header.Font = Enum.Font.GothamMedium
header.ZIndex = 20
header.Parent = content
local backButton = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
backButton.Size = UDim2.fromOffset(70, 28)
backButton.Position = UDim2.new(1, -90, 0, 4)
backButton.BackgroundTransparency = 1
backButton.Text = _clydeDec_xijh4f({24, 59, 57, 49}, 90)
backButton.TextColor3 = Color3.fromRGB(200, 200, 208)
backButton.TextSize = 12
backButton.Font = Enum.Font.GothamMedium
backButton.AutoButtonColor = false
backButton.Visible = false
backButton.ZIndex = 21
backButton.Parent = content
local scroll = Instance.new(_clydeDec_xijh4f({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90))
scroll.Name = _clydeDec_xijh4f({9, 57, 40, 53, 54, 54}, 90)
scroll.Size = UDim2.new(1, -10, 1, -38)
scroll.Position = UDim2.fromOffset(5, 36)
scroll.BackgroundTransparency = 1
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 3
scroll.ScrollBarImageColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
scroll.ScrollBarImageTransparency = 0.35
scroll.ScrollingDirection = Enum.ScrollingDirection.Y
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.ScrollingEnabled = true
scroll.Active = true
scroll.ZIndex = 16
scroll.Parent = content
local scrollPad = Instance.new(_clydeDec_xijh4f({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90), scroll)
scrollPad.PaddingTop = UDim.new(0, 2)
scrollPad.PaddingBottom = UDim.new(0, 8)
scrollPad.PaddingLeft = UDim.new(0, 4)
scrollPad.PaddingRight = UDim.new(0, 4)
local layout = Instance.new(_clydeDec_xijh4f({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90))
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
  local button = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  button.Size = UDim2.new(1, -4, 0, 48)
  button.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  button.BackgroundTransparency = math.clamp((transparency + 0.28), 0, 0.85)
  button.BorderSizePixel = 0
  button.Text = ""
  button.AutoButtonColor = false
  button.LayoutOrder = (#buttons + 1)
  button.ZIndex = 17
  button.Parent = scroll
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), button).CornerRadius = UDim.new(0, 15)
  local bs = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  bs.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  bs.Transparency = 0.78
  bs.Thickness = 1
  bs.Parent = button
  local nameLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
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
  local descLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  descLabel.Size = UDim2.new(1, -55, 0, 17)
  descLabel.Position = UDim2.fromOffset(15, 26)
  descLabel.BackgroundTransparency = 1
  descLabel.Text = (descriptionText or "")
  descLabel.TextColor3 = Color3.fromRGB(190, 193, 200)
  descLabel.TextSize = 10
  descLabel.TextXAlignment = Enum.TextXAlignment.Left
  descLabel.Font = Enum.Font.Gotham
  descLabel.ZIndex = 18
  descLabel.Active = false
  descLabel.Parent = button
  local arrow = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  arrow.Size = UDim2.fromOffset(25, 48)
  arrow.Position = UDim2.new(1, -32, 0, 0)
  arrow.BackgroundTransparency = 1
  arrow.Text = _clydeDec_xijh4f({100}, 90)
  arrow.TextColor3 = white
  arrow.TextSize = 22
  arrow.Font = Enum.Font.Gotham
  arrow.ZIndex = 18
  arrow.Active = false
  arrow.Parent = button
  button.MouseEnter:Connect(function()
    TweenService:Create(button, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((transparency + 0.10), 0, 0.85)}):Play()
  end)
  button.MouseLeave:Connect(function()
    TweenService:Create(button, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((transparency + 0.28), 0, 0.85)}):Play()
  end)
  button.MouseButton1Click:Connect(function()
    if callback then
      callback()
    end
  end)
  table.insert(buttons, button)
  return button
end
local function createToggle(titleText, descriptionText, default, callback)
  local button = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  button.Size = UDim2.new(1, -4, 0, 48)
  button.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  button.BackgroundTransparency = math.clamp((transparency + 0.28), 0, 0.85)
  button.BorderSizePixel = 0
  button.Text = ""
  button.AutoButtonColor = false
  button.LayoutOrder = (#buttons + 1)
  button.ZIndex = 17
  button.Parent = scroll
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), button).CornerRadius = UDim.new(0, 15)
  local bs = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  bs.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  bs.Transparency = 0.78
  bs.Thickness = 1
  bs.Parent = button
  local nameLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
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
  local descLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  descLabel.Size = UDim2.new(1, -75, 0, 17)
  descLabel.Position = UDim2.fromOffset(15, 26)
  descLabel.BackgroundTransparency = 1
  descLabel.Text = (descriptionText or "")
  descLabel.TextColor3 = Color3.fromRGB(190, 193, 200)
  descLabel.TextSize = 10
  descLabel.TextXAlignment = Enum.TextXAlignment.Left
  descLabel.Font = Enum.Font.Gotham
  descLabel.ZIndex = 18
  descLabel.Active = false
  descLabel.Parent = button
  local toggleBg = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  toggleBg.Size = UDim2.new(0, 40, 0, 22)
  toggleBg.Position = UDim2.new(1, -52, 0.5, -11)
  toggleBg.BackgroundColor3 = ((default and _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))
  toggleBg.BorderSizePixel = 0
  toggleBg.ZIndex = 18
  toggleBg.Parent = button
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), toggleBg).CornerRadius = UDim.new(1, 0)
  local toggleCircle = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  toggleCircle.Size = UDim2.new(0, 18, 0, 18)
  toggleCircle.Position = ((default and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  toggleCircle.BackgroundColor3 = white
  toggleCircle.BorderSizePixel = 0
  toggleCircle.ZIndex = 19
  toggleCircle.Parent = toggleBg
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), toggleCircle).CornerRadius = UDim.new(1, 0)
  local state = (default or false)
  local hitArea = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  hitArea.Size = UDim2.new(0, 40, 0, 22)
  hitArea.Position = UDim2.new(1, -52, 0.5, -11)
  hitArea.BackgroundTransparency = 1
  hitArea.Text = ""
  hitArea.AutoButtonColor = false
  hitArea.ZIndex = 20
  hitArea.Parent = button
  hitArea.MouseButton1Click:Connect(function()
    state = not state
    TweenService:Create(toggleBg, TweenInfo.new(0.2), {BackgroundColor3 = ((state and _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    TweenService:Create(toggleCircle, TweenInfo.new(0.2), {Position = ((state and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if callback then
      callback(state)
    end
  end)
  table.insert(buttons, button)
  return button
end
local function createSlider()
  local holder = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  holder.Name = _clydeDec_xijh4f({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35, 9, 54, 51, 62, 63, 40}, 90)
  holder.Size = UDim2.new(1, -28, 0, 70)
  holder.BackgroundTransparency = 1
  holder.LayoutOrder = (#buttons + 1)
  holder.ZIndex = 17
  holder.Parent = scroll
  local sliderLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  sliderLabel.Size = UDim2.new(1, -55, 0, 22)
  sliderLabel.BackgroundTransparency = 1
  sliderLabel.Text = _clydeDec_xijh4f({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90)
  sliderLabel.TextColor3 = white
  sliderLabel.TextSize = 13
  sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
  sliderLabel.Font = Enum.Font.GothamMedium
  sliderLabel.ZIndex = 18
  sliderLabel.Parent = holder
  local valueLabel = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  valueLabel.Size = UDim2.fromOffset(50, 22)
  valueLabel.Position = UDim2.new(1, -50, 0, 0)
  valueLabel.BackgroundTransparency = 1
  valueLabel.TextColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  valueLabel.TextSize = 12
  valueLabel.TextXAlignment = Enum.TextXAlignment.Right
  valueLabel.Font = Enum.Font.GothamMedium
  valueLabel.ZIndex = 18
  valueLabel.Parent = holder
  local track = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  track.Size = UDim2.new(1, 0, 0, 6)
  track.Position = UDim2.fromOffset(0, 36)
  track.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  track.BorderSizePixel = 0
  track.ZIndex = 18
  track.Parent = holder
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), track).CornerRadius = UDim.new(1, 0)
  local fill = Instance.new(_clydeDec_xijh4f({28, 40, 59, 55, 63}, 90))
  fill.Size = UDim2.new(transparency, 0, 1, 0)
  fill.BackgroundColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  fill.BorderSizePixel = 0
  fill.ZIndex = 19
  fill.Parent = track
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), fill).CornerRadius = UDim.new(1, 0)
  local knob = Instance.new(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  knob.Size = UDim2.fromOffset(18, 18)
  knob.AnchorPoint = Vector2.new(0.5, 0.5)
  knob.Position = UDim2.new(transparency, 0, 0.5, 0)
  knob.BackgroundColor3 = white
  knob.BorderSizePixel = 0
  knob.Text = ""
  knob.AutoButtonColor = false
  knob.ZIndex = 20
  knob.Parent = track
  Instance.new(_clydeDec_xijh4f({15, 19, 25, 53, 40, 52, 63, 40}, 90), knob).CornerRadius = UDim.new(1, 0)
  local knobStroke = Instance.new(_clydeDec_xijh4f({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  knobStroke.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  knobStroke.Thickness = 2
  knobStroke.Transparency = 0.15
  knobStroke.Parent = knob
  local dragging = false
  local function update(inputX)
    local left = track.AbsolutePosition.X
    local width = track.AbsoluteSize.X
    if (width <= 0) then
      return
    end
    local percent = math.clamp((((inputX - left)) / width), 0, 1)
    transparency = percent
    fill.Size = UDim2.new(percent, 0, 1, 0)
    knob.Position = UDim2.new(percent, 0, 0.5, 0)
    valueLabel.Text = (math.floor(((percent * 100) + 0.5)) .. _clydeDec_xijh4f({127}, 90))
    island.BackgroundTransparency = transparency
    for _, btn in ipairs(buttons) do
      if btn:IsA(_clydeDec_xijh4f({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90)) then
        btn.BackgroundTransparency = math.clamp((transparency + 0.28), 0, 0.85)
      end
    end
  end
  knob.InputBegan:Connect(function(input)
    if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
      dragging = true
      update(input.Position.X)
    end
  end)
  track.InputBegan:Connect(function(input)
    if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
      dragging = true
      update(input.Position.X)
    end
  end)
  UserInputService.InputChanged:Connect(function(input)
    if (dragging and (((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch)))) then
      update(input.Position.X)
    end
  end)
  UserInputService.InputEnded:Connect(function(input)
    if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
      dragging = false
    end
  end)
  valueLabel.Text = (math.floor(((transparency * 100) + 0.5)) .. _clydeDec_xijh4f({127}, 90))
  table.insert(buttons, holder)
  return holder
end
_G[_clydeDec_xijh4f({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)] = function(theme)
  _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = theme
  island.BackgroundColor3 = theme.Glass
  stroke.Color = theme.Border
  dot.BackgroundColor3 = theme.Accent
  dotGlow.Color = theme.Accent
  header.TextColor3 = theme.Accent
  scroll.ScrollBarImageColor3 = theme.Accent
end
_G[_clydeDec_xijh4f({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)] = function()
  clearList()
  header.Text = _clydeDec_xijh4f({9, 31, 14, 14, 19, 20, 29, 9}, 90)
  backButton.Visible = true
  createSlider()
  for _, theme in pairs(Themes) do
    createButton((_clydeDec_xijh4f({14, 50, 63, 55, 63, 96, 122}, 90) .. theme.Name), _clydeDec_xijh4f({25, 59, 55, 56, 51, 59, 40, 122, 63, 54, 122, 57, 53, 54, 53, 40, 122, 62, 63, 54, 122, 42, 59, 52, 63, 54}, 90), function()
      _G[_clydeDec_xijh4f({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)](theme)
      _G[_clydeDec_xijh4f({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
    end)
  end
  createButton(_clydeDec_xijh4f({8, 63, 41, 63, 46, 122, 27, 42, 42, 63, 59, 40, 59, 52, 57, 63}, 90), _clydeDec_xijh4f({8, 63, 41, 46, 59, 47, 40, 59, 40, 122, 59, 42, 59, 40, 51, 63, 52, 57, 51, 59, 122, 53, 40, 51, 61, 51, 52, 59, 54}, 90), function()
    transparency = 0.10
    _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = Themes.Purple
    island.BackgroundColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
    island.BackgroundTransparency = transparency
    stroke.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
    dot.BackgroundColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    dotGlow.Color = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    header.TextColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    scroll.ScrollBarImageColor3 = _G[_clydeDec_xijh4f({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    _G[_clydeDec_xijh4f({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
  end)
  createToggle(_clydeDec_xijh4f({14, 59, 61, 41, 122, 9, 35, 41, 46, 63, 55}, 90), _clydeDec_xijh4f({23, 53, 41, 46, 40, 59, 40, 122, 46, 59, 61, 41, 122, 41, 53, 56, 40, 63, 122, 48, 47, 61, 59, 62, 53, 40, 63, 41}, 90), tagsEnabled, function(state)
    tagsEnabled = state
    if not state then
      cleanupTags()
    end
  end)
end
local categories = {{name = _clydeDec_xijh4f({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90), description = _clydeDec_xijh4f({18, 63, 40, 40, 59, 55, 51, 63, 52, 46, 59, 41, 122, 62, 63, 54, 122, 41, 63, 40, 44, 51, 62, 53, 40}, 90)}, {name = _clydeDec_xijh4f({12, 51, 41, 47, 59, 54, 41}, 90), description = _clydeDec_xijh4f({21, 42, 57, 51, 53, 52, 63, 41, 122, 44, 51, 41, 47, 59, 54, 63, 41}, 90)}}
local function showCategoryPage(catName)
  clearList()
  header.Text = catName
  backButton.Visible = true
  if (catName == _clydeDec_xijh4f({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90)) then
    createToggle(_clydeDec_xijh4f({27, 52, 46, 51, 122, 12, 25, 122, 24, 59, 52}, 90), _clydeDec_xijh4f({10, 40, 53, 46, 63, 57, 57, 51, 53, 52, 122, 57, 53, 52, 46, 40, 59, 122, 44, 53, 51, 57, 63, 122, 57, 50, 59, 46, 122, 56, 59, 52, 122, 41, 35, 41, 46, 63, 55}, 90), false, function(state)
      if state then
        runCloudScript(_clydeDec_xijh4f({59, 52, 46, 51, 44, 57, 56, 59, 52}, 90))
      end
    end)
    createButton(_clydeDec_xijh4f({10, 59, 52, 63, 54, 122, 29, 15, 19}, 90), _clydeDec_xijh4f({31, 41, 46, 53, 41, 122, 57, 53, 55, 59, 52, 62, 53, 41, 122, 41, 53, 52, 122, 62, 63, 46, 63, 57, 46, 59, 56, 54, 63, 41, 118, 122, 52, 53, 122, 63, 52, 122, 57, 47, 59, 54, 43, 47, 51, 63, 40, 122, 48, 47, 63, 61, 53, 122, 60, 47, 52, 57, 51, 53, 52, 59, 52}, 90), function()
      task.spawn(function()
        local code = game:HttpGet((API_BASE .. _clydeDec_xijh4f({117, 42, 40, 53, 34, 35, 117, 42, 59, 52, 63, 54, 61, 47, 51}, 90)), true)
        if (code and (#code > 50)) then
          loadstring(code)()
        end
      end)
    end)
  elseif (catName == _clydeDec_xijh4f({12, 51, 41, 47, 59, 54, 41}, 90)) then
    createToggle(_clydeDec_xijh4f({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90), _clydeDec_xijh4f({8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 122, 44, 107, 116, 106, 122, 119, 122, 9, 63, 40, 44, 63, 40, 122, 42, 40, 53, 46, 63, 57, 46, 63, 62}, 90), false, function(state)
      if state then
        task.spawn(function()
          local FlowCode = nil
          local methods = {function()
            return game:HttpGet((REANIM_URL .. _clydeDec_xijh4f({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), true)
          end, function()
            local req = ((((((type(request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == _clydeDec_xijh4f({46, 59, 56, 54, 63}, 90)) and (type(http.request) == _clydeDec_xijh4f({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
            if req then
              local ok, res = pcall(function()
                return req({Url = (REANIM_URL .. _clydeDec_xijh4f({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), Method = _clydeDec_xijh4f({29, 31, 14}, 90), Timeout = 15})
              end)
              if (((ok and res) and (res.StatusCode == 200)) and res.Body) then
                return res.Body
              end
            end
            return nil
          end, function()
            return readfile(_clydeDec_xijh4f({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59}, 90))
          end, function()
            return readfile(_clydeDec_xijh4f({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59, 116, 46, 34, 46}, 90))
          end, function()
            return readfile(_clydeDec_xijh4f({61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 54, 47, 59}, 90))
          end}
          for _, method in ipairs(methods) do
            local ok, result = pcall(method)
            if ((ok and result) and (result ~= "")) then
              FlowCode = result
              break
            end
          end
          if (FlowCode and (FlowCode ~= "")) then
            loadstring(FlowCode)()
          else
            warn(_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 122, 28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90))
          end
        end)
      else
        pcall(function()
          if _G._FlowReanimCleanup then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local char = Players.LocalPlayer.Character
          if char then
            for _, v in pairs(char:GetDescendants()) do
              if (v:IsA(_clydeDec_xijh4f({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (v.Name == _clydeDec_xijh4f({28, 59, 49, 63, 8, 53, 53, 46}, 90))) then
                v:Destroy()
              end
              if (v:IsA(_clydeDec_xijh4f({23, 53, 46, 53, 40, 108, 30}, 90)) and (v.Name == _clydeDec_xijh4f({28, 59, 49, 63, 8, 53, 53, 46, 16, 53, 51, 52, 46}, 90))) then
                v:Destroy()
              end
            end
          end
        end)
        pcall(function()
          _G._FlowReanimCleanup = nil
          if (getgenv and getgenv()._FlowReanimCleanup) then
            getgenv()._FlowReanimCleanup = nil
          end
        end)
      end
    end)
    createButton(_clydeDec_xijh4f({27, 51, 55, 56, 53, 46}, 90), _clydeDec_xijh4f({27, 51, 55, 56, 53, 46, 122, 57, 53, 52, 122, 42, 59, 52, 63, 54, 122, 62, 63, 122, 57, 53, 52, 60, 51, 61, 47, 40, 59, 57, 51, 53, 52}, 90), function()
      task.spawn(function()
        local code = game:HttpGet((API_BASE .. _clydeDec_xijh4f({117, 42, 40, 53, 34, 35, 117, 59, 51, 55, 56, 53, 46}, 90)), true)
        if (code and (#code > 50)) then
          loadstring(code)()
        end
      end)
    end)
  end
end
local function showCategories()
  clearList()
  header.Text = _clydeDec_xijh4f({25, 21, 23, 23, 27, 20, 30, 9}, 90)
  backButton.Visible = false
  for _, category in ipairs(categories) do
    createButton(category.name, category.description, function()
      showCategoryPage(category.name)
    end)
  end
  createButton(_clydeDec_xijh4f({9, 63, 46, 46, 51, 52, 61, 41}, 90), _clydeDec_xijh4f({10, 63, 40, 41, 53, 52, 59, 54, 51, 32, 59, 122, 63, 54, 122, 59, 41, 42, 63, 57, 46, 53, 122, 62, 63, 122, 29, 18, 21, 9, 14, 9}, 90), _G[_clydeDec_xijh4f({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)])
end
backButton.MouseButton1Click:Connect(showCategories)
showCategories()
local opened = false
local function openIsland()
  if opened then
    return
  end
  opened = true
  showCategories()
  TweenService:Create(island, openTween, {Size = UDim2.fromOffset(OPEN_W, OPEN_H)}):Play()
  TweenService:Create(title, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  TweenService:Create(lines[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  TweenService:Create(lines[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  TweenService:Create(lines[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function closeIsland()
  if not opened then
    return
  end
  opened = false
  TweenService:Create(island, closeTween, {Size = UDim2.fromOffset(CLOSED_W, CLOSED_H)}):Play()
  TweenService:Create(title, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  TweenService:Create(lines[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  TweenService:Create(lines[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  TweenService:Create(lines[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
menuButton.MouseButton1Click:Connect(function()
  if opened then
    closeIsland()
  else
    openIsland()
  end
end)
task.spawn(function()
  while gui.Parent do
    TweenService:Create(dot, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    TweenService:Create(dot, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
print(_clydeDec_xijh4f({1, 29, 18, 21, 9, 14, 9, 7, 122, 22, 53, 59, 62, 63, 62}, 90))
