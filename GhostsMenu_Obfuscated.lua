local a = {}
local g = function(b, c)
  if (((1 + 1) == 2) and a[b]) then
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
local q = 30
local r = 5
for s, t in pairs(o:GetChildren()) do
  if (((15 * 15) == 225) and (t.Name == g({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90))) then
    t:Destroy()
  end
end
local u = {}
local function v(w)
  table.insert(u, w)
  return w
end
local function x(y, z)
  local aa = Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90))
  aa.CornerRadius = UDim.new(0, z)
  aa.Parent = y
end
local function ab(ac, ad, ae, af)
  local ag = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90))
  ag.Color = (ae or Color3.fromRGB(255, 255, 255))
  ag.Thickness = (af or 1)
  ag.Transparency = (ad or 0.8)
  ag.Parent = ac
end
local function ah(ai)
  local aj = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if (((100 % 7) == 2) and aj) then
    local ak, al = pcall(function()
      return aj({Url = ai, Method = g({29, 31, 14}, 90), Headers = {[g({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = g({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}})
    end)
    if (((12 * 12) == 144) and (((ak and al) and (al.StatusCode == 200)) and al.Body)) then
      return al.Body
    end
  end
  local am, an = pcall(function()
    return game:HttpGet(ai, true)
  end)
  if (((3 ^ 2) == 9) and am) then
    return an
  end
  return nil
end
local function ao(ap, aq)
  local ar = m:JSONEncode(aq)
  local as = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
  if (((7 * 7) == 49) and as) then
    local at, au = pcall(function()
      return as({Url = ap, Method = g({10, 21, 9, 14}, 90), Headers = {[g({25, 53, 52, 46, 63, 52, 46, 119, 14, 35, 42, 63}, 90)] = g({59, 42, 42, 54, 51, 57, 59, 46, 51, 53, 52, 117, 48, 41, 53, 52}, 90)}, Body = ar})
    end)
    if (((1 + 1) == 2) and (at and au)) then
      return true
    end
  end
  return false
end
local function av()
  pcall(function()
    local aw = Instance.new(g({9, 53, 47, 52, 62}, 90))
    aw.SoundId = g({40, 56, 34, 59, 41, 41, 63, 46, 51, 62, 96, 117, 117, 107, 104, 109, 110, 105, 99, 111, 107, 106, 104, 98, 109, 98, 111, 108}, 90)
    aw.Volume = 2
    aw.Parent = l
    aw:Play()
    k:AddItem(aw, 4)
  end)
end
local ax = {bg = Color3.fromRGB(18, 18, 24), sidebar = Color3.fromRGB(22, 22, 30), card = Color3.fromRGB(30, 30, 40), cardHover = Color3.fromRGB(36, 36, 48), accent = Color3.fromRGB(99, 102, 241), green = Color3.fromRGB(34, 197, 94), yellow = Color3.fromRGB(234, 179, 8), red = Color3.fromRGB(239, 68, 68), text = Color3.fromRGB(240, 240, 245), textDim = Color3.fromRGB(120, 120, 140), textMuted = Color3.fromRGB(80, 80, 100), border = Color3.fromRGB(45, 45, 58), toggleOff = Color3.fromRGB(55, 55, 68)}
local ay = Instance.new(g({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90))
ay.Name = g({29, 50, 53, 41, 46, 41, 23, 63, 52, 47}, 90)
ay.ResetOnSpawn = false
ay.IgnoreGuiInset = true
ay.DisplayOrder = 100
ay.Parent = o
if (((15 * 15) == 225) and (syn and syn.protect_gui)) then
  pcall(syn.protect_gui, ay)
end
local az = Instance.new(g({28, 40, 59, 55, 63}, 90))
az.Name = g({23, 59, 51, 52}, 90)
az.Size = UDim2.new(0, 340, 0, 260)
az.Position = UDim2.new(0.5, -170, 0.5, -130)
az.BackgroundColor3 = ax.bg
az.BackgroundTransparency = 0.05
az.BorderSizePixel = 0
az.ClipsDescendants = true
az.Visible = false
az.Parent = ay
x(az, 10)
ab(az, 0.7, ax.border, 1)
local ba = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
ba.Name = g({25, 54, 53, 41, 63, 24, 46, 52}, 90)
ba.Size = UDim2.new(0, 20, 0, 20)
ba.Position = UDim2.new(1, -24, 0, 4)
ba.BackgroundColor3 = ax.card
ba.BackgroundTransparency = 0.7
ba.Text = g({2}, 90)
ba.TextColor3 = ax.textDim
ba.TextSize = 10
ba.Font = Enum.Font.GothamBold
ba.Parent = az
x(ba, 4)
v(ba.MouseButton1Click:Connect(function()
  az.Visible = false
end))
v(ba.MouseEnter:Connect(function()
  h:Create(ba, TweenInfo.new(0.15), {BackgroundTransparency = 0.4, TextColor3 = ax.text}):Play()
end))
v(ba.MouseLeave:Connect(function()
  h:Create(ba, TweenInfo.new(0.15), {BackgroundTransparency = 0.7, TextColor3 = ax.textDim}):Play()
end))
local bb = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
bb.Name = g({8, 63, 41, 51, 32, 63, 27, 40, 63, 59}, 90)
bb.Size = UDim2.new(0, 50, 0, 50)
bb.Position = UDim2.new(1, -50, 1, -50)
bb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bb.BackgroundTransparency = 1
bb.Text = ""
bb.AutoButtonColor = false
bb.Parent = az
local bc = Instance.new(g({28, 40, 59, 55, 63}, 90))
bc.Size = UDim2.new(0, 20, 0, 2)
bc.Position = UDim2.new(1, -22, 1, -4)
bc.BackgroundColor3 = ax.textMuted
bc.BackgroundTransparency = 0.3
bc.BorderSizePixel = 0
bc.Parent = bb
local bd = Instance.new(g({28, 40, 59, 55, 63}, 90))
bd.Size = UDim2.new(0, 2, 0, 20)
bd.Position = UDim2.new(1, -4, 1, -22)
bd.BackgroundColor3 = ax.textMuted
bd.BackgroundTransparency = 0.3
bd.BorderSizePixel = 0
bd.Parent = bb
local be, bf, bg = false, nil, nil
v(bb.InputBegan:Connect(function(bh)
  if (((100 % 7) == 2) and ((bh.UserInputType == Enum.UserInputType.MouseButton1) or (bh.UserInputType == Enum.UserInputType.Touch))) then
    be = true
    bf = bh.Position
    bg = az.Size
  end
end))
v(i.InputEnded:Connect(function(bi)
  if (((12 * 12) == 144) and ((bi.UserInputType == Enum.UserInputType.MouseButton1) or (bi.UserInputType == Enum.UserInputType.Touch))) then
    be = false
  end
end))
v(i.InputChanged:Connect(function(bj)
  if (((3 ^ 2) == 9) and (be and (((bj.UserInputType == Enum.UserInputType.MouseMovement) or (bj.UserInputType == Enum.UserInputType.Touch))))) then
    local bk = (bj.Position - bf)
    az.Size = UDim2.new(0, math.clamp((bg.X.Offset + bk.X), 200, 800), 0, math.clamp((bg.Y.Offset + bk.Y), 150, 600))
  end
end))
local bl = Instance.new(g({28, 40, 59, 55, 63}, 90))
bl.Name = g({9, 51, 62, 63, 56, 59, 40}, 90)
bl.Size = UDim2.new(0, 90, 1, 0)
bl.Position = UDim2.new(0, 0, 0, 0)
bl.BackgroundColor3 = ax.sidebar
bl.BackgroundTransparency = 0.1
bl.BorderSizePixel = 0
bl.ClipsDescendants = true
bl.Parent = az
x(bl, 10)
local bm = Instance.new(g({28, 40, 59, 55, 63}, 90))
bm.Size = UDim2.new(0, 8, 1, 0)
bm.Position = UDim2.new(1, -8, 0, 0)
bm.BackgroundColor3 = ax.sidebar
bm.BackgroundTransparency = 0.1
bm.BorderSizePixel = 0
bm.Parent = bl
local bn = Instance.new(g({28, 40, 59, 55, 63}, 90))
bn.Size = UDim2.new(1, -10, 0, 36)
bn.Position = UDim2.new(0, 5, 0, 6)
bn.BackgroundTransparency = 1
bn.Parent = bl
local bo = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
bo.Size = UDim2.new(1, 0, 0, 14)
bo.Position = UDim2.new(0, 0, 0, 4)
bo.BackgroundTransparency = 1
bo.Text = g({29, 18, 21, 9, 14, 9}, 90)
bo.TextColor3 = ax.text
bo.TextSize = 12
bo.Font = Enum.Font.GothamBlack
bo.TextXAlignment = Enum.TextXAlignment.Left
bo.Parent = bn
local bp = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
bp.Size = UDim2.new(1, 0, 0, 10)
bp.Position = UDim2.new(0, 0, 0, 18)
bp.BackgroundTransparency = 1
bp.Text = g({44, 107, 116, 106, 122, 28, 8, 31, 31}, 90)
bp.TextColor3 = ax.textMuted
bp.TextSize = 7
bp.Font = Enum.Font.Gotham
bp.TextXAlignment = Enum.TextXAlignment.Left
bp.Parent = bn
local bq = Instance.new(g({28, 40, 59, 55, 63}, 90))
bq.Size = UDim2.new(1, -10, 0, 22)
bq.Position = UDim2.new(0, 5, 0, 44)
bq.BackgroundColor3 = ax.card
bq.BackgroundTransparency = 0.3
bq.BorderSizePixel = 0
bq.Parent = bl
x(bq, 6)
local br = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
br.Size = UDim2.new(0, 16, 1, 0)
br.Position = UDim2.new(0, 4, 0, 0)
br.BackgroundTransparency = 1
br.Text = g({11}, 90)
br.TextColor3 = ax.textMuted
br.TextSize = 9
br.Font = Enum.Font.Code
br.Parent = bq
local bs = Instance.new(g({14, 63, 34, 46, 24, 53, 34}, 90))
bs.Size = UDim2.new(1, -26, 1, 0)
bs.Position = UDim2.new(0, 22, 0, 0)
bs.BackgroundTransparency = 1
bs.Text = ""
bs.PlaceholderText = g({9, 63, 59, 40, 57, 50, 116, 116, 116}, 90)
bs.PlaceholderColor3 = ax.textMuted
bs.TextColor3 = ax.text
bs.TextSize = 9
bs.Font = Enum.Font.Gotham
bs.TextXAlignment = Enum.TextXAlignment.Left
bs.ClearTextOnFocus = false
bs.Parent = bq
local bt = {{name = g({54, 63, 61, 51, 46}, 90), icon = g({100}, 90), label = g({22, 63, 61, 51, 46}, 90)}, {name = g({41, 63, 55, 51, 40, 59, 61, 63}, 90), icon = g({113}, 90), label = g({9, 63, 55, 51, 119, 8, 59, 61, 63}, 90)}, {name = g({44, 51, 41, 47, 59, 54, 41}, 90), icon = g({112}, 90), label = g({12, 51, 41, 47, 59, 54, 41}, 90)}, {name = g({41, 53, 57, 51, 59, 54, 41}, 90), icon = g({124}, 90), label = g({9, 53, 57, 51, 59, 54, 41}, 90)}, {name = g({46, 50, 63, 55, 63, 41}, 90), icon = g({127}, 90), label = g({14, 50, 63, 55, 63, 41}, 90)}, {name = g({41, 63, 46, 46, 51, 52, 61, 41}, 90), icon = g({123}, 90), label = g({9, 63, 46, 46, 51, 52, 61, 41}, 90)}}
local bu = {}
local bv = nil
for bw, bx in ipairs(bt) do
  local by = (70 + ((((bw - 1)) * 20)))
  local bz = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  bz.Name = bx.name
  bz.Size = UDim2.new(1, -6, 0, 18)
  bz.Position = UDim2.new(0, 3, 0, by)
  bz.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
  bz.BackgroundTransparency = 1
  bz.Text = ""
  bz.AutoButtonColor = false
  bz.Parent = bl
  x(bz, 4)
  local ca = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ca.Name = g({19, 57, 53, 52}, 90)
  ca.Size = UDim2.new(0, 16, 1, 0)
  ca.Position = UDim2.new(0, 4, 0, 0)
  ca.BackgroundTransparency = 1
  ca.Text = bx.icon
  ca.TextColor3 = ax.textDim
  ca.TextSize = 10
  ca.Font = Enum.Font.Code
  ca.Parent = bz
  local cb = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  cb.Name = g({22, 59, 56, 63, 54}, 90)
  cb.Size = UDim2.new(1, -24, 1, 0)
  cb.Position = UDim2.new(0, 20, 0, 0)
  cb.BackgroundTransparency = 1
  cb.Text = bx.label
  cb.TextColor3 = ax.textDim
  cb.TextSize = 9
  cb.Font = Enum.Font.GothamBold
  cb.TextXAlignment = Enum.TextXAlignment.Left
  cb.Parent = bz
  v(bz.MouseEnter:Connect(function()
    if (((7 * 7) == 49) and (bv ~= bx.name)) then
      bz.BackgroundTransparency = 0.85
    end
  end))
  v(bz.MouseLeave:Connect(function()
    if (((1 + 1) == 2) and (bv ~= bx.name)) then
      bz.BackgroundTransparency = 1
    end
  end))
  bu[bx.name] = bz
end
local cc = {legit = {title = g({22, 63, 61, 51, 46}, 90), desc = g({9, 55, 53, 53, 46, 50, 122, 124, 122, 47, 52, 62, 63, 46, 63, 57, 46, 59, 56, 54, 63}, 90), features = {}}, semirage = {title = g({9, 63, 55, 51, 119, 8, 59, 61, 63}, 90), desc = g({27, 61, 61, 40, 63, 41, 41, 51, 44, 63, 122, 54, 63, 61, 51, 46, 122, 46, 53, 53, 54, 41}, 90), features = {{name = g({27, 52, 46, 51, 122, 12, 25, 122, 24, 59, 52}, 90), desc = g({10, 40, 53, 46, 63, 57, 57, 51, 53, 52, 122, 57, 53, 52, 46, 40, 59, 122, 44, 53, 51, 57, 63, 122, 57, 50, 59, 46, 122, 56, 59, 52, 122, 41, 35, 41, 46, 63, 55}, 90), tags = {g({20359, 25342}, 90)}, default = false, action = g({46, 53, 61, 61, 54, 63, 53, 52, 54, 35}, 90), scriptKey = g({59, 52, 46, 51, 44, 57, 56, 59, 52}, 90)}}}, visuals = {title = g({12, 51, 41, 47, 59, 54, 41}, 90), desc = g({9, 63, 63, 122, 55, 53, 40, 63, 118, 122, 62, 63, 46, 63, 57, 46, 122, 54, 63, 41, 41}, 90), features = {{name = g({8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90), desc = g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 122, 44, 107, 116, 106, 122, 119, 122, 9, 63, 40, 44, 63, 40, 122, 42, 40, 53, 46, 63, 57, 46, 63, 62}, 90), tags = {g({28, 54, 53, 45}, 90)}, default = false, action = g({40, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90)}}}, socials = {title = g({9, 53, 57, 51, 59, 54, 41}, 90), desc = g({16, 53, 51, 52, 122, 53, 47, 40, 122, 57, 53, 55, 55, 47, 52, 51, 46, 51, 63, 41}, 90), features = {}}, themes = {title = g({14, 50, 63, 55, 63, 41}, 90), desc = g({25, 50, 53, 53, 41, 63, 122, 35, 53, 47, 40, 122, 54, 53, 53, 49}, 90), features = {}}, settings = {title = g({9, 63, 46, 46, 51, 52, 61, 41}, 90), desc = g({25, 47, 41, 46, 53, 55, 51, 32, 63, 122, 35, 53, 47, 40, 122, 57, 54, 51, 63, 52, 46}, 90), features = {}}}
local function cd(ce)
  task.spawn(function()
    print((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 48, 63, 57, 47, 46, 59, 52, 62, 53, 96, 122}, 90) .. ce))
    local cf = nil
    local cg = {function()
      return game:HttpGet((p .. (g({117, 40, 59, 45, 117}, 90) .. ce)), true)
    end, function()
      return game:HttpGet((p .. (g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. ce)))
    end, function()
      return ah((p .. (g({117, 40, 59, 45, 117}, 90) .. ce)))
    end, function()
      return ah((p .. (g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46, 41, 117}, 90) .. ce)))
    end}
    for ch, ci in ipairs(cg) do
      local cj, ck = pcall(ci)
      if (((15 * 15) == 225) and ((cj and ck) and (#ck > 50))) then
        if (((100 % 7) == 2) and (ch >= 3)) then
          local cl, cm = pcall(function()
            return m:JSONDecode(ck)
          end)
          if (((12 * 12) == 144) and ((cl and cm) and cm.code)) then
            cf = cm.code
          end
        else
          cf = ck
        end
        if (((3 ^ 2) == 9) and cf) then
          break
        end
      end
    end
    if (((7 * 7) == 49) and not cf) then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 20, 53, 122, 41, 63, 122, 42, 47, 62, 53, 122, 53, 56, 46, 63, 52, 63, 40, 96, 122}, 90) .. ce))
      return
    end
    cf = cf:gsub(g({4, 1, 181, 7, 1, 225, 7, 1, 229, 7}, 90), "")
    cf = cf:gsub(g({4, 1, 90, 7, 113}, 90), "")
    local cn, co = loadstring(cf)
    if (((1 + 1) == 2) and not cn) then
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 54, 53, 59, 62, 41, 46, 40, 51, 52, 61, 122}, 90) .. (ce .. (g({96, 122}, 90) .. tostring(co)))))
      return
    end
    local cp, cq = pcall(cn)
    if (((15 * 15) == 225) and cp) then
      print((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 9, 57, 40, 51, 42, 46, 122, 63, 48, 63, 57, 47, 46, 59, 62, 53, 96, 122}, 90) .. ce))
    else
      warn((g({1, 29, 18, 21, 9, 14, 9, 7, 122, 31, 40, 40, 53, 40, 122, 63, 48, 63, 57, 47, 46, 59, 52, 62, 53, 122}, 90) .. (ce .. (g({96, 122}, 90) .. tostring(cq)))))
    end
  end)
end
local function cr(cs)
  local ct = cs:lower()
  if (((100 % 7) == 2) and (ct == "")) then
    for cu, cv in pairs(bu) do
      cv.Visible = true
    end
    return
  end
  local cw = nil
  for cx, cy in pairs(bu) do
    local cz = cy:FindFirstChild(g({22, 59, 56, 63, 54}, 90))
    local da = (cz and cz.Text:lower():find(ct, 1, true))
    local db = cc[cx]
    local dc = false
    if (((12 * 12) == 144) and (db and db.features)) then
      for dd, de in ipairs(db.features) do
        if (((3 ^ 2) == 9) and (de.name:lower():find(ct, 1, true) or de.desc:lower():find(ct, 1, true))) then
          dc = true
          break
        end
      end
    end
    if (((7 * 7) == 49) and (da or dc)) then
      cy.Visible = true
      if (((1 + 1) == 2) and not cw) then
        cw = cx
      end
    else
      cy.Visible = false
    end
  end
  if (((15 * 15) == 225) and (cw and (bv ~= cw))) then
    selectCategory(cw)
  end
end
v(bs:GetPropertyChangedSignal(g({14, 63, 34, 46}, 90)):Connect(function()
  cr(bs.Text)
end))
local df = Instance.new(g({28, 40, 59, 55, 63}, 90))
df.Name = g({25, 53, 52, 46, 63, 52, 46}, 90)
df.Size = UDim2.new(1, -96, 1, -8)
df.Position = UDim2.new(0, 94, 0, 4)
df.BackgroundTransparency = 1
df.ClipsDescendants = true
df.Parent = az
local dg = Instance.new(g({28, 40, 59, 55, 63}, 90))
dg.Name = g({18, 63, 59, 62, 63, 40}, 90)
dg.Size = UDim2.new(1, 0, 0, 28)
dg.BackgroundTransparency = 1
dg.Parent = df
local dh = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
dh.Name = g({14, 51, 46, 54, 63}, 90)
dh.Size = UDim2.new(1, -40, 0, 14)
dh.Position = UDim2.new(0, 0, 0, 0)
dh.BackgroundTransparency = 1
dh.Text = g({22, 63, 61, 51, 46}, 90)
dh.TextColor3 = ax.text
dh.TextSize = 14
dh.Font = Enum.Font.GothamBlack
dh.TextXAlignment = Enum.TextXAlignment.Left
dh.Parent = dg
local di = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
di.Name = g({30, 63, 41, 57}, 90)
di.Size = UDim2.new(1, -40, 0, 10)
di.Position = UDim2.new(0, 0, 0, 14)
di.BackgroundTransparency = 1
di.Text = g({9, 55, 53, 53, 46, 50, 122, 124, 122, 47, 52, 62, 63, 46, 63, 57, 46, 59, 56, 54, 63}, 90)
di.TextColor3 = ax.textDim
di.TextSize = 8
di.Font = Enum.Font.Gotham
di.TextXAlignment = Enum.TextXAlignment.Left
di.Parent = dg
local dj = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
dj.Name = g({25, 53, 47, 52, 46}, 90)
dj.Size = UDim2.new(0, 40, 0, 10)
dj.Position = UDim2.new(1, -68, 0, 8)
dj.BackgroundTransparency = 1
dj.Text = g({106, 122, 59, 57, 46, 51, 44, 63}, 90)
dj.TextColor3 = ax.textMuted
dj.TextSize = 7
dj.Font = Enum.Font.Gotham
dj.TextXAlignment = Enum.TextXAlignment.Right
dj.Parent = az
local dk = Instance.new(g({28, 40, 59, 55, 63}, 90))
dk.Size = UDim2.new(1, 0, 0, 1)
dk.Position = UDim2.new(0, 0, 1, -2)
dk.BackgroundColor3 = ax.border
dk.BackgroundTransparency = 0.5
dk.BorderSizePixel = 0
dk.Parent = dg
local dl = Instance.new(g({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90))
dl.Name = g({28, 63, 59, 46, 47, 40, 63, 41}, 90)
dl.Size = UDim2.new(1, 0, 1, -34)
dl.Position = UDim2.new(0, 0, 0, 30)
dl.BackgroundTransparency = 1
dl.BorderSizePixel = 0
dl.ScrollBarThickness = 2
dl.ScrollBarImageColor3 = ax.accent
dl.CanvasSize = UDim2.new(0, 0, 0, 0)
dl.AutomaticCanvasSize = Enum.AutomaticSize.Y
dl.ClipsDescendants = true
dl.Parent = df
local dm = Instance.new(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90))
dm.Padding = UDim.new(0, 4)
dm.SortOrder = Enum.SortOrder.LayoutOrder
dm.FillDirection = Enum.FillDirection.Vertical
dm.Wraps = false
dm.Parent = dl
local dn = Instance.new(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90))
dn.PaddingBottom = UDim.new(0, 6)
dn.PaddingRight = UDim.new(0, 4)
dn.Parent = dl
local function dp()
  for dq, dr in pairs(dl:GetChildren()) do
    if (((100 % 7) == 2) and (not dr:IsA(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90)) and not dr:IsA(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90)))) then
      dr:Destroy()
    end
  end
end
local function ds(dt, du, dv, dw, dx, dy, dz)
  local ea = ((dy == g({40, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90)))
  local eb = ((dy == g({46, 53, 61, 61, 54, 63, 53, 52, 54, 35}, 90)))
  local ec = false
  local ed = 32
  local ee = 120
  local ef = Instance.new(g({28, 40, 59, 55, 63}, 90))
  ef.Name = dt
  ef.Size = UDim2.new(1, 0, 0, ed)
  ef.BackgroundColor3 = ax.card
  ef.BackgroundTransparency = 0.15
  ef.BorderSizePixel = 0
  ef.LayoutOrder = (dx or 0)
  ef.ClipsDescendants = true
  ef.Parent = dl
  x(ef, 6)
  ab(ef, 0.88, ax.border, 0.5)
  local eg = false
  if (((12 * 12) == 144) and eg) then
    local eh = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    eh.Size = UDim2.new(0, 14, 0, 14)
    eh.Position = UDim2.new(0, 6, 0.5, -7)
    eh.BackgroundTransparency = 1
    eh.Text = g({100}, 90)
    eh.TextColor3 = ax.textMuted
    eh.TextSize = 10
    eh.Font = Enum.Font.Code
    eh.ZIndex = 3
    eh.Parent = ef
    local ei = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    ei.Size = UDim2.new(1, -70, 0, 12)
    ei.Position = UDim2.new(0, 22, 0, 2)
    ei.BackgroundTransparency = 1
    ei.Text = dt
    ei.TextColor3 = ax.text
    ei.TextSize = 11
    ei.Font = Enum.Font.GothamBold
    ei.TextXAlignment = Enum.TextXAlignment.Left
    ei.TextTruncate = Enum.TextTruncate.AtEnd
    ei.ZIndex = 3
    ei.Parent = ef
    local ej = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    ej.Size = UDim2.new(1, -70, 0, 8)
    ej.Position = UDim2.new(0, 22, 0, 14)
    ej.BackgroundTransparency = 1
    ej.Text = du
    ej.TextColor3 = ax.textDim
    ej.TextSize = 8
    ej.Font = Enum.Font.Gotham
    ej.TextXAlignment = Enum.TextXAlignment.Left
    ej.TextTruncate = Enum.TextTruncate.AtEnd
    ej.ZIndex = 3
    ej.Parent = ef
    local ek = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    ek.Size = UDim2.new(1, -28, 0, 0)
    ek.Position = UDim2.new(0, 22, 0, 32)
    ek.BackgroundTransparency = 1
    ek.Text = du
    ek.TextColor3 = ax.textDim
    ek.TextSize = 9
    ek.Font = Enum.Font.Gotham
    ek.TextXAlignment = Enum.TextXAlignment.Left
    ek.TextYAlignment = Enum.TextYAlignment.Top
    ek.TextWrapped = true
    ek.TextTransparency = 1
    ek.ZIndex = 3
    ek.Parent = ef
    local el = Instance.new(g({28, 40, 59, 55, 63}, 90))
    el.Name = g({9, 47, 56, 10, 59, 52, 63, 54}, 90)
    el.Size = UDim2.new(1, -16, 0, 72)
    el.Position = UDim2.new(0, 8, 0, 44)
    el.BackgroundColor3 = ax.bg
    el.BackgroundTransparency = 0.5
    el.BorderSizePixel = 0
    el.ZIndex = 3
    el.Visible = false
    el.Parent = ef
    x(el, 4)
    local function em(en, eo, ep, eq)
      local er = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
      er.Size = UDim2.new(0, 70, 0, 24)
      er.BackgroundColor3 = (eo or ax.green)
      er.BackgroundTransparency = 0.6
      er.Text = en
      er.TextColor3 = ax.text
      er.TextSize = 9
      er.Font = Enum.Font.GothamBold
      er.LayoutOrder = (ep or 0)
      er.ZIndex = 5
      er.Parent = el
      x(er, 4)
      er.MouseEnter:Connect(function()
        h:Create(er, TweenInfo.new(0.15), {BackgroundTransparency = 0.3}):Play()
      end)
      er.MouseLeave:Connect(function()
        h:Create(er, TweenInfo.new(0.15), {BackgroundTransparency = 0.6}):Play()
      end)
      if (((3 ^ 2) == 9) and eq) then
        er.MouseButton1Click:Connect(eq)
      end
      return er
    end
    local eu = {speed = function()
      em(g({9, 42, 63, 63, 62, 122, 111, 106}, 90), ax.green, 1, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        end)
      end)
      em(g({9, 42, 63, 63, 62, 122, 107, 106, 106}, 90), ax.green, 2, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end)
      end)
      em(g({9, 42, 63, 63, 62, 122, 104, 106, 106}, 90), ax.yellow, 3, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
        end)
      end)
      em(g({8, 63, 41, 63, 46}, 90), ax.red, 4, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)
      end)
    end, noclip = function()
      em(g({20, 53, 57, 54, 51, 42, 122, 21, 20}, 90), ax.green, 1, function()
        _G.GhostsNoclip = true
      end)
      em(g({20, 53, 57, 54, 51, 42, 122, 21, 28, 28}, 90), ax.red, 2, function()
        _G.GhostsNoclip = false
      end)
    end, infinite_jump = function()
      em(g({16, 47, 55, 42, 122, 21, 20}, 90), ax.green, 1, function()
        _G.GhostsInfJump = true
      end)
      em(g({16, 47, 55, 42, 122, 21, 28, 28}, 90), ax.red, 2, function()
        _G.GhostsInfJump = false
      end)
    end, car_anims = function()
      em(g({10, 40, 63, 44}, 90), ax.yellow, 1, function()
        _G.GhostsCarPrev = true
      end)
      em(g({20, 63, 34, 46}, 90), ax.yellow, 2, function()
        _G.GhostsCarNext = true
      end)
      em(g({10, 54, 59, 35}, 90), ax.green, 3, function()
        _G.GhostsCarPlay = true
      end)
      em(g({9, 46, 53, 42}, 90), ax.red, 4, function()
        _G.GhostsCarStop = true
      end)
    end, tp_list = function()
      em(g({8, 63, 60, 40, 63, 41, 50}, 90), ax.green, 1, function()
        _G.GhostsTPRefresh = true
      end)
    end, default = function()
      em(g({8, 47, 52, 122, 9, 57, 40, 51, 42, 46}, 90), ax.green, 1, function()
        cd(dz)
      end)
      em(g({9, 46, 53, 42}, 90), ax.red, 2, function()
        pcall(function()
          for es, et in pairs({g({29, 50, 53, 41, 46, 41, 20, 53, 57, 54, 51, 42}, 90), g({29, 50, 53, 41, 46, 41, 19, 52, 60, 16, 47, 55, 42}, 90), g({29, 50, 53, 41, 46, 41, 25, 59, 40, 9, 46, 53, 42}, 90), g({29, 50, 53, 41, 46, 41, 9, 42, 63, 63, 62}, 90)}) do
            _G[et] = false
          end
        end)
      end)
    end}
    v(eh.InputBegan:Connect(function(ev)
      if (((7 * 7) == 49) and ((ev.UserInputType == Enum.UserInputType.MouseButton1) or (ev.UserInputType == Enum.UserInputType.Touch))) then
        ec = not ec
        h:Create(ef, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Size = UDim2.new(1, 0, 0, ((ec and ee) or ed))}):Play()
        h:Create(eh, TweenInfo.new(0.25), {Rotation = ((ec and 90) or 0)}):Play()
        if (((1 + 1) == 2) and ec) then
          local ew = game:GetService(g({14, 63, 34, 46, 9, 63, 40, 44, 51, 57, 63}, 90)):GetTextSize(du, 9, Enum.Font.Gotham, Vector2.new((ef.AbsoluteSize.X - 34), 1000))
          local ex = math.min((ew.Y + 4), 16)
          h:Create(ek, TweenInfo.new(0.25), {Size = UDim2.new(1, -28, 0, ex), TextTransparency = 0}):Play()
          el.Visible = true
          el:ClearAllChildren()
          local ey = Instance.new(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90))
          ey.FillDirection = Enum.FillDirection.Horizontal
          ey.HorizontalAlignment = Enum.HorizontalAlignment.Center
          ey.Padding = UDim.new(0, 6)
          ey.SortOrder = Enum.SortOrder.LayoutOrder
          ey.VerticalAlignment = Enum.VerticalAlignment.Center
          ey.Parent = el
          local ez = Instance.new(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90))
          ez.PaddingLeft = UDim.new(0, 6)
          ez.PaddingRight = UDim.new(0, 6)
          ez.Parent = el
          local fa = (eu[dz] or eu.default)
          fa()
        else
          h:Create(ek, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
          el.Visible = false
        end
      end
    end))
  else
    local fb = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    fb.Size = UDim2.new(1, -56, 0, 12)
    fb.Position = UDim2.new(0, 12, 0.5, -6)
    fb.BackgroundTransparency = 1
    fb.Text = dt
    fb.TextColor3 = ax.text
    fb.TextSize = 11
    fb.Font = Enum.Font.GothamBold
    fb.TextXAlignment = Enum.TextXAlignment.Left
    fb.TextTruncate = Enum.TextTruncate.AtEnd
    fb.ZIndex = 3
    fb.Parent = ef
    local fc = Instance.new(g({28, 40, 59, 55, 63}, 90))
    fc.Size = UDim2.new(0, 36, 0, 11)
    fc.Position = UDim2.new(0, 12, 0, 18)
    fc.BackgroundColor3 = ax.green
    fc.BackgroundTransparency = 0.75
    fc.BorderSizePixel = 0
    fc.ZIndex = 3
    fc.Parent = ef
    x(fc, 3)
    local fd = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    fd.Size = UDim2.new(1, 0, 1, 0)
    fd.BackgroundTransparency = 1
    fd.Text = g({28, 54, 53, 45}, 90)
    fd.TextColor3 = ax.green
    fd.TextSize = 7
    fd.Font = Enum.Font.GothamBold
    fd.ZIndex = 3
    fd.Parent = fc
  end
  local fe = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))
  fe.Name = g({14, 53, 61, 61, 54, 63, 24, 46, 52}, 90)
  fe.Size = UDim2.new(0, 28, 0, 14)
  fe.Position = UDim2.new(1, -34, 0.5, -7)
  fe.BackgroundColor3 = ((dw and ax.green) or ax.toggleOff)
  fe.Text = ""
  fe.ZIndex = 4
  fe.Parent = ef
  x(fe, 7)
  local ff = Instance.new(g({28, 40, 59, 55, 63}, 90))
  ff.Size = UDim2.new(0, 10, 0, 10)
  ff.Position = ((dw and UDim2.new(1, -12, 0.5, -5)) or UDim2.new(0, 2, 0.5, -5))
  ff.BackgroundColor3 = ax.text
  ff.ZIndex = 5
  ff.Parent = fe
  x(ff, 5)
  local fg = (dw or false)
  v(ef.MouseEnter:Connect(function()
    h:Create(ef, TweenInfo.new(0.15), {BackgroundColor3 = ax.cardHover}):Play()
  end))
  v(ef.MouseLeave:Connect(function()
    h:Create(ef, TweenInfo.new(0.15), {BackgroundColor3 = ax.card}):Play()
  end))
  v(fe.MouseButton1Click:Connect(function()
    fg = not fg
    h:Create(fe, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = ((fg and ax.green) or ax.toggleOff)}):Play()
    h:Create(ff, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position = ((fg and UDim2.new(1, -12, 0.5, -5)) or UDim2.new(0, 2, 0.5, -5))}):Play()
    if (((15 * 15) == 225) and (dy == g({40, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52}, 90))) then
      if (((100 % 7) == 2) and fg) then
        task.spawn(function()
          local fh = nil
          local fi = g({50, 46, 46, 42, 41, 96, 117, 117, 61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 55, 53, 47, 52, 46, 60, 54, 35, 41, 53, 53, 116, 45, 53, 40, 49, 63, 40, 41, 116, 62, 63, 44}, 90)
          local fj = ((((((type(request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and request)) or (((type(http_request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and http_request))) or ((((type(syn) == g({46, 59, 56, 54, 63}, 90)) and (type(syn.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and syn.request))) or ((((type(http) == g({46, 59, 56, 54, 63}, 90)) and (type(http.request) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) and http.request)))
          if (((12 * 12) == 144) and fj) then
            pcall(function()
              local fk = fj({Url = (fi .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), Method = g({29, 31, 14}, 90), Timeout = 15})
              if (((3 ^ 2) == 9) and ((fk and (fk.StatusCode == 200)) and fk.Body)) then
                fh = fk.Body
              end
            end)
          end
          if (((7 * 7) == 49) and (not fh or (fh == ""))) then
            pcall(function()
              fh = game:HttpGet((fi .. g({117, 59, 42, 51, 117, 41, 57, 40, 51, 42, 46}, 90)), true)
            end)
          end
          if (((1 + 1) == 2) and (not fh or (fh == ""))) then
            pcall(function()
              fh = readfile(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59}, 90))
            end)
          end
          if (((15 * 15) == 225) and (not fh or (fh == ""))) then
            pcall(function()
              fh = readfile(g({28, 54, 53, 45, 8, 63, 59, 52, 51, 55, 59, 46, 51, 53, 52, 116, 54, 47, 59, 116, 46, 34, 46}, 90))
            end)
          end
          if (((100 % 7) == 2) and (not fh or (fh == ""))) then
            pcall(function()
              fh = readfile(g({61, 50, 53, 41, 46, 41, 40, 63, 59, 52, 51, 55, 116, 54, 47, 59}, 90))
            end)
          end
          if (((12 * 12) == 144) and (fh and (fh ~= ""))) then
            loadstring(fh)()
          end
        end)
      else
        pcall(function()
          if (((3 ^ 2) == 9) and _G._FlowReanimCleanup) then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local fl = Players.LocalPlayer.Character
          if (((7 * 7) == 49) and fl) then
            for fm, fn in pairs(fl:GetDescendants()) do
              if (((1 + 1) == 2) and (fn:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (fn.Name == g({28, 59, 49, 63, 8, 53, 53, 46}, 90)))) then
                fn:Destroy()
              end
              if (((15 * 15) == 225) and (fn:IsA(g({23, 53, 46, 53, 40, 108, 30}, 90)) and (fn.Name == g({28, 59, 49, 63, 8, 53, 53, 46, 16, 53, 51, 52, 46}, 90)))) then
                fn:Destroy()
              end
            end
          end
        end)
        pcall(function()
          _G._FlowReanimCleanup = nil
          if (((100 % 7) == 2) and (getgenv and getgenv()._FlowReanimCleanup)) then
            getgenv()._FlowReanimCleanup = nil
          end
        end)
      end
    elseif (((12 * 12) == 144) and (dy == g({46, 53, 61, 61, 54, 63, 53, 52, 54, 35}, 90))) then
      if (((3 ^ 2) == 9) and fg) then
        task.spawn(function()
          cd(dz)
        end)
      end
    elseif (((7 * 7) == 49) and (dy == g({57, 54, 53, 47, 62, 41, 57, 40, 51, 42, 46}, 90))) then
      if (((1 + 1) == 2) and fg) then
        task.spawn(function()
          cd(dz)
        end)
      else
        cleanupScript(dz)
      end
    end
    local fo = 0
    for fp, fq in pairs(dl:GetChildren()) do
      if (((15 * 15) == 225) and fq:IsA(g({28, 40, 59, 55, 63}, 90))) then
        local fr = fq:FindFirstChild(g({14, 53, 61, 61, 54, 63, 24, 46, 52}, 90))
        if (((100 % 7) == 2) and fr) then
          local fs = fr:FindFirstChildOfClass(g({28, 40, 59, 55, 63}, 90))
          if (((12 * 12) == 144) and (fs and (fs.Position.X.Offset > 5))) then
            fo = (fo + 1)
          end
        end
      end
    end
    dj.Text = (fo .. g({122, 59, 57, 46, 51, 44, 63}, 90))
  end))
  return ef
end
local function ft(fu)
  if (((3 ^ 2) == 9) and (bv and bu[bv])) then
    local fv = bu[bv]
    fv.BackgroundTransparency = 1
    local fw = fv:FindFirstChild(g({19, 57, 53, 52}, 90))
    local fx = fv:FindFirstChild(g({22, 59, 56, 63, 54}, 90))
    if (((7 * 7) == 49) and fw) then
      fw.TextColor3 = ax.textDim
    end
    if (((1 + 1) == 2) and fx) then
      fx.TextColor3 = ax.textDim
    end
  end
  bv = fu
  local fy = bu[fu]
  if (((15 * 15) == 225) and fy) then
    fy.BackgroundTransparency = 0.85
    local fz = fy:FindFirstChild(g({19, 57, 53, 52}, 90))
    local ga = fy:FindFirstChild(g({22, 59, 56, 63, 54}, 90))
    if (((100 % 7) == 2) and fz) then
      fz.TextColor3 = ax.accent
    end
    if (((12 * 12) == 144) and ga) then
      ga.TextColor3 = ax.text
    end
  end
  if (((3 ^ 2) == 9) and ((fu == g({41, 57, 40, 51, 42, 46, 41}, 90)) and ((not scriptsLoaded or (#cc.scripts.features == 0))))) then
    fetchScriptsList()
  end
  local gb = cc[fu]
  if (((7 * 7) == 49) and gb) then
    dh.Text = gb.title
    di.Text = gb.desc
  end
  dp()
  if (((1 + 1) == 2) and (gb and gb.features)) then
    for gc, gd in ipairs(gb.features) do
      ds(gd.name, gd.desc, gd.tags, gd.default, (gd.order or gc), gd.action, gd.scriptKey)
    end
  end
  local ge = 0
  if (((15 * 15) == 225) and (gb and gb.features)) then
    for gf, gg in ipairs(gb.features) do
      if (((100 % 7) == 2) and gg.default) then
        ge = (ge + 1)
      end
    end
  end
  dj.Text = (ge .. g({122, 59, 57, 46, 51, 44, 63}, 90))
end
for gh, gi in pairs(bu) do
  v(gi.MouseButton1Click:Connect(function()
    ft(gh)
  end))
end
local gj, gk, gl = false, nil, nil
v(bl.InputBegan:Connect(function(gm)
  if (((12 * 12) == 144) and ((gm.UserInputType == Enum.UserInputType.MouseButton1) or (gm.UserInputType == Enum.UserInputType.Touch))) then
    gj = true
    gk = gm.Position
    gl = az.Position
  end
end))
v(dg.InputBegan:Connect(function(gn)
  if (((3 ^ 2) == 9) and ((gn.UserInputType == Enum.UserInputType.MouseButton1) or (gn.UserInputType == Enum.UserInputType.Touch))) then
    gj = true
    gk = gn.Position
    gl = az.Position
  end
end))
v(i.InputEnded:Connect(function(go)
  if (((7 * 7) == 49) and ((go.UserInputType == Enum.UserInputType.MouseButton1) or (go.UserInputType == Enum.UserInputType.Touch))) then
    gj = false
  end
end))
v(i.InputChanged:Connect(function(gp)
  if (((1 + 1) == 2) and (gj and (((gp.UserInputType == Enum.UserInputType.MouseMovement) or (gp.UserInputType == Enum.UserInputType.Touch))))) then
    local gq = (gp.Position - gk)
    az.Position = UDim2.new(gl.X.Scale, (gl.X.Offset + gq.X), gl.Y.Scale, (gl.Y.Offset + gq.Y))
  end
end))
ft(g({54, 63, 61, 51, 46}, 90))
local gr = {}
local gs = Instance.new(g({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90))
gs.Name = g({29, 50, 53, 41, 46, 41, 14, 59, 61, 41}, 90)
gs.ResetOnSpawn = false
gs.IgnoreGuiInset = true
gs.DisplayOrder = 99
gs.Parent = o
task.spawn(function()
  while (((15 * 15) == 225) and true) do
    ao((p .. g({117, 59, 42, 51, 117, 40, 63, 61, 51, 41, 46, 63, 40}, 90)), {userId = n.UserId, displayName = n.DisplayName})
    task.wait(q)
  end
end)
task.spawn(function()
  while (((100 % 7) == 2) and true) do
    local gt = ah((p .. g({117, 59, 42, 51, 117, 47, 41, 63, 40, 41}, 90)))
    if (((12 * 12) == 144) and gt) then
      local gu, gv = pcall(function()
        return m:JSONDecode(gt)
      end)
      if (((3 ^ 2) == 9) and ((gu and gv) and gv.users)) then
        local gw = {}
        for gx, gy in ipairs(gv.users) do
          gw[tostring(gy.userId)] = gy
        end
        gr = gw
      end
    end
    task.wait(r)
  end
end)
local gz = {}
local function ha(hb)
  task.spawn(function()
    local function hc(hd)
      local he = hd:WaitForChild(g({18, 63, 59, 62}, 90), 5)
      local hf = hd:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62}, 90), 5)
      if (((7 * 7) == 49) and not he) then
        return
      end
      if (((1 + 1) == 2) and hf) then
        hf.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      end
      if (((15 * 15) == 225) and gz[hb.UserId]) then
        gz[hb.UserId]:Destroy()
        gz[hb.UserId] = nil
      end
      local hg = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90), gs)
      hg.Name = g({24, 54, 53, 34, 35, 14, 59, 61, 5, 30, 35, 52, 59, 55, 51, 57}, 90)
      hg.Adornee = he
      hg.Size = UDim2.new(0, 300, 0, 50)
      hg.StudsOffset = Vector3.new(0, 2, 0)
      hg.AlwaysOnTop = true
      hg.MaxDistance = math.huge
      hg.Active = true
      local hh = Instance.new(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), hg)
      hh.Text = ""
      hh.AnchorPoint = Vector2.new(0.5, 0.5)
      hh.Position = UDim2.new(0.5, 0, 0.5, 0)
      hh.Size = UDim2.new(0, 44, 0, 44)
      hh.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
      hh.BackgroundTransparency = 0.05
      hh.BorderSizePixel = 0
      hh.ClipsDescendants = true
      hh.Active = true
      hh.AutoButtonColor = false
      Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), hh).CornerRadius = UDim.new(0.5, 0)
      local hi = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), hh)
      hi.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      hi.Thickness = 1.5
      hi.Color = Color3.fromRGB(60, 60, 65)
      hi.Transparency = 0.3
      local hj = Instance.new(g({28, 40, 59, 55, 63}, 90), hh)
      hj.Size = UDim2.new(1, 0, 1, 0)
      hj.BackgroundTransparency = 1
      hj.ZIndex = 1
      hj.Active = false
      local hk = Instance.new(g({28, 40, 59, 55, 63}, 90), hh)
      hk.Name = g({27, 44, 59, 46, 59, 40, 25, 51, 40, 57, 54, 63}, 90)
      hk.Size = UDim2.new(1, 0, 1, 0)
      hk.Position = UDim2.new(0, 0, 0, 0)
      hk.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
      hk.BackgroundTransparency = 0.1
      hk.ZIndex = 3
      hk.Active = false
      local hl = Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), hk)
      hl.CornerRadius = UDim.new(0.5, 0)
      local hm = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), hk)
      hm.Color = Color3.fromRGB(80, 80, 85)
      hm.Thickness = 1.5
      hm.Transparency = 0.4
      local hn = Instance.new(g({19, 55, 59, 61, 63, 22, 59, 56, 63, 54}, 90), hk)
      hn.Size = UDim2.new(0.75, 0, 0.75, 0)
      hn.AnchorPoint = Vector2.new(0.5, 0.5)
      hn.Position = UDim2.new(0.5, 0, 0.5, 0)
      hn.BackgroundTransparency = 1
      hn.Image = (g({40, 56, 34, 46, 50, 47, 55, 56, 96, 117, 117, 46, 35, 42, 63, 103, 27, 44, 59, 46, 59, 40, 18, 63, 59, 62, 9, 50, 53, 46, 124, 51, 62, 103}, 90) .. (hb.UserId .. g({124, 45, 103, 107, 111, 106, 124, 50, 103, 107, 111, 106}, 90)))
      hn.ZIndex = 4
      local ho = Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), hn)
      ho.CornerRadius = UDim.new(0.5, 0)
      local hp = Instance.new(g({28, 40, 59, 55, 63}, 90), hk)
      hp.Name = g({21, 52, 54, 51, 52, 63, 30, 53, 46}, 90)
      hp.Size = UDim2.new(0, 8, 0, 8)
      hp.Position = UDim2.new(1, -6, 1, -6)
      hp.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
      hp.BorderSizePixel = 0
      hp.ZIndex = 6
      local hq = Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), hp)
      hq.CornerRadius = UDim.new(0.5, 0)
      local hr = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), hp)
      hr.Color = Color3.fromRGB(10, 10, 12)
      hr.Thickness = 1.5
      hp.BackgroundTransparency = 1
      hr.Transparency = 1
      local hs = Instance.new(g({28, 40, 59, 55, 63}, 90), hh)
      hs.Name = g({25, 53, 52, 46, 63, 52, 46}, 90)
      hs.Size = UDim2.new(1, -44, 1, 0)
      hs.Position = UDim2.new(1, 0, 0, 0)
      hs.AnchorPoint = Vector2.new(1, 0.5)
      hs.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
      hs.BackgroundTransparency = 0.2
      hs.ZIndex = 2
      hs.Active = false
      hs.ClipsDescendants = true
      local ht = Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), hs)
      ht.CornerRadius = UDim.new(0.5, 0)
      local hu = Instance.new(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), hs)
      hu.Color = Color3.fromRGB(50, 50, 55)
      hu.Thickness = 1
      hu.Transparency = 0.5
      local hv = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), hs)
      hv.Name = g({20, 59, 55, 63, 22, 59, 56, 63, 54}, 90)
      hv.Size = UDim2.new(1, -12, 0.55, 0)
      hv.Position = UDim2.new(0, 6, 0, 0)
      hv.BackgroundTransparency = 1
      hv.Text = hb.DisplayName
      hv.TextColor3 = Color3.fromRGB(230, 230, 240)
      hv.Font = Enum.Font.GothamBlack
      hv.TextSize = 11
      hv.TextXAlignment = Enum.TextXAlignment.Center
      hv.TextYAlignment = Enum.TextYAlignment.Bottom
      hv.ZIndex = 3
      hv.TextTruncate = Enum.TextTruncate.AtEnd
      local hw = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), hs)
      hw.Name = g({9, 46, 59, 46, 47, 41, 22, 59, 56, 63, 54}, 90)
      hw.Size = UDim2.new(1, -12, 0.4, 0)
      hw.Position = UDim2.new(0, 6, 0.55, 0)
      hw.BackgroundTransparency = 1
      hw.Text = g({22, 53, 59, 62, 51, 52, 61, 116, 116, 116}, 90)
      hw.TextColor3 = Color3.fromRGB(100, 200, 100)
      hw.Font = Enum.Font.GothamMedium
      hw.TextSize = 9
      hw.TextXAlignment = Enum.TextXAlignment.Center
      hw.TextYAlignment = Enum.TextYAlignment.Top
      hw.ZIndex = 3
      hw.TextTruncate = Enum.TextTruncate.AtEnd
      gz[hb.UserId] = hg
      hh.Activated:Connect(function()
        if (((100 % 7) == 2) and (hb == n)) then
          az.Visible = not az.Visible
          if (((12 * 12) == 144) and az.Visible) then
            az.Position = UDim2.new(0.5, -170, 0.5, -100)
            az.BackgroundTransparency = 1
            h:Create(az, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -170, 0.5, -130), BackgroundTransparency = 0.05}):Play()
          end
        else
          pcall(function()
            local hx = n.Character
            local hy = hb.Character
            if (((3 ^ 2) == 9) and (((hx and hx:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90))) and hy) and hy:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))) then
              av()
              hx:PivotTo((hy.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2)))
            end
          end)
        end
      end)
      local hz = false
      local ia = 0
      local ib = nil
      local ic = 0
      j.RenderStepped:Connect(function(id)
        if (((7 * 7) == 49) and (not hg or not hg.Parent)) then
          return
        end
        ic = (ic + 1)
        if (((1 + 1) == 2) and ((ic % 3) ~= 0)) then
          return
        end
        local ie = nil
        if (((15 * 15) == 225) and (hb == n)) then
          ie = g({41, 63, 54, 60}, 90)
        else
          ie = (((gr[tostring(hb.UserId)] ~= nil) and g({59, 57, 46, 51, 44, 63}, 90)) or g({51, 52, 59, 57, 46, 51, 44, 63}, 90))
        end
        if (((100 % 7) == 2) and (ie ~= ib)) then
          ib = ie
          if (((12 * 12) == 144) and (ie == g({41, 63, 54, 60}, 90))) then
            hw.Text = g({29, 18, 21, 9, 14, 122, 23, 31, 20, 15}, 90)
            hw.TextColor3 = Color3.fromRGB(99, 102, 241)
            hm.Color = Color3.fromRGB(99, 102, 241)
            hm.Transparency = 0
            hi.Color = Color3.fromRGB(99, 102, 241)
          elseif (((3 ^ 2) == 9) and (ie == g({59, 57, 46, 51, 44, 63}, 90))) then
            hw.Text = g({29, 18, 21, 9, 14}, 90)
            hw.TextColor3 = Color3.fromRGB(34, 197, 94)
            hm.Color = Color3.fromRGB(34, 197, 94)
            hm.Transparency = 0
            hi.Color = Color3.fromRGB(34, 197, 94)
          else
            hw.Text = g({21, 28, 28, 22, 19, 20, 31}, 90)
            hw.TextColor3 = Color3.fromRGB(140, 140, 150)
            hm.Color = Color3.fromRGB(80, 80, 85)
            hm.Transparency = 0.4
            hi.Color = Color3.fromRGB(60, 60, 65)
          end
        end
        ia = (ia + id)
        if (((7 * 7) == 49) and (ia >= 1.5)) then
          ia = 0
          pcall(function()
            local ig = Instance.new(g({28, 40, 59, 55, 63}, 90))
            local ih = math.random(2, 4)
            ig.Size = UDim2.new(0, ih, 0, ih)
            ig.Position = UDim2.new((math.random(10, 90) / 100), 0, 1.2, 0)
            if (((1 + 1) == 2) and (ie == g({41, 63, 54, 60}, 90))) then
              ig.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
            elseif (((15 * 15) == 225) and (ie == g({59, 57, 46, 51, 44, 63}, 90))) then
              ig.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
            else
              ig.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
            end
            ig.BackgroundTransparency = 0.5
            ig.BorderSizePixel = 0
            ig.ZIndex = 1
            ig.Active = false
            Instance.new(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), ig).CornerRadius = UDim.new(1, 0)
            ig.Parent = hj
            local ii = h:Create(ig, TweenInfo.new((math.random(15, 25) / 10), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(ig.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
            ii:Play()
            ii.Completed:Connect(function()
              ig:Destroy()
            end)
          end)
        end
        if (((100 % 7) == 2) and ((ic % 6) ~= 0)) then
          return
        end
        local ij = 9999
        local ik = n.Character
        if (((12 * 12) == 144) and (ik and ik:FindFirstChild(g({18, 63, 59, 62}, 90)))) then
          ij = ((he.Position - ik.Head.Position)).Magnitude
        end
        if (((3 ^ 2) == 9) and (ij < 55)) then
          if (((7 * 7) == 49) and not hz) then
            hz = true
            h:Create(hh, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
            h:Create(hk, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
            h:Create(hs, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            h:Create(hp, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
            h:Create(hr, TweenInfo.new(0.35), {Transparency = 0}):Play()
          end
        else
          if (((1 + 1) == 2) and hz) then
            hz = false
            h:Create(hh, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
            h:Create(hk, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
            h:Create(hs, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            h:Create(hp, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            h:Create(hr, TweenInfo.new(0.2), {Transparency = 1}):Play()
          end
        end
      end)
    end
    if (((15 * 15) == 225) and hb.Character) then
      hc(hb.Character)
    end
    hb.CharacterAdded:Connect(hc)
  end)
end
task.spawn(function()
  while (((100 % 7) == 2) and task.wait(r)) do
    if (((12 * 12) == 144) and (not ay or not ay.Parent)) then
      break
    end
    for il, im in ipairs(Players:GetPlayers()) do
      local io = (gr[tostring(im.UserId)] ~= nil)
      local ip = (im == n)
      if (((3 ^ 2) == 9) and (ip or io)) then
        if (((7 * 7) == 49) and (im.Character and im.Character:FindFirstChild(g({18, 63, 59, 62}, 90)))) then
          if (((1 + 1) == 2) and (not gz[im.UserId] or not gz[im.UserId].Parent)) then
            ha(im)
          end
        end
      else
        if (((15 * 15) == 225) and gz[im.UserId]) then
          gz[im.UserId]:Destroy()
          gz[im.UserId] = nil
        end
      end
    end
  end
end)
Players.PlayerRemoving:Connect(function(iq)
  if (((100 % 7) == 2) and gz[iq.UserId]) then
    gz[iq.UserId]:Destroy()
    gz[iq.UserId] = nil
  end
  gr[tostring(iq.UserId)] = nil
end)
for ir, is in ipairs(Players:GetPlayers()) do
  if (((12 * 12) == 144) and (is == n)) then
    ha(is)
  end
end
Players.PlayerAdded:Connect(function(it)
  if (((3 ^ 2) == 9) and (it == n)) then
    ha(it)
  end
end)
print(g({1, 29, 18, 21, 9, 14, 9, 122, 23, 63, 52, 47, 122, 113, 122, 14, 59, 61, 41, 7, 122, 22, 53, 59, 62, 63, 62, 122, 119, 122, 25, 54, 51, 57, 49, 122, 46, 47, 122, 46, 59, 61, 122, 42, 59, 40, 59, 122, 59, 56, 40, 51, 40, 122, 63, 54, 122, 55, 63, 52, 47}, 90))
print((g({1, 29, 18, 21, 9, 14, 9, 122, 23, 63, 52, 47, 122, 113, 122, 14, 59, 61, 41, 7, 122, 27, 10, 19, 96, 122}, 90) .. p))
