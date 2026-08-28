local Players = game:GetService("Players")
local a = game:GetService("TweenService")
local b = game:GetService("UserInputService")
local c = game:GetService("RunService")
local d = game:GetService("Debris")
local e = game:GetService("SoundService")
local f = game:GetService("HttpService")
local g = Players.LocalPlayer
local h = g:WaitForChild("PlayerGui")
local i = "https://ghosts-users.mountflysoo.workers.dev"
local j = 30
local k = 5
for l, m in pairs(h:GetChildren()) do
  if (((1 + 1) == 2) and (m.Name == "GhostsMenu")) then
    m:Destroy()
  end
end
local n = {}
local function o(p)
  table.insert(n, p)
  return p
end
local function q(r, s)
  local t = Instance.new("UICorner")
  t.CornerRadius = UDim.new(0, s)
  t.Parent = r
end
local function u(v, w, x, y)
  local z = Instance.new("UIStroke")
  z.Color = (x or Color3.fromRGB(255, 255, 255))
  z.Thickness = (y or 1)
  z.Transparency = (w or 0.8)
  z.Parent = v
end
local function aa(ab)
  local ac = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if (((15 * 15) == 225) and ac) then
    local ad, ae = pcall(function()
      return ac({Url = ab, Method = "GET", Headers = {["Content-Type"] = "application/json"}})
    end)
    if (((100 % 7) == 2) and (((ad and ae) and (ae.StatusCode == 200)) and ae.Body)) then
      return ae.Body
    end
  end
  local af, ag = pcall(function()
    return game:HttpGet(ab, true)
  end)
  if (((12 * 12) == 144) and af) then
    return ag
  end
  return nil
end
local function ah(ai, aj)
  local ak = f:JSONEncode(aj)
  local al = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if (((3 ^ 2) == 9) and al) then
    local am, an = pcall(function()
      return al({Url = ai, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = ak})
    end)
    if (((7 * 7) == 49) and (am and an)) then
      return true
    end
  end
  return false
end
local function ao()
  pcall(function()
    local ap = Instance.new("Sound")
    ap.SoundId = "rbxassetid://127439510287856"
    ap.Volume = 2
    ap.Parent = e
    ap:Play()
    d:AddItem(ap, 4)
  end)
end
local aq = {bg = Color3.fromRGB(18, 18, 24), sidebar = Color3.fromRGB(22, 22, 30), card = Color3.fromRGB(30, 30, 40), cardHover = Color3.fromRGB(36, 36, 48), accent = Color3.fromRGB(99, 102, 241), green = Color3.fromRGB(34, 197, 94), yellow = Color3.fromRGB(234, 179, 8), red = Color3.fromRGB(239, 68, 68), text = Color3.fromRGB(240, 240, 245), textDim = Color3.fromRGB(120, 120, 140), textMuted = Color3.fromRGB(80, 80, 100), border = Color3.fromRGB(45, 45, 58), toggleOff = Color3.fromRGB(55, 55, 68)}
local ar = Instance.new("ScreenGui")
ar.Name = "GhostsMenu"
ar.ResetOnSpawn = false
ar.IgnoreGuiInset = true
ar.DisplayOrder = 100
ar.Parent = h
if (((1 + 1) == 2) and (syn and syn.protect_gui)) then
  pcall(syn.protect_gui, ar)
end
local as = Instance.new("Frame")
as.Name = "Main"
as.Size = UDim2.new(0, 340, 0, 260)
as.Position = UDim2.new(0.5, -170, 0.5, -130)
as.BackgroundColor3 = aq.bg
as.BackgroundTransparency = 0.05
as.BorderSizePixel = 0
as.ClipsDescendants = true
as.Visible = false
as.Parent = ar
q(as, 10)
u(as, 0.7, aq.border, 1)
local at = Instance.new("TextButton")
at.Name = "CloseBtn"
at.Size = UDim2.new(0, 20, 0, 20)
at.Position = UDim2.new(1, -24, 0, 4)
at.BackgroundColor3 = aq.card
at.BackgroundTransparency = 0.7
at.Text = "X"
at.TextColor3 = aq.textDim
at.TextSize = 10
at.Font = Enum.Font.GothamBold
at.Parent = as
q(at, 4)
o(at.MouseButton1Click:Connect(function()
  as.Visible = false
end))
o(at.MouseEnter:Connect(function()
  a:Create(at, TweenInfo.new(0.15), {BackgroundTransparency = 0.4, TextColor3 = aq.text}):Play()
end))
o(at.MouseLeave:Connect(function()
  a:Create(at, TweenInfo.new(0.15), {BackgroundTransparency = 0.7, TextColor3 = aq.textDim}):Play()
end))
local au = Instance.new("TextButton")
au.Name = "ResizeArea"
au.Size = UDim2.new(0, 50, 0, 50)
au.Position = UDim2.new(1, -50, 1, -50)
au.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
au.BackgroundTransparency = 1
au.Text = ""
au.AutoButtonColor = false
au.Parent = as
local av = Instance.new("Frame")
av.Size = UDim2.new(0, 20, 0, 2)
av.Position = UDim2.new(1, -22, 1, -4)
av.BackgroundColor3 = aq.textMuted
av.BackgroundTransparency = 0.3
av.BorderSizePixel = 0
av.Parent = au
local aw = Instance.new("Frame")
aw.Size = UDim2.new(0, 2, 0, 20)
aw.Position = UDim2.new(1, -4, 1, -22)
aw.BackgroundColor3 = aq.textMuted
aw.BackgroundTransparency = 0.3
aw.BorderSizePixel = 0
aw.Parent = au
local ax, ay, az = false, nil, nil
o(au.InputBegan:Connect(function(ba)
  if (((15 * 15) == 225) and ((ba.UserInputType == Enum.UserInputType.MouseButton1) or (ba.UserInputType == Enum.UserInputType.Touch))) then
    ax = true
    ay = ba.Position
    az = as.Size
  end
end))
o(b.InputEnded:Connect(function(bb)
  if (((100 % 7) == 2) and ((bb.UserInputType == Enum.UserInputType.MouseButton1) or (bb.UserInputType == Enum.UserInputType.Touch))) then
    ax = false
  end
end))
o(b.InputChanged:Connect(function(bc)
  if (((12 * 12) == 144) and (ax and (((bc.UserInputType == Enum.UserInputType.MouseMovement) or (bc.UserInputType == Enum.UserInputType.Touch))))) then
    local bd = (bc.Position - ay)
    as.Size = UDim2.new(0, math.clamp((az.X.Offset + bd.X), 200, 800), 0, math.clamp((az.Y.Offset + bd.Y), 150, 600))
  end
end))
local be = Instance.new("Frame")
be.Name = "Sidebar"
be.Size = UDim2.new(0, 90, 1, 0)
be.Position = UDim2.new(0, 0, 0, 0)
be.BackgroundColor3 = aq.sidebar
be.BackgroundTransparency = 0.1
be.BorderSizePixel = 0
be.ClipsDescendants = true
be.Parent = as
q(be, 10)
local bf = Instance.new("Frame")
bf.Size = UDim2.new(0, 8, 1, 0)
bf.Position = UDim2.new(1, -8, 0, 0)
bf.BackgroundColor3 = aq.sidebar
bf.BackgroundTransparency = 0.1
bf.BorderSizePixel = 0
bf.Parent = be
local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, -10, 0, 36)
bg.Position = UDim2.new(0, 5, 0, 6)
bg.BackgroundTransparency = 1
bg.Parent = be
local bh = Instance.new("TextLabel")
bh.Size = UDim2.new(1, 0, 0, 14)
bh.Position = UDim2.new(0, 0, 0, 4)
bh.BackgroundTransparency = 1
bh.Text = "GHOSTS"
bh.TextColor3 = aq.text
bh.TextSize = 12
bh.Font = Enum.Font.GothamBlack
bh.TextXAlignment = Enum.TextXAlignment.Left
bh.Parent = bg
local bi = Instance.new("TextLabel")
bi.Size = UDim2.new(1, 0, 0, 10)
bi.Position = UDim2.new(0, 0, 0, 18)
bi.BackgroundTransparency = 1
bi.Text = "v1.0 FREE"
bi.TextColor3 = aq.textMuted
bi.TextSize = 7
bi.Font = Enum.Font.Gotham
bi.TextXAlignment = Enum.TextXAlignment.Left
bi.Parent = bg
local bj = Instance.new("Frame")
bj.Size = UDim2.new(1, -10, 0, 22)
bj.Position = UDim2.new(0, 5, 0, 44)
bj.BackgroundColor3 = aq.card
bj.BackgroundTransparency = 0.3
bj.BorderSizePixel = 0
bj.Parent = be
q(bj, 6)
local bk = Instance.new("TextLabel")
bk.Size = UDim2.new(0, 16, 1, 0)
bk.Position = UDim2.new(0, 4, 0, 0)
bk.BackgroundTransparency = 1
bk.Text = "Q"
bk.TextColor3 = aq.textMuted
bk.TextSize = 9
bk.Font = Enum.Font.Code
bk.Parent = bj
local bl = Instance.new("TextBox")
bl.Size = UDim2.new(1, -26, 1, 0)
bl.Position = UDim2.new(0, 22, 0, 0)
bl.BackgroundTransparency = 1
bl.Text = ""
bl.PlaceholderText = "Search..."
bl.PlaceholderColor3 = aq.textMuted
bl.TextColor3 = aq.text
bl.TextSize = 9
bl.Font = Enum.Font.Gotham
bl.TextXAlignment = Enum.TextXAlignment.Left
bl.ClearTextOnFocus = false
bl.Parent = bj
local bm = {{name = "legit", icon = ">", label = "Legit"}, {name = "semirage", icon = "+", label = "Semi-Rage"}, {name = "visuals", icon = "*", label = "Visuals"}, {name = "socials", icon = "&", label = "Socials"}, {name = "themes", icon = "%", label = "Themes"}, {name = "settings", icon = "!", label = "Settings"}}
local bn = {}
local bo = nil
for bp, bq in ipairs(bm) do
  local br = (70 + ((((bp - 1)) * 20)))
  local bs = Instance.new("TextButton")
  bs.Name = bq.name
  bs.Size = UDim2.new(1, -6, 0, 18)
  bs.Position = UDim2.new(0, 3, 0, br)
  bs.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
  bs.BackgroundTransparency = 1
  bs.Text = ""
  bs.AutoButtonColor = false
  bs.Parent = be
  q(bs, 4)
  local bt = Instance.new("TextLabel")
  bt.Name = "Icon"
  bt.Size = UDim2.new(0, 16, 1, 0)
  bt.Position = UDim2.new(0, 4, 0, 0)
  bt.BackgroundTransparency = 1
  bt.Text = bq.icon
  bt.TextColor3 = aq.textDim
  bt.TextSize = 10
  bt.Font = Enum.Font.Code
  bt.Parent = bs
  local bu = Instance.new("TextLabel")
  bu.Name = "Label"
  bu.Size = UDim2.new(1, -24, 1, 0)
  bu.Position = UDim2.new(0, 20, 0, 0)
  bu.BackgroundTransparency = 1
  bu.Text = bq.label
  bu.TextColor3 = aq.textDim
  bu.TextSize = 9
  bu.Font = Enum.Font.GothamBold
  bu.TextXAlignment = Enum.TextXAlignment.Left
  bu.Parent = bs
  o(bs.MouseEnter:Connect(function()
    if (((3 ^ 2) == 9) and (bo ~= bq.name)) then
      bs.BackgroundTransparency = 0.85
    end
  end))
  o(bs.MouseLeave:Connect(function()
    if (((7 * 7) == 49) and (bo ~= bq.name)) then
      bs.BackgroundTransparency = 1
    end
  end))
  bn[bq.name] = bs
end
local bv = {legit = {title = "Legit", desc = "Smooth & undetectable", features = {}}, semirage = {title = "Semi-Rage", desc = "Aggressive legit tools", features = {{name = "Anti VC Ban", desc = "Proteccion contra voice chat ban system", tags = {"保护"}, default = false, action = "toggleonly", scriptKey = "antivcban"}}}, visuals = {title = "Visuals", desc = "See more, detect less", features = {{name = "Reanimation", desc = "FlowReanimation v1.0 - Server protected", tags = {"Flow"}, default = false, action = "reanimation"}}}, socials = {title = "Socials", desc = "Join our communities", features = {}}, themes = {title = "Themes", desc = "Choose your look", features = {}}, settings = {title = "Settings", desc = "Customize your client", features = {}}}
local function bw(bx)
  task.spawn(function()
    print(("[GHOSTS] Ejecutando: " .. bx))
    local by = nil
    local bz = {function()
      return game:HttpGet((i .. ("/raw/" .. bx)), true)
    end, function()
      return game:HttpGet((i .. ("/api/scripts/" .. bx)))
    end, function()
      return aa((i .. ("/raw/" .. bx)))
    end, function()
      return aa((i .. ("/api/scripts/" .. bx)))
    end}
    for ca, cb in ipairs(bz) do
      local cc, cd = pcall(cb)
      if (((1 + 1) == 2) and ((cc and cd) and (#cd > 50))) then
        if (((15 * 15) == 225) and (ca >= 3)) then
          local ce, cf = pcall(function()
            return f:JSONDecode(cd)
          end)
          if (((100 % 7) == 2) and ((ce and cf) and cf.code)) then
            by = cf.code
          end
        else
          by = cd
        end
        if (((12 * 12) == 144) and by) then
          break
        end
      end
    end
    if (((3 ^ 2) == 9) and not by) then
      warn(("[GHOSTS] No se pudo obtener: " .. bx))
      return
    end
    by = by:gsub("^[ï][»][¿]", "")
    by = by:gsub("^[\0]+", "")
    local cg, ch = loadstring(by)
    if (((7 * 7) == 49) and not cg) then
      warn(("[GHOSTS] Error loadstring " .. (bx .. (": " .. tostring(ch)))))
      return
    end
    local ci, cj = pcall(cg)
    if (((1 + 1) == 2) and ci) then
      print(("[GHOSTS] Script ejecutado: " .. bx))
    else
      warn(("[GHOSTS] Error ejecutando " .. (bx .. (": " .. tostring(cj)))))
    end
  end)
end
local function ck(cl)
  local cm = cl:lower()
  if (((15 * 15) == 225) and (cm == "")) then
    for cn, co in pairs(bn) do
      co.Visible = true
    end
    return
  end
  local cp = nil
  for cq, cr in pairs(bn) do
    local cs = cr:FindFirstChild("Label")
    local ct = (cs and cs.Text:lower():find(cm, 1, true))
    local cu = bv[cq]
    local cv = false
    if (((100 % 7) == 2) and (cu and cu.features)) then
      for cw, cx in ipairs(cu.features) do
        if (((12 * 12) == 144) and (cx.name:lower():find(cm, 1, true) or cx.desc:lower():find(cm, 1, true))) then
          cv = true
          break
        end
      end
    end
    if (((3 ^ 2) == 9) and (ct or cv)) then
      cr.Visible = true
      if (((7 * 7) == 49) and not cp) then
        cp = cq
      end
    else
      cr.Visible = false
    end
  end
  if (((1 + 1) == 2) and (cp and (bo ~= cp))) then
    selectCategory(cp)
  end
end
o(bl:GetPropertyChangedSignal("Text"):Connect(function()
  ck(bl.Text)
end))
local cy = Instance.new("Frame")
cy.Name = "Content"
cy.Size = UDim2.new(1, -96, 1, -8)
cy.Position = UDim2.new(0, 94, 0, 4)
cy.BackgroundTransparency = 1
cy.ClipsDescendants = true
cy.Parent = as
local cz = Instance.new("Frame")
cz.Name = "Header"
cz.Size = UDim2.new(1, 0, 0, 28)
cz.BackgroundTransparency = 1
cz.Parent = cy
local da = Instance.new("TextLabel")
da.Name = "Title"
da.Size = UDim2.new(1, -40, 0, 14)
da.Position = UDim2.new(0, 0, 0, 0)
da.BackgroundTransparency = 1
da.Text = "Legit"
da.TextColor3 = aq.text
da.TextSize = 14
da.Font = Enum.Font.GothamBlack
da.TextXAlignment = Enum.TextXAlignment.Left
da.Parent = cz
local db = Instance.new("TextLabel")
db.Name = "Desc"
db.Size = UDim2.new(1, -40, 0, 10)
db.Position = UDim2.new(0, 0, 0, 14)
db.BackgroundTransparency = 1
db.Text = "Smooth & undetectable"
db.TextColor3 = aq.textDim
db.TextSize = 8
db.Font = Enum.Font.Gotham
db.TextXAlignment = Enum.TextXAlignment.Left
db.Parent = cz
local dc = Instance.new("TextLabel")
dc.Name = "Count"
dc.Size = UDim2.new(0, 40, 0, 10)
dc.Position = UDim2.new(1, -68, 0, 8)
dc.BackgroundTransparency = 1
dc.Text = "0 active"
dc.TextColor3 = aq.textMuted
dc.TextSize = 7
dc.Font = Enum.Font.Gotham
dc.TextXAlignment = Enum.TextXAlignment.Right
dc.Parent = as
local dd = Instance.new("Frame")
dd.Size = UDim2.new(1, 0, 0, 1)
dd.Position = UDim2.new(0, 0, 1, -2)
dd.BackgroundColor3 = aq.border
dd.BackgroundTransparency = 0.5
dd.BorderSizePixel = 0
dd.Parent = cz
local de = Instance.new("ScrollingFrame")
de.Name = "Features"
de.Size = UDim2.new(1, 0, 1, -34)
de.Position = UDim2.new(0, 0, 0, 30)
de.BackgroundTransparency = 1
de.BorderSizePixel = 0
de.ScrollBarThickness = 2
de.ScrollBarImageColor3 = aq.accent
de.CanvasSize = UDim2.new(0, 0, 0, 0)
de.AutomaticCanvasSize = Enum.AutomaticSize.Y
de.ClipsDescendants = true
de.Parent = cy
local df = Instance.new("UIListLayout")
df.Padding = UDim.new(0, 4)
df.SortOrder = Enum.SortOrder.LayoutOrder
df.FillDirection = Enum.FillDirection.Vertical
df.Wraps = false
df.Parent = de
local dg = Instance.new("UIPadding")
dg.PaddingBottom = UDim.new(0, 6)
dg.PaddingRight = UDim.new(0, 4)
dg.Parent = de
local function dh()
  for di, dj in pairs(de:GetChildren()) do
    if (((15 * 15) == 225) and (not dj:IsA("UIListLayout") and not dj:IsA("UIPadding"))) then
      dj:Destroy()
    end
  end
end
local function dk(dl, dm, dn, dp, dq, dr, ds)
  local dt = ((dr == "reanimation"))
  local du = ((dr == "toggleonly"))
  local dv = false
  local dw = 32
  local dx = 120
  local dy = Instance.new("Frame")
  dy.Name = dl
  dy.Size = UDim2.new(1, 0, 0, dw)
  dy.BackgroundColor3 = aq.card
  dy.BackgroundTransparency = 0.15
  dy.BorderSizePixel = 0
  dy.LayoutOrder = (dq or 0)
  dy.ClipsDescendants = true
  dy.Parent = de
  q(dy, 6)
  u(dy, 0.88, aq.border, 0.5)
  local dz = false
  if (((100 % 7) == 2) and dz) then
    local ea = Instance.new("TextLabel")
    ea.Size = UDim2.new(0, 14, 0, 14)
    ea.Position = UDim2.new(0, 6, 0.5, -7)
    ea.BackgroundTransparency = 1
    ea.Text = ">"
    ea.TextColor3 = aq.textMuted
    ea.TextSize = 10
    ea.Font = Enum.Font.Code
    ea.ZIndex = 3
    ea.Parent = dy
    local eb = Instance.new("TextLabel")
    eb.Size = UDim2.new(1, -70, 0, 12)
    eb.Position = UDim2.new(0, 22, 0, 2)
    eb.BackgroundTransparency = 1
    eb.Text = dl
    eb.TextColor3 = aq.text
    eb.TextSize = 11
    eb.Font = Enum.Font.GothamBold
    eb.TextXAlignment = Enum.TextXAlignment.Left
    eb.TextTruncate = Enum.TextTruncate.AtEnd
    eb.ZIndex = 3
    eb.Parent = dy
    local ec = Instance.new("TextLabel")
    ec.Size = UDim2.new(1, -70, 0, 8)
    ec.Position = UDim2.new(0, 22, 0, 14)
    ec.BackgroundTransparency = 1
    ec.Text = dm
    ec.TextColor3 = aq.textDim
    ec.TextSize = 8
    ec.Font = Enum.Font.Gotham
    ec.TextXAlignment = Enum.TextXAlignment.Left
    ec.TextTruncate = Enum.TextTruncate.AtEnd
    ec.ZIndex = 3
    ec.Parent = dy
    local ed = Instance.new("TextLabel")
    ed.Size = UDim2.new(1, -28, 0, 0)
    ed.Position = UDim2.new(0, 22, 0, 32)
    ed.BackgroundTransparency = 1
    ed.Text = dm
    ed.TextColor3 = aq.textDim
    ed.TextSize = 9
    ed.Font = Enum.Font.Gotham
    ed.TextXAlignment = Enum.TextXAlignment.Left
    ed.TextYAlignment = Enum.TextYAlignment.Top
    ed.TextWrapped = true
    ed.TextTransparency = 1
    ed.ZIndex = 3
    ed.Parent = dy
    local ee = Instance.new("Frame")
    ee.Name = "SubPanel"
    ee.Size = UDim2.new(1, -16, 0, 72)
    ee.Position = UDim2.new(0, 8, 0, 44)
    ee.BackgroundColor3 = aq.bg
    ee.BackgroundTransparency = 0.5
    ee.BorderSizePixel = 0
    ee.ZIndex = 3
    ee.Visible = false
    ee.Parent = dy
    q(ee, 4)
    local function ef(eg, eh, ei, ej)
      local ek = Instance.new("TextButton")
      ek.Size = UDim2.new(0, 70, 0, 24)
      ek.BackgroundColor3 = (eh or aq.green)
      ek.BackgroundTransparency = 0.6
      ek.Text = eg
      ek.TextColor3 = aq.text
      ek.TextSize = 9
      ek.Font = Enum.Font.GothamBold
      ek.LayoutOrder = (ei or 0)
      ek.ZIndex = 5
      ek.Parent = ee
      q(ek, 4)
      ek.MouseEnter:Connect(function()
        a:Create(ek, TweenInfo.new(0.15), {BackgroundTransparency = 0.3}):Play()
      end)
      ek.MouseLeave:Connect(function()
        a:Create(ek, TweenInfo.new(0.15), {BackgroundTransparency = 0.6}):Play()
      end)
      if (((12 * 12) == 144) and ej) then
        ek.MouseButton1Click:Connect(ej)
      end
      return ek
    end
    local en = {speed = function()
      ef("Speed 50", aq.green, 1, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        end)
      end)
      ef("Speed 100", aq.green, 2, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end)
      end)
      ef("Speed 200", aq.yellow, 3, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
        end)
      end)
      ef("Reset", aq.red, 4, function()
        pcall(function()
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end)
      end)
    end, noclip = function()
      ef("Noclip ON", aq.green, 1, function()
        _G.GhostsNoclip = true
      end)
      ef("Noclip OFF", aq.red, 2, function()
        _G.GhostsNoclip = false
      end)
    end, infinite_jump = function()
      ef("Jump ON", aq.green, 1, function()
        _G.GhostsInfJump = true
      end)
      ef("Jump OFF", aq.red, 2, function()
        _G.GhostsInfJump = false
      end)
    end, car_anims = function()
      ef("Prev", aq.yellow, 1, function()
        _G.GhostsCarPrev = true
      end)
      ef("Next", aq.yellow, 2, function()
        _G.GhostsCarNext = true
      end)
      ef("Play", aq.green, 3, function()
        _G.GhostsCarPlay = true
      end)
      ef("Stop", aq.red, 4, function()
        _G.GhostsCarStop = true
      end)
    end, tp_list = function()
      ef("Refresh", aq.green, 1, function()
        _G.GhostsTPRefresh = true
      end)
    end, default = function()
      ef("Run Script", aq.green, 1, function()
        bw(ds)
      end)
      ef("Stop", aq.red, 2, function()
        pcall(function()
          for el, em in pairs({"GhostsNoclip", "GhostsInfJump", "GhostsCarStop", "GhostsSpeed"}) do
            _G[em] = false
          end
        end)
      end)
    end}
    o(ea.InputBegan:Connect(function(eo)
      if (((3 ^ 2) == 9) and ((eo.UserInputType == Enum.UserInputType.MouseButton1) or (eo.UserInputType == Enum.UserInputType.Touch))) then
        dv = not dv
        a:Create(dy, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Size = UDim2.new(1, 0, 0, ((dv and dx) or dw))}):Play()
        a:Create(ea, TweenInfo.new(0.25), {Rotation = ((dv and 90) or 0)}):Play()
        if (((7 * 7) == 49) and dv) then
          local ep = game:GetService("TextService"):GetTextSize(dm, 9, Enum.Font.Gotham, Vector2.new((dy.AbsoluteSize.X - 34), 1000))
          local eq = math.min((ep.Y + 4), 16)
          a:Create(ed, TweenInfo.new(0.25), {Size = UDim2.new(1, -28, 0, eq), TextTransparency = 0}):Play()
          ee.Visible = true
          ee:ClearAllChildren()
          local er = Instance.new("UIListLayout")
          er.FillDirection = Enum.FillDirection.Horizontal
          er.HorizontalAlignment = Enum.HorizontalAlignment.Center
          er.Padding = UDim.new(0, 6)
          er.SortOrder = Enum.SortOrder.LayoutOrder
          er.VerticalAlignment = Enum.VerticalAlignment.Center
          er.Parent = ee
          local es = Instance.new("UIPadding")
          es.PaddingLeft = UDim.new(0, 6)
          es.PaddingRight = UDim.new(0, 6)
          es.Parent = ee
          local et = (en[ds] or en.default)
          et()
        else
          a:Create(ed, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
          ee.Visible = false
        end
      end
    end))
  else
    local eu = Instance.new("TextLabel")
    eu.Size = UDim2.new(1, -56, 0, 12)
    eu.Position = UDim2.new(0, 12, 0.5, -6)
    eu.BackgroundTransparency = 1
    eu.Text = dl
    eu.TextColor3 = aq.text
    eu.TextSize = 11
    eu.Font = Enum.Font.GothamBold
    eu.TextXAlignment = Enum.TextXAlignment.Left
    eu.TextTruncate = Enum.TextTruncate.AtEnd
    eu.ZIndex = 3
    eu.Parent = dy
    local ev = Instance.new("Frame")
    ev.Size = UDim2.new(0, 36, 0, 11)
    ev.Position = UDim2.new(0, 12, 0, 18)
    ev.BackgroundColor3 = aq.green
    ev.BackgroundTransparency = 0.75
    ev.BorderSizePixel = 0
    ev.ZIndex = 3
    ev.Parent = dy
    q(ev, 3)
    local ew = Instance.new("TextLabel")
    ew.Size = UDim2.new(1, 0, 1, 0)
    ew.BackgroundTransparency = 1
    ew.Text = "Flow"
    ew.TextColor3 = aq.green
    ew.TextSize = 7
    ew.Font = Enum.Font.GothamBold
    ew.ZIndex = 3
    ew.Parent = ev
  end
  local ex = Instance.new("TextButton")
  ex.Name = "ToggleBtn"
  ex.Size = UDim2.new(0, 28, 0, 14)
  ex.Position = UDim2.new(1, -34, 0.5, -7)
  ex.BackgroundColor3 = ((dp and aq.green) or aq.toggleOff)
  ex.Text = ""
  ex.ZIndex = 4
  ex.Parent = dy
  q(ex, 7)
  local ey = Instance.new("Frame")
  ey.Size = UDim2.new(0, 10, 0, 10)
  ey.Position = ((dp and UDim2.new(1, -12, 0.5, -5)) or UDim2.new(0, 2, 0.5, -5))
  ey.BackgroundColor3 = aq.text
  ey.ZIndex = 5
  ey.Parent = ex
  q(ey, 5)
  local ez = (dp or false)
  o(dy.MouseEnter:Connect(function()
    a:Create(dy, TweenInfo.new(0.15), {BackgroundColor3 = aq.cardHover}):Play()
  end))
  o(dy.MouseLeave:Connect(function()
    a:Create(dy, TweenInfo.new(0.15), {BackgroundColor3 = aq.card}):Play()
  end))
  o(ex.MouseButton1Click:Connect(function()
    ez = not ez
    a:Create(ex, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {BackgroundColor3 = ((ez and aq.green) or aq.toggleOff)}):Play()
    a:Create(ey, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position = ((ez and UDim2.new(1, -12, 0.5, -5)) or UDim2.new(0, 2, 0.5, -5))}):Play()
    if (((1 + 1) == 2) and (dr == "reanimation")) then
      if (((15 * 15) == 225) and ez) then
        task.spawn(function()
          local fa = nil
          local fb = "https://ghostsreanim.mountflysoo.workers.dev"
          local fc = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
          if (((100 % 7) == 2) and fc) then
            pcall(function()
              local fd = fc({Url = (fb .. "/api/script"), Method = "GET", Timeout = 15})
              if (((12 * 12) == 144) and ((fd and (fd.StatusCode == 200)) and fd.Body)) then
                fa = fd.Body
              end
            end)
          end
          if (((3 ^ 2) == 9) and (not fa or (fa == ""))) then
            pcall(function()
              fa = game:HttpGet((fb .. "/api/script"), true)
            end)
          end
          if (((7 * 7) == 49) and (not fa or (fa == ""))) then
            pcall(function()
              fa = readfile("FlowReanimation.lua")
            end)
          end
          if (((1 + 1) == 2) and (not fa or (fa == ""))) then
            pcall(function()
              fa = readfile("FlowReanimation.lua.txt")
            end)
          end
          if (((15 * 15) == 225) and (not fa or (fa == ""))) then
            pcall(function()
              fa = readfile("ghostsreanim.lua")
            end)
          end
          if (((100 % 7) == 2) and (fa and (fa ~= ""))) then
            loadstring(fa)()
          end
        end)
      else
        pcall(function()
          if (((12 * 12) == 144) and _G._FlowReanimCleanup) then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local fe = Players.LocalPlayer.Character
          if (((3 ^ 2) == 9) and fe) then
            for ff, fg in pairs(fe:GetDescendants()) do
              if (((7 * 7) == 49) and (fg:IsA("BasePart") and (fg.Name == "FakeRoot"))) then
                fg:Destroy()
              end
              if (((1 + 1) == 2) and (fg:IsA("Motor6D") and (fg.Name == "FakeRootJoint"))) then
                fg:Destroy()
              end
            end
          end
        end)
        pcall(function()
          _G._FlowReanimCleanup = nil
          if (((15 * 15) == 225) and (getgenv and getgenv()._FlowReanimCleanup)) then
            getgenv()._FlowReanimCleanup = nil
          end
        end)
      end
    elseif (((100 % 7) == 2) and (dr == "toggleonly")) then
      if (((12 * 12) == 144) and ez) then
        task.spawn(function()
          bw(ds)
        end)
      end
    elseif (((3 ^ 2) == 9) and (dr == "cloudscript")) then
      if (((7 * 7) == 49) and ez) then
        task.spawn(function()
          bw(ds)
        end)
      else
        cleanupScript(ds)
      end
    end
    local fh = 0
    for fi, fj in pairs(de:GetChildren()) do
      if (((1 + 1) == 2) and fj:IsA("Frame")) then
        local fk = fj:FindFirstChild("ToggleBtn")
        if (((15 * 15) == 225) and fk) then
          local fl = fk:FindFirstChildOfClass("Frame")
          if (((100 % 7) == 2) and (fl and (fl.Position.X.Offset > 5))) then
            fh = (fh + 1)
          end
        end
      end
    end
    dc.Text = (fh .. " active")
  end))
  return dy
end
local function fm(fn)
  if (((12 * 12) == 144) and (bo and bn[bo])) then
    local fo = bn[bo]
    fo.BackgroundTransparency = 1
    local fp = fo:FindFirstChild("Icon")
    local fq = fo:FindFirstChild("Label")
    if (((3 ^ 2) == 9) and fp) then
      fp.TextColor3 = aq.textDim
    end
    if (((7 * 7) == 49) and fq) then
      fq.TextColor3 = aq.textDim
    end
  end
  bo = fn
  local fr = bn[fn]
  if (((1 + 1) == 2) and fr) then
    fr.BackgroundTransparency = 0.85
    local fs = fr:FindFirstChild("Icon")
    local ft = fr:FindFirstChild("Label")
    if (((15 * 15) == 225) and fs) then
      fs.TextColor3 = aq.accent
    end
    if (((100 % 7) == 2) and ft) then
      ft.TextColor3 = aq.text
    end
  end
  if (((12 * 12) == 144) and ((fn == "scripts") and ((not scriptsLoaded or (#bv.scripts.features == 0))))) then
    fetchScriptsList()
  end
  local fu = bv[fn]
  if (((3 ^ 2) == 9) and fu) then
    da.Text = fu.title
    db.Text = fu.desc
  end
  dh()
  if (((7 * 7) == 49) and (fu and fu.features)) then
    for fv, fw in ipairs(fu.features) do
      dk(fw.name, fw.desc, fw.tags, fw.default, (fw.order or fv), fw.action, fw.scriptKey)
    end
  end
  local fx = 0
  if (((1 + 1) == 2) and (fu and fu.features)) then
    for fy, fz in ipairs(fu.features) do
      if (((15 * 15) == 225) and fz.default) then
        fx = (fx + 1)
      end
    end
  end
  dc.Text = (fx .. " active")
end
for ga, gb in pairs(bn) do
  o(gb.MouseButton1Click:Connect(function()
    fm(ga)
  end))
end
local gc, gd, ge = false, nil, nil
o(be.InputBegan:Connect(function(gf)
  if (((100 % 7) == 2) and ((gf.UserInputType == Enum.UserInputType.MouseButton1) or (gf.UserInputType == Enum.UserInputType.Touch))) then
    gc = true
    gd = gf.Position
    ge = as.Position
  end
end))
o(cz.InputBegan:Connect(function(gg)
  if (((12 * 12) == 144) and ((gg.UserInputType == Enum.UserInputType.MouseButton1) or (gg.UserInputType == Enum.UserInputType.Touch))) then
    gc = true
    gd = gg.Position
    ge = as.Position
  end
end))
o(b.InputEnded:Connect(function(gh)
  if (((3 ^ 2) == 9) and ((gh.UserInputType == Enum.UserInputType.MouseButton1) or (gh.UserInputType == Enum.UserInputType.Touch))) then
    gc = false
  end
end))
o(b.InputChanged:Connect(function(gi)
  if (((7 * 7) == 49) and (gc and (((gi.UserInputType == Enum.UserInputType.MouseMovement) or (gi.UserInputType == Enum.UserInputType.Touch))))) then
    local gj = (gi.Position - gd)
    as.Position = UDim2.new(ge.X.Scale, (ge.X.Offset + gj.X), ge.Y.Scale, (ge.Y.Offset + gj.Y))
  end
end))
fm("legit")
local gk = {}
local gl = Instance.new("ScreenGui")
gl.Name = "GhostsTags"
gl.ResetOnSpawn = false
gl.IgnoreGuiInset = true
gl.DisplayOrder = 99
gl.Parent = h
task.spawn(function()
  while (((1 + 1) == 2) and true) do
    ah((i .. "/api/register"), {userId = g.UserId, displayName = g.DisplayName})
    task.wait(j)
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and true) do
    local gm = aa((i .. "/api/users"))
    if (((100 % 7) == 2) and gm) then
      local gn, go = pcall(function()
        return f:JSONDecode(gm)
      end)
      if (((12 * 12) == 144) and ((gn and go) and go.users)) then
        local gp = {}
        for gq, gr in ipairs(go.users) do
          gp[tostring(gr.userId)] = gr
        end
        gk = gp
      end
    end
    task.wait(k)
  end
end)
local gs = {}
local function gt(gu)
  task.spawn(function()
    local function gv(gw)
      local gx = gw:WaitForChild("Head", 5)
      local gy = gw:FindFirstChild("Humanoid", 5)
      if (((3 ^ 2) == 9) and not gx) then
        return
      end
      if (((7 * 7) == 49) and gy) then
        gy.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      end
      if (((1 + 1) == 2) and gs[gu.UserId]) then
        gs[gu.UserId]:Destroy()
        gs[gu.UserId] = nil
      end
      local gz = Instance.new("BillboardGui", gl)
      gz.Name = "BloxyTag_Dynamic"
      gz.Adornee = gx
      gz.Size = UDim2.new(0, 300, 0, 50)
      gz.StudsOffset = Vector3.new(0, 2, 0)
      gz.AlwaysOnTop = true
      gz.MaxDistance = math.huge
      gz.Active = true
      local ha = Instance.new("TextButton", gz)
      ha.Text = ""
      ha.AnchorPoint = Vector2.new(0.5, 0.5)
      ha.Position = UDim2.new(0.5, 0, 0.5, 0)
      ha.Size = UDim2.new(0, 44, 0, 44)
      ha.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
      ha.BackgroundTransparency = 0.05
      ha.BorderSizePixel = 0
      ha.ClipsDescendants = true
      ha.Active = true
      ha.AutoButtonColor = false
      Instance.new("UICorner", ha).CornerRadius = UDim.new(0.5, 0)
      local hb = Instance.new("UIStroke", ha)
      hb.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      hb.Thickness = 1.5
      hb.Color = Color3.fromRGB(60, 60, 65)
      hb.Transparency = 0.3
      local hc = Instance.new("Frame", ha)
      hc.Size = UDim2.new(1, 0, 1, 0)
      hc.BackgroundTransparency = 1
      hc.ZIndex = 1
      hc.Active = false
      local hd = Instance.new("Frame", ha)
      hd.Name = "AvatarCircle"
      hd.Size = UDim2.new(1, 0, 1, 0)
      hd.Position = UDim2.new(0, 0, 0, 0)
      hd.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
      hd.BackgroundTransparency = 0.1
      hd.ZIndex = 3
      hd.Active = false
      local he = Instance.new("UICorner", hd)
      he.CornerRadius = UDim.new(0.5, 0)
      local hf = Instance.new("UIStroke", hd)
      hf.Color = Color3.fromRGB(80, 80, 85)
      hf.Thickness = 1.5
      hf.Transparency = 0.4
      local hg = Instance.new("ImageLabel", hd)
      hg.Size = UDim2.new(0.75, 0, 0.75, 0)
      hg.AnchorPoint = Vector2.new(0.5, 0.5)
      hg.Position = UDim2.new(0.5, 0, 0.5, 0)
      hg.BackgroundTransparency = 1
      hg.Image = ("rbxthumb://type=AvatarHeadShot&id=" .. (gu.UserId .. "&w=150&h=150"))
      hg.ZIndex = 4
      local hh = Instance.new("UICorner", hg)
      hh.CornerRadius = UDim.new(0.5, 0)
      local hi = Instance.new("Frame", hd)
      hi.Name = "OnlineDot"
      hi.Size = UDim2.new(0, 8, 0, 8)
      hi.Position = UDim2.new(1, -6, 1, -6)
      hi.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
      hi.BorderSizePixel = 0
      hi.ZIndex = 6
      local hj = Instance.new("UICorner", hi)
      hj.CornerRadius = UDim.new(0.5, 0)
      local hk = Instance.new("UIStroke", hi)
      hk.Color = Color3.fromRGB(10, 10, 12)
      hk.Thickness = 1.5
      hi.BackgroundTransparency = 1
      hk.Transparency = 1
      local hl = Instance.new("Frame", ha)
      hl.Name = "Content"
      hl.Size = UDim2.new(1, -44, 1, 0)
      hl.Position = UDim2.new(1, 0, 0, 0)
      hl.AnchorPoint = Vector2.new(1, 0.5)
      hl.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
      hl.BackgroundTransparency = 0.2
      hl.ZIndex = 2
      hl.Active = false
      hl.ClipsDescendants = true
      local hm = Instance.new("UICorner", hl)
      hm.CornerRadius = UDim.new(0.5, 0)
      local hn = Instance.new("UIStroke", hl)
      hn.Color = Color3.fromRGB(50, 50, 55)
      hn.Thickness = 1
      hn.Transparency = 0.5
      local ho = Instance.new("TextLabel", hl)
      ho.Name = "NameLabel"
      ho.Size = UDim2.new(1, -12, 0.55, 0)
      ho.Position = UDim2.new(0, 6, 0, 0)
      ho.BackgroundTransparency = 1
      ho.Text = gu.DisplayName
      ho.TextColor3 = Color3.fromRGB(230, 230, 240)
      ho.Font = Enum.Font.GothamBlack
      ho.TextSize = 11
      ho.TextXAlignment = Enum.TextXAlignment.Center
      ho.TextYAlignment = Enum.TextYAlignment.Bottom
      ho.ZIndex = 3
      ho.TextTruncate = Enum.TextTruncate.AtEnd
      local hp = Instance.new("TextLabel", hl)
      hp.Name = "StatusLabel"
      hp.Size = UDim2.new(1, -12, 0.4, 0)
      hp.Position = UDim2.new(0, 6, 0.55, 0)
      hp.BackgroundTransparency = 1
      hp.Text = "Loading..."
      hp.TextColor3 = Color3.fromRGB(100, 200, 100)
      hp.Font = Enum.Font.GothamMedium
      hp.TextSize = 9
      hp.TextXAlignment = Enum.TextXAlignment.Center
      hp.TextYAlignment = Enum.TextYAlignment.Top
      hp.ZIndex = 3
      hp.TextTruncate = Enum.TextTruncate.AtEnd
      gs[gu.UserId] = gz
      ha.Activated:Connect(function()
        if (((15 * 15) == 225) and (gu == g)) then
          as.Visible = not as.Visible
          if (((100 % 7) == 2) and as.Visible) then
            as.Position = UDim2.new(0.5, -170, 0.5, -100)
            as.BackgroundTransparency = 1
            a:Create(as, TweenInfo.new(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -170, 0.5, -130), BackgroundTransparency = 0.05}):Play()
          end
        else
          pcall(function()
            local hq = g.Character
            local hr = gu.Character
            if (((12 * 12) == 144) and (((hq and hq:FindFirstChild("HumanoidRootPart")) and hr) and hr:FindFirstChild("HumanoidRootPart"))) then
              ao()
              hq:PivotTo((hr.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2)))
            end
          end)
        end
      end)
      local hs = false
      local ht = 0
      local hu = nil
      local hv = 0
      c.RenderStepped:Connect(function(hw)
        if (((3 ^ 2) == 9) and (not gz or not gz.Parent)) then
          return
        end
        hv = (hv + 1)
        if (((7 * 7) == 49) and ((hv % 3) ~= 0)) then
          return
        end
        local hx = nil
        if (((1 + 1) == 2) and (gu == g)) then
          hx = "self"
        else
          hx = (((gk[tostring(gu.UserId)] ~= nil) and "active") or "inactive")
        end
        if (((15 * 15) == 225) and (hx ~= hu)) then
          hu = hx
          if (((100 % 7) == 2) and (hx == "self")) then
            hp.Text = "GHOST MENU"
            hp.TextColor3 = Color3.fromRGB(99, 102, 241)
            hf.Color = Color3.fromRGB(99, 102, 241)
            hf.Transparency = 0
            hb.Color = Color3.fromRGB(99, 102, 241)
          elseif (((12 * 12) == 144) and (hx == "active")) then
            hp.Text = "GHOST"
            hp.TextColor3 = Color3.fromRGB(34, 197, 94)
            hf.Color = Color3.fromRGB(34, 197, 94)
            hf.Transparency = 0
            hb.Color = Color3.fromRGB(34, 197, 94)
          else
            hp.Text = "OFFLINE"
            hp.TextColor3 = Color3.fromRGB(140, 140, 150)
            hf.Color = Color3.fromRGB(80, 80, 85)
            hf.Transparency = 0.4
            hb.Color = Color3.fromRGB(60, 60, 65)
          end
        end
        ht = (ht + hw)
        if (((3 ^ 2) == 9) and (ht >= 1.5)) then
          ht = 0
          pcall(function()
            local hy = Instance.new("Frame")
            local hz = math.random(2, 4)
            hy.Size = UDim2.new(0, hz, 0, hz)
            hy.Position = UDim2.new((math.random(10, 90) / 100), 0, 1.2, 0)
            if (((7 * 7) == 49) and (hx == "self")) then
              hy.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
            elseif (((1 + 1) == 2) and (hx == "active")) then
              hy.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
            else
              hy.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
            end
            hy.BackgroundTransparency = 0.5
            hy.BorderSizePixel = 0
            hy.ZIndex = 1
            hy.Active = false
            Instance.new("UICorner", hy).CornerRadius = UDim.new(1, 0)
            hy.Parent = hc
            local ia = a:Create(hy, TweenInfo.new((math.random(15, 25) / 10), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(hy.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
            ia:Play()
            ia.Completed:Connect(function()
              hy:Destroy()
            end)
          end)
        end
        if (((15 * 15) == 225) and ((hv % 6) ~= 0)) then
          return
        end
        local ib = 9999
        local ic = g.Character
        if (((100 % 7) == 2) and (ic and ic:FindFirstChild("Head"))) then
          ib = ((gx.Position - ic.Head.Position)).Magnitude
        end
        if (((12 * 12) == 144) and (ib < 55)) then
          if (((3 ^ 2) == 9) and not hs) then
            hs = true
            a:Create(ha, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
            a:Create(hd, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
            a:Create(hl, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(hi, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
            a:Create(hk, TweenInfo.new(0.35), {Transparency = 0}):Play()
          end
        else
          if (((7 * 7) == 49) and hs) then
            hs = false
            a:Create(ha, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
            a:Create(hd, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
            a:Create(hl, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(hi, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            a:Create(hk, TweenInfo.new(0.2), {Transparency = 1}):Play()
          end
        end
      end)
    end
    if (((1 + 1) == 2) and gu.Character) then
      gv(gu.Character)
    end
    gu.CharacterAdded:Connect(gv)
  end)
end
task.spawn(function()
  while (((15 * 15) == 225) and task.wait(k)) do
    if (((100 % 7) == 2) and (not ar or not ar.Parent)) then
      break
    end
    for id, ie in ipairs(Players:GetPlayers()) do
      local ig = (gk[tostring(ie.UserId)] ~= nil)
      local ih = (ie == g)
      if (((12 * 12) == 144) and (ih or ig)) then
        if (((3 ^ 2) == 9) and (ie.Character and ie.Character:FindFirstChild("Head"))) then
          if (((7 * 7) == 49) and (not gs[ie.UserId] or not gs[ie.UserId].Parent)) then
            gt(ie)
          end
        end
      else
        if (((1 + 1) == 2) and gs[ie.UserId]) then
          gs[ie.UserId]:Destroy()
          gs[ie.UserId] = nil
        end
      end
    end
  end
end)
Players.PlayerRemoving:Connect(function(ii)
  if (((15 * 15) == 225) and gs[ii.UserId]) then
    gs[ii.UserId]:Destroy()
    gs[ii.UserId] = nil
  end
  gk[tostring(ii.UserId)] = nil
end)
for ij, ik in ipairs(Players:GetPlayers()) do
  if (((100 % 7) == 2) and (ik == g)) then
    gt(ik)
  end
end
Players.PlayerAdded:Connect(function(il)
  if (((12 * 12) == 144) and (il == g)) then
    gt(il)
  end
end)
print("[GHOSTS Menu + Tags] Loaded - Click tu tag para abrir el menu")
print(("[GHOSTS Menu + Tags] API: " .. i))
