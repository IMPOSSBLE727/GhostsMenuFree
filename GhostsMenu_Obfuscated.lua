local a = {}
local g = function(b, c)
  if a[b] then
    return a[b]
  end
  local d = {}
  for e = 1, #b do
    d[e] = string.char(bit32.bxor(b[e], c))
  end
  local f = table.concat(d)
  a[b] = f
  return f
end
local Players = game:GetService(g({10, 54, 59, 35, 63, 40, 41}, 90))
local h = game:GetService(g({14, 45, 63, 63, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local i = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local j = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local k = game:GetService(g({30, 63, 56, 40, 51, 41}, 90))
local l = game:GetService(g({9, 53, 47, 52, 62, 9, 63, 40, 44, 51, 57, 63}, 90))
local m = game:GetService(g({18, 46, 46, 42, 9, 63, 40, 44, 51, 57, 63}, 90))
local n = Players.LocalPlayer
local o = n:WaitForChild(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
local p = g({50, 46, 46, 42, 41, 96, 117, 117, 61, 50, 53, 41, 46, 41, 119, 47, 41, 63, 40, 41, 116, 55, 53, 47, 52, 46, 60, 54, 35, 41, 53, 53, 116, 45, 53, 40, 49, 63, 40, 41, 116, 62, 63, 44}, 90)
local q = g({50, 46, 46, 42, 41, 96, 117, 117, 61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 55, 53, 47, 52, 46, 60, 54, 35, 41, 53, 53, 116, 45, 53, 40, 49, 63, 40, 41, 116, 62, 63, 44}, 90)
for r, s in pairs(o:GetChildren()) do
  if ((s.Name == g({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)) or (s.Name == g({29, 18, 21, 9, 14, 9, 5, 30, 35, 52, 59, 55, 51, 57, 19, 41, 54, 59, 52, 62}, 90))) then
    s:Destroy()
  end
end
local function t(u)
  local v = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if v then
    local w, x = pcall(function()
      return v({Url = u, Method = g({29, 31, 14}, 90), Headers = {[g({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = g({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}})
    end)
    if (((w and x) and (x.StatusCode == 200)) and x.Body) then
      return x.Body
    end
  end
  local y, z = pcall(function()
    return game:HttpGet(u, true)
  end)
  if y then
    return z
  end
  return nil
end
local function aa(ab, ac)
  local ad = m:JSONEncode(ac)
  local ae = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if ae then
    local af, ag = pcall(function()
      return ae({Url = ab, Method = g({10, 21, 9, 14}, 90), Headers = {[g({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = g({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}, Body = ad})
    end)
    if (af and ag) then
      return true
    end
  end
  return false
end
local function ah()
  pcall(function()
    local ai = Instance.new(g({9, 53, 47, 52, 62}, 90))
    ai.SoundId = g({40, 56, 34, 59, 41, 41, 63, 46, 51, 62, 96, 117, 117, 107, 104, 109, 110, 105, 99, 111, 107, 106, 104, 98, 109, 98, 111, 108}, 90)
    ai.Volume = 2
    ai.Parent = l
    ai:Play()
    k:AddItem(ai, 4)
  end)
end
local function aj(ak)
  task.spawn(function()
    print((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 48, 63, 57, 47, 46, 59, 52, 62, 53, 96, 122}, 90) .. ak))
    local al = nil
    local am = {function()
      return game:HttpGet((p .. (g({117, 42, 40, 53, 34, 35, 117}, 90) .. ak)), true)
    end, function()
      return t((p .. (g({117, 42, 40, 53, 34, 35, 117}, 90) .. ak)))
    end}
    for an, ao in ipairs(am) do
      local ap, aq = pcall(ao)
      if ((ap and aq) and (#aq > 50)) then
        al = aq
        break
      end
    end
    if not al then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 96, 122}, 90) .. ak))
      return
    end
    al = al:gsub(g({4, 1, 181, 7, 1, 225, 7, 1, 229, 7}, 90), "")
    al = al:gsub(g({4, 1, 90, 7, 113}, 90), "")
    local ar, as = loadstring(al)
    if not ar then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 54, 53, 59, 62, 41, 46, 40, 51, 52, 61, 122}, 90) .. (ak .. (g({96, 122}, 90) .. tostring(as)))))
      return
    end
    local at, au = pcall(ar)
    if at then
      print((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 9, 57, 40, 51, 42, 46, 122, 63, 48, 63, 57, 47, 46, 59, 62, 53, 96, 122}, 90) .. ak))
    else
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 63, 48, 63, 57, 47, 46, 59, 52, 62, 53, 122}, 90) .. (ak .. (g({96, 122}, 90) .. tostring(au)))))
    end
  end)
end
local av = {Purple = {Name = g({10, 47, 40, 42, 54, 63}, 90), Accent = Color3.fromRGB(175, 105, 255), Border = Color3.fromRGB(150, 155, 165), Glass = Color3.fromRGB(30, 32, 36)}, Blue = {Name = g({24, 54, 47, 63}, 90), Accent = Color3.fromRGB(80, 160, 255), Border = Color3.fromRGB(125, 170, 220), Glass = Color3.fromRGB(27, 32, 40)}, Red = {Name = g({8, 63, 62}, 90), Accent = Color3.fromRGB(255, 90, 105), Border = Color3.fromRGB(220, 130, 140), Glass = Color3.fromRGB(38, 28, 31)}, Green = {Name = g({29, 40, 63, 63, 52}, 90), Accent = Color3.fromRGB(80, 220, 145), Border = Color3.fromRGB(125, 190, 155), Glass = Color3.fromRGB(27, 36, 32)}, White = {Name = g({13, 50, 51, 46, 63}, 90), Accent = Color3.fromRGB(235, 235, 240), Border = Color3.fromRGB(210, 210, 220), Glass = Color3.fromRGB(34, 34, 37)}}
_G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = av.Purple
local aw = 0.10
local ax = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local ay = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local az = Instance.new(g({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90))
az.Name = g({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)
az.ResetOnSpawn = false
az.IgnoreGuiInset = true
az.Parent = o
if (syn and syn.protect_gui) then
  pcall(syn.protect_gui, az)
end
local ba, bb = 180, 42
local bc, bd = 350, 380
local be = 14
local bf = Color3.fromRGB(245, 245, 248)
local bg = Instance.new(g({28, 40, 59, 55, 63}, 90))
bg.Name = g({19, 41, 54, 59, 52, 62}, 90)
bg.AnchorPoint = Vector2.new(0.5, 0)
bg.Size = UDim2.fromOffset(ba, bb)
bg.Position = UDim2.new(0.5, 0, 0, be)
bg.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
bg.BackgroundTransparency = aw
bg.BorderSizePixel = 0
bg.ClipsDescendants = true
bg.ZIndex = 10
bg.Parent = az
Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), bg).CornerRadius = UDim.new(0, 24)
local bh = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
bh.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
bh.Transparency = 0.48
bh.Thickness = 1.2
bh.Parent = bg
local bi = Instance.new(g({28, 40, 59, 55, 63}, 90))
bi.Size = UDim2.new(1, -28, 0, 1)
bi.Position = UDim2.fromOffset(14, 1)
bi.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
bi.BackgroundTransparency = 0.65
bi.BorderSizePixel = 0
bi.ZIndex = 11
bi.Parent = bg
local bj = Instance.new(g({28, 40, 59, 55, 63}, 90))
bj.Size = UDim2.fromOffset(9, 9)
bj.Position = UDim2.fromOffset(15, 16)
bj.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bj.BorderSizePixel = 0
bj.ZIndex = 12
bj.Parent = bg
Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), bj).CornerRadius = UDim.new(1, 0)
local bk = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
bk.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bk.Transparency = 0.35
bk.Thickness = 2
bk.Parent = bj
local bl = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
bl.Size = UDim2.new(1, -90, 0, 42)
bl.Position = UDim2.fromOffset(36, 0)
bl.BackgroundTransparency = 1
bl.Text = g({29, 18, 21, 9, 14, 9}, 90)
bl.TextColor3 = bf
bl.TextSize = 15
bl.Font = Enum.Font.GothamMedium
bl.ZIndex = 12
bl.Parent = bg
local bm = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
bm.Size = UDim2.fromOffset(42, 42)
bm.Position = UDim2.new(1, -45, 0, 0)
bm.BackgroundTransparency = 1
bm.Text = ""
bm.AutoButtonColor = false
bm.ZIndex = 30
bm.Parent = bg
local bn = {}
for bo = 1, 3 do
  local bp = Instance.new(g({28, 40, 59, 55, 63}, 90))
  bp.Size = UDim2.fromOffset(15, 2)
  bp.Position = UDim2.new(0.5, -7, 0, (15 + ((((bo - 1)) * 4))))
  bp.BackgroundColor3 = bf
  bp.BorderSizePixel = 0
  bp.ZIndex = 31
  bp.Parent = bm
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), bp).CornerRadius = UDim.new(1, 0)
  bn[bo] = bp
end
local bq = Instance.new(g({28, 40, 59, 55, 63}, 90))
bq.Name = g({25, 53, 52, 46, 63, 52, 46}, 90)
bq.Size = UDim2.new(1, 0, 1, -48)
bq.Position = UDim2.fromOffset(0, 48)
bq.BackgroundTransparency = 1
bq.ZIndex = 15
bq.Parent = bg
local br = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
br.Size = UDim2.new(1, -100, 0, 28)
br.Position = UDim2.fromOffset(20, 4)
br.BackgroundTransparency = 1
br.Text = g({25, 21, 23, 23, 27, 20, 30, 9}, 90)
br.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
br.TextSize = 13
br.TextXAlignment = Enum.TextXAlignment.Left
br.Font = Enum.Font.GothamMedium
br.ZIndex = 20
br.Parent = bq
local bs = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
bs.Size = UDim2.fromOffset(70, 28)
bs.Position = UDim2.new(1, -90, 0, 4)
bs.BackgroundTransparency = 1
bs.Text = g({24, 59, 57, 49}, 90)
bs.TextColor3 = Color3.fromRGB(200, 200, 208)
bs.TextSize = 12
bs.Font = Enum.Font.GothamMedium
bs.AutoButtonColor = false
bs.Visible = false
bs.ZIndex = 21
bs.Parent = bq
local bt = Instance.new(g({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90))
bt.Name = g({9, 57, 40, 53, 54, 54}, 90)
bt.Size = UDim2.new(1, -10, 1, -38)
bt.Position = UDim2.fromOffset(5, 36)
bt.BackgroundTransparency = 1
bt.BorderSizePixel = 0
bt.ScrollBarThickness = 3
bt.ScrollBarImageColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bt.ScrollBarImageTransparency = 0.35
bt.ScrollingDirection = Enum.ScrollingDirection.Y
bt.AutomaticCanvasSize = Enum.AutomaticSize.Y
bt.ScrollingEnabled = true
bt.Active = true
bt.ZIndex = 16
bt.Parent = bq
local bu = Instance.new(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90), bt)
bu.PaddingTop = UDim.new(0, 2)
bu.PaddingBottom = UDim.new(0, 8)
bu.PaddingLeft = UDim.new(0, 4)
bu.PaddingRight = UDim.new(0, 4)
local bv = Instance.new(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90))
bv.Padding = UDim.new(0, 6)
bv.SortOrder = Enum.SortOrder.LayoutOrder
bv.Parent = bt
local bw = {}
local function bx()
  for by, bz in ipairs(bw) do
    bz:Destroy()
  end
  table.clear(bw)
  bt.CanvasPosition = Vector2.zero
end
local function ca(cb, cc, cd)
  local ce = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  ce.Size = UDim2.new(1, -4, 0, 48)
  ce.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  ce.BackgroundTransparency = math.clamp((aw + 0.28), 0, 0.85)
  ce.BorderSizePixel = 0
  ce.Text = ""
  ce.AutoButtonColor = false
  ce.LayoutOrder = (#bw + 1)
  ce.ZIndex = 17
  ce.Parent = bt
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), ce).CornerRadius = UDim.new(0, 15)
  local cf = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  cf.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  cf.Transparency = 0.78
  cf.Thickness = 1
  cf.Parent = ce
  local cg = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cg.Size = UDim2.new(1, -55, 0, 21)
  cg.Position = UDim2.fromOffset(15, 5)
  cg.BackgroundTransparency = 1
  cg.Text = cb
  cg.TextColor3 = bf
  cg.TextSize = 14
  cg.TextXAlignment = Enum.TextXAlignment.Left
  cg.Font = Enum.Font.GothamMedium
  cg.ZIndex = 18
  cg.Active = false
  cg.Parent = ce
  local ch = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ch.Size = UDim2.new(1, -55, 0, 17)
  ch.Position = UDim2.fromOffset(15, 26)
  ch.BackgroundTransparency = 1
  ch.Text = (cc or "")
  ch.TextColor3 = Color3.fromRGB(190, 193, 200)
  ch.TextSize = 10
  ch.TextXAlignment = Enum.TextXAlignment.Left
  ch.Font = Enum.Font.Gotham
  ch.ZIndex = 18
  ch.Active = false
  ch.Parent = ce
  local ci = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ci.Size = UDim2.fromOffset(25, 48)
  ci.Position = UDim2.new(1, -32, 0, 0)
  ci.BackgroundTransparency = 1
  ci.Text = g({100}, 90)
  ci.TextColor3 = bf
  ci.TextSize = 22
  ci.Font = Enum.Font.Gotham
  ci.ZIndex = 18
  ci.Active = false
  ci.Parent = ce
  ce.MouseEnter:Connect(function()
    h:Create(ce, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((aw + 0.10), 0, 0.85)}):Play()
  end)
  ce.MouseLeave:Connect(function()
    h:Create(ce, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((aw + 0.28), 0, 0.85)}):Play()
  end)
  ce.MouseButton1Click:Connect(function()
    if cd then
      cd()
    end
  end)
  table.insert(bw, ce)
  return ce
end
local function cj(ck, cl, cm, cn)
  local co = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  co.Size = UDim2.new(1, -4, 0, 48)
  co.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  co.BackgroundTransparency = math.clamp((aw + 0.28), 0, 0.85)
  co.BorderSizePixel = 0
  co.Text = ""
  co.AutoButtonColor = false
  co.LayoutOrder = (#bw + 1)
  co.ZIndex = 17
  co.Parent = bt
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), co).CornerRadius = UDim.new(0, 15)
  local cp = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  cp.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  cp.Transparency = 0.78
  cp.Thickness = 1
  cp.Parent = co
  local cq = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cq.Size = UDim2.new(1, -75, 0, 21)
  cq.Position = UDim2.fromOffset(15, 5)
  cq.BackgroundTransparency = 1
  cq.Text = ck
  cq.TextColor3 = bf
  cq.TextSize = 14
  cq.TextXAlignment = Enum.TextXAlignment.Left
  cq.Font = Enum.Font.GothamMedium
  cq.ZIndex = 18
  cq.Active = false
  cq.Parent = co
  local cr = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cr.Size = UDim2.new(1, -75, 0, 17)
  cr.Position = UDim2.fromOffset(15, 26)
  cr.BackgroundTransparency = 1
  cr.Text = (cl or "")
  cr.TextColor3 = Color3.fromRGB(190, 193, 200)
  cr.TextSize = 10
  cr.TextXAlignment = Enum.TextXAlignment.Left
  cr.Font = Enum.Font.Gotham
  cr.ZIndex = 18
  cr.Active = false
  cr.Parent = co
  local cs = Instance.new(g({28, 40, 59, 55, 63}, 90))
  cs.Size = UDim2.new(0, 40, 0, 22)
  cs.Position = UDim2.new(1, -52, 0.5, -11)
  cs.BackgroundColor3 = ((cm and _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))
  cs.BorderSizePixel = 0
  cs.ZIndex = 18
  cs.Parent = co
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), cs).CornerRadius = UDim.new(1, 0)
  local ct = Instance.new(g({28, 40, 59, 55, 63}, 90))
  ct.Size = UDim2.new(0, 18, 0, 18)
  ct.Position = ((cm and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  ct.BackgroundColor3 = bf
  ct.BorderSizePixel = 0
  ct.ZIndex = 19
  ct.Parent = cs
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), ct).CornerRadius = UDim.new(1, 0)
  local cu = (cm or false)
  local cv = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  cv.Size = UDim2.new(0, 40, 0, 22)
  cv.Position = UDim2.new(1, -52, 0.5, -11)
  cv.BackgroundTransparency = 1
  cv.Text = ""
  cv.AutoButtonColor = false
  cv.ZIndex = 20
  cv.Parent = co
  cv.MouseButton1Click:Connect(function()
    cu = not cu
    h:Create(cs, TweenInfo.new(0.2), {BackgroundColor3 = ((cu and _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    h:Create(ct, TweenInfo.new(0.2), {Position = ((cu and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if cn then
      cn(cu)
    end
  end)
  table.insert(bw, co)
  return co
end
local function cw()
  local cx = Instance.new(g({28, 40, 59, 55, 63}, 90))
  cx.Name = g({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35, 9, 54, 51, 62, 63, 40}, 90)
  cx.Size = UDim2.new(1, -28, 0, 70)
  cx.BackgroundTransparency = 1
  cx.LayoutOrder = (#bw + 1)
  cx.ZIndex = 17
  cx.Parent = bt
  local cy = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cy.Size = UDim2.new(1, -55, 0, 22)
  cy.BackgroundTransparency = 1
  cy.Text = g({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90)
  cy.TextColor3 = bf
  cy.TextSize = 13
  cy.TextXAlignment = Enum.TextXAlignment.Left
  cy.Font = Enum.Font.GothamMedium
  cy.ZIndex = 18
  cy.Parent = cx
  local cz = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cz.Size = UDim2.fromOffset(50, 22)
  cz.Position = UDim2.new(1, -50, 0, 0)
  cz.BackgroundTransparency = 1
  cz.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  cz.TextSize = 12
  cz.TextXAlignment = Enum.TextXAlignment.Right
  cz.Font = Enum.Font.GothamMedium
  cz.ZIndex = 18
  cz.Parent = cx
  local da = Instance.new(g({28, 40, 59, 55, 63}, 90))
  da.Size = UDim2.new(1, 0, 0, 6)
  da.Position = UDim2.fromOffset(0, 36)
  da.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  da.BorderSizePixel = 0
  da.ZIndex = 18
  da.Parent = cx
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), da).CornerRadius = UDim.new(1, 0)
  local db = Instance.new(g({28, 40, 59, 55, 63}, 90))
  db.Size = UDim2.new(aw, 0, 1, 0)
  db.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  db.BorderSizePixel = 0
  db.ZIndex = 19
  db.Parent = da
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), db).CornerRadius = UDim.new(1, 0)
  local dc = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  dc.Size = UDim2.fromOffset(18, 18)
  dc.AnchorPoint = Vector2.new(0.5, 0.5)
  dc.Position = UDim2.new(aw, 0, 0.5, 0)
  dc.BackgroundColor3 = bf
  dc.BorderSizePixel = 0
  dc.Text = ""
  dc.AutoButtonColor = false
  dc.ZIndex = 20
  dc.Parent = da
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), dc).CornerRadius = UDim.new(1, 0)
  local dd = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  dd.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  dd.Thickness = 2
  dd.Transparency = 0.15
  dd.Parent = dc
  local de = false
  local function df(dg)
    local dh = da.AbsolutePosition.X
    local di = da.AbsoluteSize.X
    if (di <= 0) then
      return
    end
    local dj = math.clamp((((dg - dh)) / di), 0, 1)
    aw = dj
    db.Size = UDim2.new(dj, 0, 1, 0)
    dc.Position = UDim2.new(dj, 0, 0.5, 0)
    cz.Text = (math.floor(((dj * 100) + 0.5)) .. g({127}, 90))
    bg.BackgroundTransparency = aw
    for dk, dl in ipairs(bw) do
      if dl:IsA(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90)) then
        dl.BackgroundTransparency = math.clamp((aw + 0.28), 0, 0.85)
      end
    end
  end
  dc.InputBegan:Connect(function(dm)
    if ((dm.UserInputType == Enum.UserInputType.MouseButton1) or (dm.UserInputType == Enum.UserInputType.Touch)) then
      de = true
      df(dm.Position.X)
    end
  end)
  da.InputBegan:Connect(function(dn)
    if ((dn.UserInputType == Enum.UserInputType.MouseButton1) or (dn.UserInputType == Enum.UserInputType.Touch)) then
      de = true
      df(dn.Position.X)
    end
  end)
  i.InputChanged:Connect(function(dp)
    if (de and (((dp.UserInputType == Enum.UserInputType.MouseMovement) or (dp.UserInputType == Enum.UserInputType.Touch)))) then
      df(dp.Position.X)
    end
  end)
  i.InputEnded:Connect(function(dq)
    if ((dq.UserInputType == Enum.UserInputType.MouseButton1) or (dq.UserInputType == Enum.UserInputType.Touch)) then
      de = false
    end
  end)
  cz.Text = (math.floor(((aw * 100) + 0.5)) .. g({127}, 90))
  table.insert(bw, cx)
  return cx
end
_G[g({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)] = function(dr)
  _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = dr
  bg.BackgroundColor3 = dr.Glass
  bh.Color = dr.Border
  bj.BackgroundColor3 = dr.Accent
  bk.Color = dr.Accent
  br.TextColor3 = dr.Accent
  bt.ScrollBarImageColor3 = dr.Accent
end
_G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)] = function()
  bx()
  br.Text = g({9, 31, 14, 14, 19, 20, 29, 9}, 90)
  bs.Visible = true
  cw()
  for ds, dt in pairs(av) do
    ca((g({14, 50, 63, 55, 63, 96, 122}, 90) .. dt.Name), g({25, 59, 55, 56, 51, 59, 40, 122, 63, 54, 122, 57, 53, 54, 53, 40, 122, 62, 63, 54, 122, 42, 59, 52, 63, 54}, 90), function()
      _G[g({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)](dt)
      _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
    end)
  end
  ca(g({8, 63, 41, 63, 46, 122, 27, 42, 42, 63, 59, 40, 59, 52, 57, 63}, 90), g({8, 63, 41, 46, 59, 47, 40, 59, 40, 122, 59, 42, 59, 40, 51, 63, 52, 57, 51, 59, 122, 53, 40, 51, 61, 51, 52, 59, 54}, 90), function()
    aw = 0.10
    _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = av.Purple
    bg.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
    bg.BackgroundTransparency = aw
    bh.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
    bj.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    bk.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    br.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    bt.ScrollBarImageColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
  end)
end
local du = {{name = g({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90), description = g({18, 63, 40, 40, 59, 55, 51, 63, 52, 46, 59, 41, 122, 62, 63, 54, 122, 41, 63, 40, 44, 51, 62, 53, 40}, 90)}, {name = g({12, 51, 41, 47, 59, 54, 41}, 90), description = g({21, 42, 57, 51, 53, 52, 63, 41, 122, 44, 51, 41, 47, 59, 54, 63, 41}, 90)}}
local function dv(dw)
  bx()
  br.Text = dw
  bs.Visible = true
  if (dw == g({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90)) then
    cj(g({27, 52, 46, 51, 122, 12, 25, 122, 24, 59, 52}, 90), g({10, 40, 53, 46, 63, 57, 57, 51, 53, 52, 122, 57, 53, 52, 46, 40, 59, 122, 44, 53, 51, 57, 63, 122, 57, 50, 59, 46, 122, 56, 59, 52, 122, 41, 35, 41, 46, 63, 55}, 90), false, function(dx)
      if dx then
        aj(g({59, 52, 46, 51, 44, 57, 56, 59, 52}, 90))
      end
    end)
    ca(g({10, 59, 52, 63, 54, 122, 29, 15, 19}, 90), g({31, 41, 46, 53, 41, 122, 57, 53, 55, 59, 52, 62, 53, 41, 122, 41, 53, 52, 122, 62, 63, 46, 63, 57, 46, 59, 56, 54, 63, 41, 118, 122, 52, 53, 122, 63, 52, 122, 57, 47, 59, 54, 43, 47, 51, 63, 40, 122, 48, 47, 63, 61, 53, 122, 60, 47, 52, 57, 51, 53, 52, 59, 52}, 90), function()
      task.spawn(function()
        local dy = game:HttpGet((p .. g({117, 42, 40, 53, 34, 35, 117, 42, 59, 52, 63, 54, 61, 47, 51}, 90)), true)
        if (dy and (#dy > 50)) then
          loadstring(dy)()
        end
      end)
    end)
  elseif (dw == g({12, 51, 41, 47, 59, 54, 41}, 90)) then
    cj(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90), g({8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 122, 44, 107, 116, 106, 122, 119, 122, 9, 63, 40, 44, 63, 40, 122, 42, 40, 53, 46, 63, 57, 46, 63, 62}, 90), false, function(dz)
      if dz then
        task.spawn(function()
          local ea = nil
          local ee = {function()
            return game:HttpGet((q .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), true)
          end, function()
            local eb = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
            if eb then
              local ec, ed = pcall(function()
                return eb({Url = (q .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), Method = g({29, 31, 14}, 90), Timeout = 15})
              end)
              if (((ec and ed) and (ed.StatusCode == 200)) and ed.Body) then
                return ed.Body
              end
            end
            return nil
          end, function()
            return readfile(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59}, 90))
          end, function()
            return readfile(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59, 116, 46, 34, 46}, 90))
          end, function()
            return readfile(g({61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 54, 47, 59}, 90))
          end}
          for ef, eg in ipairs(ee) do
            local eh, ei = pcall(eg)
            if ((eh and ei) and (ei ~= "")) then
              ea = ei
              break
            end
          end
          if (ea and (ea ~= "")) then
            loadstring(ea)()
          else
            warn(g({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 122, 28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90))
          end
        end)
      else
        pcall(function()
          if _G._FlowReanimCleanup then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local ej = Players.LocalPlayer.Character
          if ej then
            for ek, el in pairs(ej:GetDescendants()) do
              if (el:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (el.Name == g({28, 59, 49, 63, 8, 53, 53, 46}, 90))) then
                el:Destroy()
              end
              if (el:IsA(g({23, 53, 46, 53, 40, 108, 30}, 90)) and (el.Name == g({28, 59, 49, 63, 8, 53, 53, 46, 16, 53, 51, 52, 46}, 90))) then
                el:Destroy()
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
    ca(g({27, 51, 55, 56, 53, 46}, 90), g({27, 51, 55, 56, 53, 46, 122, 57, 53, 52, 122, 42, 59, 52, 63, 54, 122, 62, 63, 122, 57, 53, 52, 60, 51, 61, 47, 40, 59, 57, 51, 53, 52}, 90), function()
      task.spawn(function()
        local em = game:HttpGet((p .. g({117, 42, 40, 53, 34, 35, 117, 59, 51, 55, 56, 53, 46}, 90)), true)
        if (em and (#em > 50)) then
          loadstring(em)()
        end
      end)
    end)
  end
end
local function en()
  bx()
  br.Text = g({25, 21, 23, 23, 27, 20, 30, 9}, 90)
  bs.Visible = false
  for eo, ep in ipairs(du) do
    ca(ep.name, ep.description, function()
      dv(ep.name)
    end)
  end
  ca(g({9, 63, 46, 46, 51, 52, 61, 41}, 90), g({10, 63, 40, 41, 53, 52, 59, 54, 51, 32, 59, 122, 63, 54, 122, 59, 41, 42, 63, 57, 46, 53, 122, 62, 63, 122, 29, 18, 21, 9, 14, 9}, 90), _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)])
end
bs.MouseButton1Click:Connect(en)
en()
local eq = false
local function er()
  if eq then
    return
  end
  eq = true
  en()
  h:Create(bg, ax, {Size = UDim2.fromOffset(bc, bd)}):Play()
  h:Create(bl, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  h:Create(bn[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  h:Create(bn[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  h:Create(bn[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function es()
  if not eq then
    return
  end
  eq = false
  h:Create(bg, ay, {Size = UDim2.fromOffset(ba, bb)}):Play()
  h:Create(bl, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  h:Create(bn[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  h:Create(bn[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  h:Create(bn[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bm.MouseButton1Click:Connect(function()
  if eq then
    es()
  else
    er()
  end
end)
task.spawn(function()
  while az.Parent do
    h:Create(bj, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    h:Create(bj, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
print(g({1, 29, 18, 21, 9, 14, 9, 7, 122, 22, 53, 59, 62, 63, 62}, 90))
