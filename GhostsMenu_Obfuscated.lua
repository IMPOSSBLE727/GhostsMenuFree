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
      return game:HttpGet((p .. (g({117, 40, 59, 45, 117}, 90) .. ak)), true)
    end, function()
      return game:HttpGet((p .. (g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. ak)))
    end, function()
      return t((p .. (g({117, 40, 59, 45, 117}, 90) .. ak)))
    end, function()
      return t((p .. (g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. ak)))
    end}
    for an, ao in ipairs(am) do
      local ap, aq = pcall(ao)
      if ((ap and aq) and (#aq > 50)) then
        if (an >= 3) then
          local ar, as = pcall(function()
            return m:JSONDecode(aq)
          end)
          if ((ar and as) and as.code) then
            al = as.code
          end
        else
          al = aq
        end
        if al then
          break
        end
      end
    end
    if not al then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 96, 122}, 90) .. ak))
      return
    end
    al = al:gsub(g({4, 1, 181, 7, 1, 225, 7, 1, 229, 7}, 90), "")
    al = al:gsub(g({4, 1, 90, 7, 113}, 90), "")
    local at, au = loadstring(al)
    if not at then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 54, 53, 59, 62, 41, 46, 40, 51, 52, 61, 122}, 90) .. (ak .. (g({96, 122}, 90) .. tostring(au)))))
      return
    end
    local av, aw = pcall(at)
    if av then
      print((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 9, 57, 40, 51, 42, 46, 122, 63, 48, 63, 57, 47, 46, 59, 62, 53, 96, 122}, 90) .. ak))
    else
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 63, 48, 63, 57, 47, 46, 59, 52, 62, 53, 122}, 90) .. (ak .. (g({96, 122}, 90) .. tostring(aw)))))
    end
  end)
end
local ax = {Purple = {Name = g({10, 47, 40, 42, 54, 63}, 90), Accent = Color3.fromRGB(175, 105, 255), Border = Color3.fromRGB(150, 155, 165), Glass = Color3.fromRGB(30, 32, 36)}, Blue = {Name = g({24, 54, 47, 63}, 90), Accent = Color3.fromRGB(80, 160, 255), Border = Color3.fromRGB(125, 170, 220), Glass = Color3.fromRGB(27, 32, 40)}, Red = {Name = g({8, 63, 62}, 90), Accent = Color3.fromRGB(255, 90, 105), Border = Color3.fromRGB(220, 130, 140), Glass = Color3.fromRGB(38, 28, 31)}, Green = {Name = g({29, 40, 63, 63, 52}, 90), Accent = Color3.fromRGB(80, 220, 145), Border = Color3.fromRGB(125, 190, 155), Glass = Color3.fromRGB(27, 36, 32)}, White = {Name = g({13, 50, 51, 46, 63}, 90), Accent = Color3.fromRGB(235, 235, 240), Border = Color3.fromRGB(210, 210, 220), Glass = Color3.fromRGB(34, 34, 37)}}
_G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = ax.Purple
local ay = 0.10
local az = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local ba = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local bb = Instance.new(g({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90))
bb.Name = g({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)
bb.ResetOnSpawn = false
bb.IgnoreGuiInset = true
bb.Parent = o
if (syn and syn.protect_gui) then
  pcall(syn.protect_gui, bb)
end
local bc, bd = 180, 42
local be, bf = 350, 380
local bg = 14
local bh = Color3.fromRGB(245, 245, 248)
local bi = Instance.new(g({28, 40, 59, 55, 63}, 90))
bi.Name = g({19, 41, 54, 59, 52, 62}, 90)
bi.AnchorPoint = Vector2.new(0.5, 0)
bi.Size = UDim2.fromOffset(bc, bd)
bi.Position = UDim2.new(0.5, 0, 0, bg)
bi.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
bi.BackgroundTransparency = ay
bi.BorderSizePixel = 0
bi.ClipsDescendants = true
bi.ZIndex = 10
bi.Parent = bb
Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), bi).CornerRadius = UDim.new(0, 24)
local bj = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
bj.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
bj.Transparency = 0.48
bj.Thickness = 1.2
bj.Parent = bi
local bk = Instance.new(g({28, 40, 59, 55, 63}, 90))
bk.Size = UDim2.new(1, -28, 0, 1)
bk.Position = UDim2.fromOffset(14, 1)
bk.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
bk.BackgroundTransparency = 0.65
bk.BorderSizePixel = 0
bk.ZIndex = 11
bk.Parent = bi
local bl = Instance.new(g({28, 40, 59, 55, 63}, 90))
bl.Size = UDim2.fromOffset(9, 9)
bl.Position = UDim2.fromOffset(15, 16)
bl.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bl.BorderSizePixel = 0
bl.ZIndex = 12
bl.Parent = bi
Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), bl).CornerRadius = UDim.new(1, 0)
local bm = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
bm.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bm.Transparency = 0.35
bm.Thickness = 2
bm.Parent = bl
local bn = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
bn.Size = UDim2.new(1, -90, 0, 42)
bn.Position = UDim2.fromOffset(36, 0)
bn.BackgroundTransparency = 1
bn.Text = g({29, 18, 21, 9, 14, 9}, 90)
bn.TextColor3 = bh
bn.TextSize = 15
bn.Font = Enum.Font.GothamMedium
bn.ZIndex = 12
bn.Parent = bi
local bo = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
bo.Size = UDim2.fromOffset(42, 42)
bo.Position = UDim2.new(1, -45, 0, 0)
bo.BackgroundTransparency = 1
bo.Text = ""
bo.AutoButtonColor = false
bo.ZIndex = 30
bo.Parent = bi
local bp = {}
for bq = 1, 3 do
  local br = Instance.new(g({28, 40, 59, 55, 63}, 90))
  br.Size = UDim2.fromOffset(15, 2)
  br.Position = UDim2.new(0.5, -7, 0, (15 + ((((bq - 1)) * 4))))
  br.BackgroundColor3 = bh
  br.BorderSizePixel = 0
  br.ZIndex = 31
  br.Parent = bo
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), br).CornerRadius = UDim.new(1, 0)
  bp[bq] = br
end
local bs = Instance.new(g({28, 40, 59, 55, 63}, 90))
bs.Name = g({25, 53, 52, 46, 63, 52, 46}, 90)
bs.Size = UDim2.new(1, 0, 1, -48)
bs.Position = UDim2.fromOffset(0, 48)
bs.BackgroundTransparency = 1
bs.ZIndex = 15
bs.Parent = bi
local bt = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
bt.Size = UDim2.new(1, -100, 0, 28)
bt.Position = UDim2.fromOffset(20, 4)
bt.BackgroundTransparency = 1
bt.Text = g({25, 21, 23, 23, 27, 20, 30, 9}, 90)
bt.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bt.TextSize = 13
bt.TextXAlignment = Enum.TextXAlignment.Left
bt.Font = Enum.Font.GothamMedium
bt.ZIndex = 20
bt.Parent = bs
local bu = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
bu.Size = UDim2.fromOffset(70, 28)
bu.Position = UDim2.new(1, -90, 0, 4)
bu.BackgroundTransparency = 1
bu.Text = g({24, 59, 57, 49}, 90)
bu.TextColor3 = Color3.fromRGB(200, 200, 208)
bu.TextSize = 12
bu.Font = Enum.Font.GothamMedium
bu.AutoButtonColor = false
bu.Visible = false
bu.ZIndex = 21
bu.Parent = bs
local bv = Instance.new(g({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90))
bv.Name = g({9, 57, 40, 53, 54, 54}, 90)
bv.Size = UDim2.new(1, -10, 1, -38)
bv.Position = UDim2.fromOffset(5, 36)
bv.BackgroundTransparency = 1
bv.BorderSizePixel = 0
bv.ScrollBarThickness = 3
bv.ScrollBarImageColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
bv.ScrollBarImageTransparency = 0.35
bv.ScrollingDirection = Enum.ScrollingDirection.Y
bv.AutomaticCanvasSize = Enum.AutomaticSize.Y
bv.ScrollingEnabled = true
bv.Active = true
bv.ZIndex = 16
bv.Parent = bs
local bw = Instance.new(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90), bv)
bw.PaddingTop = UDim.new(0, 2)
bw.PaddingBottom = UDim.new(0, 8)
bw.PaddingLeft = UDim.new(0, 4)
bw.PaddingRight = UDim.new(0, 4)
local bx = Instance.new(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90))
bx.Padding = UDim.new(0, 6)
bx.SortOrder = Enum.SortOrder.LayoutOrder
bx.Parent = bv
local by = {}
local function bz()
  for ca, cb in ipairs(by) do
    cb:Destroy()
  end
  table.clear(by)
  bv.CanvasPosition = Vector2.zero
end
local function cc(cd, ce, cf)
  local cg = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  cg.Size = UDim2.new(1, -4, 0, 48)
  cg.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  cg.BackgroundTransparency = math.clamp((ay + 0.28), 0, 0.85)
  cg.BorderSizePixel = 0
  cg.Text = ""
  cg.AutoButtonColor = false
  cg.LayoutOrder = (#by + 1)
  cg.ZIndex = 17
  cg.Parent = bv
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), cg).CornerRadius = UDim.new(0, 15)
  local ch = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  ch.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  ch.Transparency = 0.78
  ch.Thickness = 1
  ch.Parent = cg
  local ci = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ci.Size = UDim2.new(1, -55, 0, 21)
  ci.Position = UDim2.fromOffset(15, 5)
  ci.BackgroundTransparency = 1
  ci.Text = cd
  ci.TextColor3 = bh
  ci.TextSize = 14
  ci.TextXAlignment = Enum.TextXAlignment.Left
  ci.Font = Enum.Font.GothamMedium
  ci.ZIndex = 18
  ci.Active = false
  ci.Parent = cg
  local cj = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cj.Size = UDim2.new(1, -55, 0, 17)
  cj.Position = UDim2.fromOffset(15, 26)
  cj.BackgroundTransparency = 1
  cj.Text = (ce or "")
  cj.TextColor3 = Color3.fromRGB(190, 193, 200)
  cj.TextSize = 10
  cj.TextXAlignment = Enum.TextXAlignment.Left
  cj.Font = Enum.Font.Gotham
  cj.ZIndex = 18
  cj.Active = false
  cj.Parent = cg
  local ck = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ck.Size = UDim2.fromOffset(25, 48)
  ck.Position = UDim2.new(1, -32, 0, 0)
  ck.BackgroundTransparency = 1
  ck.Text = g({100}, 90)
  ck.TextColor3 = bh
  ck.TextSize = 22
  ck.Font = Enum.Font.Gotham
  ck.ZIndex = 18
  ck.Active = false
  ck.Parent = cg
  cg.MouseEnter:Connect(function()
    h:Create(cg, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((ay + 0.10), 0, 0.85)}):Play()
  end)
  cg.MouseLeave:Connect(function()
    h:Create(cg, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((ay + 0.28), 0, 0.85)}):Play()
  end)
  cg.MouseButton1Click:Connect(function()
    if cf then
      cf()
    end
  end)
  table.insert(by, cg)
  return cg
end
local function cl(cm, cn, co, cp)
  local cq = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  cq.Size = UDim2.new(1, -4, 0, 48)
  cq.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  cq.BackgroundTransparency = math.clamp((ay + 0.28), 0, 0.85)
  cq.BorderSizePixel = 0
  cq.Text = ""
  cq.AutoButtonColor = false
  cq.LayoutOrder = (#by + 1)
  cq.ZIndex = 17
  cq.Parent = bv
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), cq).CornerRadius = UDim.new(0, 15)
  local cr = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  cr.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
  cr.Transparency = 0.78
  cr.Thickness = 1
  cr.Parent = cq
  local cs = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cs.Size = UDim2.new(1, -75, 0, 21)
  cs.Position = UDim2.fromOffset(15, 5)
  cs.BackgroundTransparency = 1
  cs.Text = cm
  cs.TextColor3 = bh
  cs.TextSize = 14
  cs.TextXAlignment = Enum.TextXAlignment.Left
  cs.Font = Enum.Font.GothamMedium
  cs.ZIndex = 18
  cs.Active = false
  cs.Parent = cq
  local ct = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ct.Size = UDim2.new(1, -75, 0, 17)
  ct.Position = UDim2.fromOffset(15, 26)
  ct.BackgroundTransparency = 1
  ct.Text = (cn or "")
  ct.TextColor3 = Color3.fromRGB(190, 193, 200)
  ct.TextSize = 10
  ct.TextXAlignment = Enum.TextXAlignment.Left
  ct.Font = Enum.Font.Gotham
  ct.ZIndex = 18
  ct.Active = false
  ct.Parent = cq
  local cu = Instance.new(g({28, 40, 59, 55, 63}, 90))
  cu.Size = UDim2.new(0, 40, 0, 22)
  cu.Position = UDim2.new(1, -52, 0.5, -11)
  cu.BackgroundColor3 = ((co and _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))
  cu.BorderSizePixel = 0
  cu.ZIndex = 18
  cu.Parent = cq
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), cu).CornerRadius = UDim.new(1, 0)
  local cv = Instance.new(g({28, 40, 59, 55, 63}, 90))
  cv.Size = UDim2.new(0, 18, 0, 18)
  cv.Position = ((co and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  cv.BackgroundColor3 = bh
  cv.BorderSizePixel = 0
  cv.ZIndex = 19
  cv.Parent = cu
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), cv).CornerRadius = UDim.new(1, 0)
  local cw = (co or false)
  local cx = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  cx.Size = UDim2.new(0, 40, 0, 22)
  cx.Position = UDim2.new(1, -52, 0.5, -11)
  cx.BackgroundTransparency = 1
  cx.Text = ""
  cx.AutoButtonColor = false
  cx.ZIndex = 20
  cx.Parent = cq
  cx.MouseButton1Click:Connect(function()
    cw = not cw
    h:Create(cu, TweenInfo.new(0.2), {BackgroundColor3 = ((cw and _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    h:Create(cv, TweenInfo.new(0.2), {Position = ((cw and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if cp then
      cp(cw)
    end
  end)
  table.insert(by, cq)
  return cq
end
local function cy()
  local cz = Instance.new(g({28, 40, 59, 55, 63}, 90))
  cz.Name = g({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35, 9, 54, 51, 62, 63, 40}, 90)
  cz.Size = UDim2.new(1, -28, 0, 70)
  cz.BackgroundTransparency = 1
  cz.LayoutOrder = (#by + 1)
  cz.ZIndex = 17
  cz.Parent = bv
  local da = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  da.Size = UDim2.new(1, -55, 0, 22)
  da.BackgroundTransparency = 1
  da.Text = g({14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90)
  da.TextColor3 = bh
  da.TextSize = 13
  da.TextXAlignment = Enum.TextXAlignment.Left
  da.Font = Enum.Font.GothamMedium
  da.ZIndex = 18
  da.Parent = cz
  local db = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  db.Size = UDim2.fromOffset(50, 22)
  db.Position = UDim2.new(1, -50, 0, 0)
  db.BackgroundTransparency = 1
  db.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  db.TextSize = 12
  db.TextXAlignment = Enum.TextXAlignment.Right
  db.Font = Enum.Font.GothamMedium
  db.ZIndex = 18
  db.Parent = cz
  local dc = Instance.new(g({28, 40, 59, 55, 63}, 90))
  dc.Size = UDim2.new(1, 0, 0, 6)
  dc.Position = UDim2.fromOffset(0, 36)
  dc.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  dc.BorderSizePixel = 0
  dc.ZIndex = 18
  dc.Parent = cz
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), dc).CornerRadius = UDim.new(1, 0)
  local dd = Instance.new(g({28, 40, 59, 55, 63}, 90))
  dd.Size = UDim2.new(ay, 0, 1, 0)
  dd.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  dd.BorderSizePixel = 0
  dd.ZIndex = 19
  dd.Parent = dc
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), dd).CornerRadius = UDim.new(1, 0)
  local de = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  de.Size = UDim2.fromOffset(18, 18)
  de.AnchorPoint = Vector2.new(0.5, 0.5)
  de.Position = UDim2.new(ay, 0, 0.5, 0)
  de.BackgroundColor3 = bh
  de.BorderSizePixel = 0
  de.Text = ""
  de.AutoButtonColor = false
  de.ZIndex = 20
  de.Parent = dc
  Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), de).CornerRadius = UDim.new(1, 0)
  local df = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  df.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
  df.Thickness = 2
  df.Transparency = 0.15
  df.Parent = de
  local dg = false
  local function dh(di)
    local dj = dc.AbsolutePosition.X
    local dk = dc.AbsoluteSize.X
    if (dk <= 0) then
      return
    end
    local dl = math.clamp((((di - dj)) / dk), 0, 1)
    ay = dl
    dd.Size = UDim2.new(dl, 0, 1, 0)
    de.Position = UDim2.new(dl, 0, 0.5, 0)
    db.Text = (math.floor(((dl * 100) + 0.5)) .. g({127}, 90))
    bi.BackgroundTransparency = ay
    for dm, dn in ipairs(by) do
      if dn:IsA(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90)) then
        dn.BackgroundTransparency = math.clamp((ay + 0.28), 0, 0.85)
      end
    end
  end
  de.InputBegan:Connect(function(dp)
    if ((dp.UserInputType == Enum.UserInputType.MouseButton1) or (dp.UserInputType == Enum.UserInputType.Touch)) then
      dg = true
      dh(dp.Position.X)
    end
  end)
  dc.InputBegan:Connect(function(dq)
    if ((dq.UserInputType == Enum.UserInputType.MouseButton1) or (dq.UserInputType == Enum.UserInputType.Touch)) then
      dg = true
      dh(dq.Position.X)
    end
  end)
  i.InputChanged:Connect(function(dr)
    if (dg and (((dr.UserInputType == Enum.UserInputType.MouseMovement) or (dr.UserInputType == Enum.UserInputType.Touch)))) then
      dh(dr.Position.X)
    end
  end)
  i.InputEnded:Connect(function(ds)
    if ((ds.UserInputType == Enum.UserInputType.MouseButton1) or (ds.UserInputType == Enum.UserInputType.Touch)) then
      dg = false
    end
  end)
  db.Text = (math.floor(((ay * 100) + 0.5)) .. g({127}, 90))
  table.insert(by, cz)
  return cz
end
_G[g({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)] = function(dt)
  _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = dt
  bi.BackgroundColor3 = dt.Glass
  bj.Color = dt.Border
  bl.BackgroundColor3 = dt.Accent
  bm.Color = dt.Accent
  bt.TextColor3 = dt.Accent
  bv.ScrollBarImageColor3 = dt.Accent
end
_G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)] = function()
  bz()
  bt.Text = g({9, 31, 14, 14, 19, 20, 29, 9}, 90)
  bu.Visible = true
  cy()
  for du, dv in pairs(ax) do
    cc((g({14, 50, 63, 55, 63, 96, 122}, 90) .. dv.Name), g({25, 59, 55, 56, 51, 59, 40, 122, 63, 54, 122, 57, 53, 54, 53, 40, 122, 62, 63, 54, 122, 42, 59, 52, 63, 54}, 90), function()
      _G[g({59, 42, 42, 54, 35, 14, 50, 63, 55, 63}, 90)](dv)
      _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
    end)
  end
  cc(g({8, 63, 41, 63, 46, 122, 27, 42, 42, 63, 59, 40, 59, 52, 57, 63}, 90), g({8, 63, 41, 46, 59, 47, 40, 59, 40, 122, 59, 42, 59, 40, 51, 63, 52, 57, 51, 59, 122, 53, 40, 51, 61, 51, 52, 59, 54}, 90), function()
    ay = 0.10
    _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)] = ax.Purple
    bi.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Glass
    bi.BackgroundTransparency = ay
    bj.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Border
    bl.BackgroundColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    bm.Color = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    bt.TextColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    bv.ScrollBarImageColor3 = _G[g({57, 47, 40, 40, 63, 52, 46, 14, 50, 63, 55, 63}, 90)].Accent
    _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)]()
  end)
end
local dw = {{name = g({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90), description = g({18, 63, 40, 40, 59, 55, 51, 63, 52, 46, 59, 41, 122, 62, 63, 54, 122, 41, 63, 40, 44, 51, 62, 53, 40}, 90)}, {name = g({12, 51, 41, 47, 59, 54, 41}, 90), description = g({21, 42, 57, 51, 53, 52, 63, 41, 122, 44, 51, 41, 47, 59, 54, 63, 41}, 90)}}
local function dx(dy)
  bz()
  bt.Text = dy
  bu.Visible = true
  if (dy == g({9, 63, 40, 44, 63, 40, 122, 27, 62, 55, 51, 52}, 90)) then
    cl(g({27, 52, 46, 51, 122, 12, 25, 122, 24, 59, 52}, 90), g({10, 40, 53, 46, 63, 57, 57, 51, 53, 52, 122, 57, 53, 52, 46, 40, 59, 122, 44, 53, 51, 57, 63, 122, 57, 50, 59, 46, 122, 56, 59, 52, 122, 41, 35, 41, 46, 63, 55}, 90), false, function(dz)
      if dz then
        aj(g({59, 52, 46, 51, 44, 57, 56, 59, 52}, 90))
      end
    end)
  elseif (dy == g({12, 51, 41, 47, 59, 54, 41}, 90)) then
    cl(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90), g({8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 122, 44, 107, 116, 106, 122, 119, 122, 9, 63, 40, 44, 63, 40, 122, 42, 40, 53, 46, 63, 57, 46, 63, 62}, 90), false, function(ea)
      if ea then
        task.spawn(function()
          local eb = nil
          local ef = {function()
            return game:HttpGet((q .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), true)
          end, function()
            local ec = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
            if ec then
              local ed, ee = pcall(function()
                return ec({Url = (q .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), Method = g({29, 31, 14}, 90), Timeout = 15})
              end)
              if (((ed and ee) and (ee.StatusCode == 200)) and ee.Body) then
                return ee.Body
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
          for eg, eh in ipairs(ef) do
            local ei, ej = pcall(eh)
            if ((ei and ej) and (ej ~= "")) then
              eb = ej
              break
            end
          end
          if (eb and (eb ~= "")) then
            loadstring(eb)()
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
          local ek = Players.LocalPlayer.Character
          if ek then
            for el, em in pairs(ek:GetDescendants()) do
              if (em:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (em.Name == g({28, 59, 49, 63, 8, 53, 53, 46}, 90))) then
                em:Destroy()
              end
              if (em:IsA(g({23, 53, 46, 53, 40, 108, 30}, 90)) and (em.Name == g({28, 59, 49, 63, 8, 53, 53, 46, 16, 53, 51, 52, 46}, 90))) then
                em:Destroy()
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
  end
end
local function en()
  bz()
  bt.Text = g({25, 21, 23, 23, 27, 20, 30, 9}, 90)
  bu.Visible = false
  for eo, ep in ipairs(dw) do
    cc(ep.name, ep.description, function()
      dx(ep.name)
    end)
  end
  cc(g({9, 63, 46, 46, 51, 52, 61, 41}, 90), g({10, 63, 40, 41, 53, 52, 59, 54, 51, 32, 59, 122, 63, 54, 122, 59, 41, 42, 63, 57, 46, 53, 122, 62, 63, 122, 29, 18, 21, 9, 14, 9}, 90), _G[g({41, 50, 53, 45, 9, 63, 46, 46, 51, 52, 61, 41}, 90)])
end
bu.MouseButton1Click:Connect(en)
en()
local eq = false
local function er()
  if eq then
    return
  end
  eq = true
  en()
  h:Create(bi, az, {Size = UDim2.fromOffset(be, bf)}):Play()
  h:Create(bn, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  h:Create(bp[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  h:Create(bp[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  h:Create(bp[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function es()
  if not eq then
    return
  end
  eq = false
  h:Create(bi, ba, {Size = UDim2.fromOffset(bc, bd)}):Play()
  h:Create(bn, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  h:Create(bp[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  h:Create(bp[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  h:Create(bp[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bo.MouseButton1Click:Connect(function()
  if eq then
    es()
  else
    er()
  end
end)
task.spawn(function()
  while bb.Parent do
    h:Create(bl, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    h:Create(bl, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
print(g({1, 29, 18, 21, 9, 14, 9, 7, 122, 22, 53, 59, 62, 63, 62}, 90))
