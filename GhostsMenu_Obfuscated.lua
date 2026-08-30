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
local j = "https://ghostsreanim.mountflysoo.workers.dev"
local k = 30
local l = 5
for m, n in pairs(h:GetChildren()) do
  if (((1 + 1) == 2) and (((n.Name == "GhostsMenu") or (n.Name == "GHOSTS_DynamicIsland")) or (n.Name == "GhostsTags"))) then
    n:Destroy()
  end
end
local o = {}
local function p(q)
  table.insert(o, q)
  return q
end
local function r(s)
  local t = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if (((15 * 15) == 225) and t) then
    local u, v = pcall(function()
      return t({Url = s, Method = "GET", Headers = {["Content-Type"] = "application/json"}})
    end)
    if (((100 % 7) == 2) and (((u and v) and (v.StatusCode == 200)) and v.Body)) then
      return v.Body
    end
  end
  local w, x = pcall(function()
    return game:HttpGet(s, true)
  end)
  if (((12 * 12) == 144) and w) then
    return x
  end
  return nil
end
local function y(z, aa)
  local ab = f:JSONEncode(aa)
  local ac = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if (((3 ^ 2) == 9) and ac) then
    local ad, ae = pcall(function()
      return ac({Url = z, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = ab})
    end)
    if (((7 * 7) == 49) and (ad and ae)) then
      return true
    end
  end
  return false
end
local function af()
  pcall(function()
    local ag = Instance.new("Sound")
    ag.SoundId = "rbxassetid://127439510287856"
    ag.Volume = 2
    ag.Parent = e
    ag:Play()
    d:AddItem(ag, 4)
  end)
end
local function ah(ai)
  task.spawn(function()
    print(("[GHOSTS] Ejecutando: " .. ai))
    local aj = nil
    local ak = {function()
      return game:HttpGet((i .. ("/raw/" .. ai)), true)
    end, function()
      return game:HttpGet((i .. ("/api/scripts/" .. ai)))
    end, function()
      return r((i .. ("/raw/" .. ai)))
    end, function()
      return r((i .. ("/api/scripts/" .. ai)))
    end}
    for al, am in ipairs(ak) do
      local an, ao = pcall(am)
      if (((1 + 1) == 2) and ((an and ao) and (#ao > 50))) then
        if (((15 * 15) == 225) and (al >= 3)) then
          local ap, aq = pcall(function()
            return f:JSONDecode(ao)
          end)
          if (((100 % 7) == 2) and ((ap and aq) and aq.code)) then
            aj = aq.code
          end
        else
          aj = ao
        end
        if (((12 * 12) == 144) and aj) then
          break
        end
      end
    end
    if (((3 ^ 2) == 9) and not aj) then
      warn(("[GHOSTS] No se pudo obtener: " .. ai))
      return
    end
    aj = aj:gsub("^[ï][»][¿]", "")
    aj = aj:gsub("^[\0]+", "")
    local ar, as = loadstring(aj)
    if (((7 * 7) == 49) and not ar) then
      warn(("[GHOSTS] Error loadstring " .. (ai .. (": " .. tostring(as)))))
      return
    end
    local at, au = pcall(ar)
    if (((1 + 1) == 2) and at) then
      print(("[GHOSTS] Script ejecutado: " .. ai))
    else
      warn(("[GHOSTS] Error ejecutando " .. (ai .. (": " .. tostring(au)))))
    end
  end)
end
local av, aw = 180, 42
local ax, ay = 350, 380
local az = 14
local ba = Color3.fromRGB(245, 245, 248)
local bb = {Purple = {Name = "Purple", Accent = Color3.fromRGB(175, 105, 255), Border = Color3.fromRGB(150, 155, 165), Glass = Color3.fromRGB(30, 32, 36)}, Blue = {Name = "Blue", Accent = Color3.fromRGB(80, 160, 255), Border = Color3.fromRGB(125, 170, 220), Glass = Color3.fromRGB(27, 32, 40)}, Red = {Name = "Red", Accent = Color3.fromRGB(255, 90, 105), Border = Color3.fromRGB(220, 130, 140), Glass = Color3.fromRGB(38, 28, 31)}, Green = {Name = "Green", Accent = Color3.fromRGB(80, 220, 145), Border = Color3.fromRGB(125, 190, 155), Glass = Color3.fromRGB(27, 36, 32)}, White = {Name = "White", Accent = Color3.fromRGB(235, 235, 240), Border = Color3.fromRGB(210, 210, 220), Glass = Color3.fromRGB(34, 34, 37)}}
local bc = bb.Purple
local bd = 0.10
local be = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local bf = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local bg = Instance.new("ScreenGui")
bg.Name = "GhostsMenu"
bg.ResetOnSpawn = false
bg.IgnoreGuiInset = true
bg.DisplayOrder = 100
bg.Parent = h
if (((15 * 15) == 225) and (syn and syn.protect_gui)) then
  pcall(syn.protect_gui, bg)
end
local bh = Instance.new("Frame")
bh.Name = "Island"
bh.AnchorPoint = Vector2.new(0.5, 0)
bh.Size = UDim2.fromOffset(av, aw)
bh.Position = UDim2.new(0.5, 0, 0, az)
bh.BackgroundColor3 = bc.Glass
bh.BackgroundTransparency = bd
bh.BorderSizePixel = 0
bh.ClipsDescendants = true
bh.ZIndex = 10
bh.Parent = bg
Instance.new("UICorner", bh).CornerRadius = UDim.new(0, 24)
local bi = Instance.new("UIStroke")
bi.Color = bc.Border
bi.Transparency = 0.48
bi.Thickness = 1.2
bi.Parent = bh
local bj = Instance.new("Frame")
bj.Size = UDim2.new(1, -28, 0, 1)
bj.Position = UDim2.fromOffset(14, 1)
bj.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
bj.BackgroundTransparency = 0.65
bj.BorderSizePixel = 0
bj.ZIndex = 11
bj.Parent = bh
local bk = Instance.new("Frame")
bk.Size = UDim2.fromOffset(9, 9)
bk.Position = UDim2.fromOffset(15, 16)
bk.BackgroundColor3 = bc.Accent
bk.BorderSizePixel = 0
bk.ZIndex = 12
bk.Parent = bh
Instance.new("UICorner", bk).CornerRadius = UDim.new(1, 0)
local bl = Instance.new("UIStroke")
bl.Color = bc.Accent
bl.Transparency = 0.35
bl.Thickness = 2
bl.Parent = bk
local bm = Instance.new("TextLabel")
bm.Size = UDim2.new(1, -90, 0, 42)
bm.Position = UDim2.fromOffset(36, 0)
bm.BackgroundTransparency = 1
bm.Text = "GHOSTS"
bm.TextColor3 = ba
bm.TextSize = 15
bm.Font = Enum.Font.GothamMedium
bm.ZIndex = 12
bm.Parent = bh
local bn = Instance.new("TextButton")
bn.Size = UDim2.fromOffset(42, 42)
bn.Position = UDim2.new(1, -45, 0, 0)
bn.BackgroundTransparency = 1
bn.Text = ""
bn.AutoButtonColor = false
bn.ZIndex = 30
bn.Parent = bh
local bo = {}
for bp = 1, 3 do
  local bq = Instance.new("Frame")
  bq.Size = UDim2.fromOffset(15, 2)
  bq.Position = UDim2.new(0.5, -7, 0, (15 + ((((bp - 1)) * 4))))
  bq.BackgroundColor3 = ba
  bq.BorderSizePixel = 0
  bq.ZIndex = 31
  bq.Parent = bn
  Instance.new("UICorner", bq).CornerRadius = UDim.new(1, 0)
  bo[bp] = bq
end
local br = Instance.new("Frame")
br.Name = "Content"
br.Size = UDim2.new(1, 0, 1, -48)
br.Position = UDim2.fromOffset(0, 48)
br.BackgroundTransparency = 1
br.ZIndex = 15
br.Parent = bh
local bs = Instance.new("TextLabel")
bs.Size = UDim2.new(1, -100, 0, 28)
bs.Position = UDim2.fromOffset(20, 4)
bs.BackgroundTransparency = 1
bs.Text = "COMMANDS"
bs.TextColor3 = bc.Accent
bs.TextSize = 13
bs.TextXAlignment = Enum.TextXAlignment.Left
bs.Font = Enum.Font.GothamMedium
bs.ZIndex = 20
bs.Parent = br
local bt = Instance.new("TextButton")
bt.Size = UDim2.fromOffset(70, 28)
bt.Position = UDim2.new(1, -90, 0, 4)
bt.BackgroundTransparency = 1
bt.Text = "‹ Back"
bt.TextColor3 = Color3.fromRGB(200, 200, 208)
bt.TextSize = 12
bt.Font = Enum.Font.GothamMedium
bt.AutoButtonColor = false
bt.Visible = false
bt.ZIndex = 21
bt.Parent = br
local bu = Instance.new("ScrollingFrame")
bu.Name = "Scroll"
bu.Size = UDim2.new(1, -10, 1, -38)
bu.Position = UDim2.fromOffset(5, 36)
bu.BackgroundTransparency = 1
bu.BorderSizePixel = 0
bu.ScrollBarThickness = 3
bu.ScrollBarImageColor3 = bc.Accent
bu.ScrollBarImageTransparency = 0.35
bu.ScrollingDirection = Enum.ScrollingDirection.Y
bu.AutomaticCanvasSize = Enum.AutomaticSize.Y
bu.ScrollingEnabled = true
bu.Active = true
bu.ZIndex = 16
bu.Parent = br
Instance.new("UIPadding", bu).PaddingTop = UDim.new(0, 2)
bu:FindFirstChildOfClass("UIPadding")
Instance.new("UIPadding", bu)
local bv = bu:FindFirstChildOfClass("UIPadding")
bv.PaddingBottom = UDim.new(0, 8)
bv.PaddingLeft = UDim.new(0, 4)
bv.PaddingRight = UDim.new(0, 4)
local bw = Instance.new("UIListLayout")
bw.Padding = UDim.new(0, 6)
bw.SortOrder = Enum.SortOrder.LayoutOrder
bw.Parent = bu
local bx = {}
local function by()
  for bz, ca in ipairs(bx) do
    ca:Destroy()
  end
  table.clear(bx)
  bu.CanvasPosition = Vector2.zero
end
local function cb(cc, cd, ce)
  local cf = Instance.new("TextButton")
  cf.Size = UDim2.new(1, -4, 0, 48)
  cf.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  cf.BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)
  cf.BorderSizePixel = 0
  cf.Text = ""
  cf.AutoButtonColor = false
  cf.LayoutOrder = (#bx + 1)
  cf.ZIndex = 17
  cf.Parent = bu
  Instance.new("UICorner", cf).CornerRadius = UDim.new(0, 15)
  local cg = Instance.new("UIStroke")
  cg.Color = bc.Border
  cg.Transparency = 0.78
  cg.Thickness = 1
  cg.Parent = cf
  local ch = Instance.new("TextLabel")
  ch.Size = UDim2.new(1, -55, 0, 21)
  ch.Position = UDim2.fromOffset(15, 5)
  ch.BackgroundTransparency = 1
  ch.Text = cc
  ch.TextColor3 = ba
  ch.TextSize = 14
  ch.TextXAlignment = Enum.TextXAlignment.Left
  ch.Font = Enum.Font.GothamMedium
  ch.ZIndex = 18
  ch.Parent = cf
  local ci = Instance.new("TextLabel")
  ci.Size = UDim2.new(1, -55, 0, 17)
  ci.Position = UDim2.fromOffset(15, 26)
  ci.BackgroundTransparency = 1
  ci.Text = (cd or "")
  ci.TextColor3 = Color3.fromRGB(190, 193, 200)
  ci.TextSize = 10
  ci.TextXAlignment = Enum.TextXAlignment.Left
  ci.Font = Enum.Font.Gotham
  ci.ZIndex = 18
  ci.Parent = cf
  local cj = Instance.new("TextLabel")
  cj.Size = UDim2.fromOffset(25, 48)
  cj.Position = UDim2.new(1, -32, 0, 0)
  cj.BackgroundTransparency = 1
  cj.Text = "›"
  cj.TextColor3 = ba
  cj.TextSize = 22
  cj.Font = Enum.Font.Gotham
  cj.ZIndex = 18
  cj.Parent = cf
  cf.MouseEnter:Connect(function()
    a:Create(cf, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.10), 0, 0.85)}):Play()
  end)
  cf.MouseLeave:Connect(function()
    a:Create(cf, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)}):Play()
  end)
  cf.Activated:Connect(ce)
  table.insert(bx, cf)
  return cf
end
local function ck(cl, cm, cn, co)
  local cp = Instance.new("TextButton")
  cp.Size = UDim2.new(1, -4, 0, 48)
  cp.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  cp.BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)
  cp.BorderSizePixel = 0
  cp.Text = ""
  cp.AutoButtonColor = false
  cp.LayoutOrder = (#bx + 1)
  cp.ZIndex = 17
  cp.Parent = bu
  Instance.new("UICorner", cp).CornerRadius = UDim.new(0, 15)
  local cq = Instance.new("UIStroke")
  cq.Color = bc.Border
  cq.Transparency = 0.78
  cq.Thickness = 1
  cq.Parent = cp
  local cr = Instance.new("TextLabel")
  cr.Size = UDim2.new(1, -75, 0, 21)
  cr.Position = UDim2.fromOffset(15, 5)
  cr.BackgroundTransparency = 1
  cr.Text = cl
  cr.TextColor3 = ba
  cr.TextSize = 14
  cr.TextXAlignment = Enum.TextXAlignment.Left
  cr.Font = Enum.Font.GothamMedium
  cr.ZIndex = 18
  cr.Parent = cp
  local cs = Instance.new("TextLabel")
  cs.Size = UDim2.new(1, -75, 0, 17)
  cs.Position = UDim2.fromOffset(15, 26)
  cs.BackgroundTransparency = 1
  cs.Text = (cm or "")
  cs.TextColor3 = Color3.fromRGB(190, 193, 200)
  cs.TextSize = 10
  cs.TextXAlignment = Enum.TextXAlignment.Left
  cs.Font = Enum.Font.Gotham
  cs.ZIndex = 18
  cs.Parent = cp
  local ct = Instance.new("Frame")
  ct.Size = UDim2.new(0, 40, 0, 22)
  ct.Position = UDim2.new(1, -52, 0.5, -11)
  ct.BackgroundColor3 = ((cn and bc.Accent) or Color3.fromRGB(80, 82, 88))
  ct.BorderSizePixel = 0
  ct.ZIndex = 18
  ct.Parent = cp
  Instance.new("UICorner", ct).CornerRadius = UDim.new(1, 0)
  local cu = Instance.new("Frame")
  cu.Size = UDim2.new(0, 18, 0, 18)
  cu.Position = ((cn and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  cu.BackgroundColor3 = ba
  cu.BorderSizePixel = 0
  cu.ZIndex = 19
  cu.Parent = ct
  Instance.new("UICorner", cu).CornerRadius = UDim.new(1, 0)
  local cv = (cn or false)
  cp.MouseEnter:Connect(function()
    a:Create(cp, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.10), 0, 0.85)}):Play()
  end)
  cp.MouseLeave:Connect(function()
    a:Create(cp, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)}):Play()
  end)
  cp.Activated:Connect(function()
    cv = not cv
    a:Create(ct, TweenInfo.new(0.2), {BackgroundColor3 = ((cv and bc.Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    a:Create(cu, TweenInfo.new(0.2), {Position = ((cv and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if (((100 % 7) == 2) and co) then
      co(cv)
    end
  end)
  table.insert(bx, cp)
  return cp
end
local function cw()
  local cx = Instance.new("Frame")
  cx.Name = "TransparencySlider"
  cx.Size = UDim2.new(1, -28, 0, 70)
  cx.BackgroundTransparency = 1
  cx.LayoutOrder = (#bx + 1)
  cx.ZIndex = 17
  cx.Parent = bu
  local cy = Instance.new("TextLabel")
  cy.Size = UDim2.new(1, -55, 0, 22)
  cy.BackgroundTransparency = 1
  cy.Text = "Transparency"
  cy.TextColor3 = ba
  cy.TextSize = 13
  cy.TextXAlignment = Enum.TextXAlignment.Left
  cy.Font = Enum.Font.GothamMedium
  cy.ZIndex = 18
  cy.Parent = cx
  local cz = Instance.new("TextLabel")
  cz.Size = UDim2.fromOffset(50, 22)
  cz.Position = UDim2.new(1, -50, 0, 0)
  cz.BackgroundTransparency = 1
  cz.TextColor3 = bc.Accent
  cz.TextSize = 12
  cz.TextXAlignment = Enum.TextXAlignment.Right
  cz.Font = Enum.Font.GothamMedium
  cz.ZIndex = 18
  cz.Parent = cx
  local da = Instance.new("Frame")
  da.Size = UDim2.new(1, 0, 0, 6)
  da.Position = UDim2.fromOffset(0, 36)
  da.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  da.BorderSizePixel = 0
  da.ZIndex = 18
  da.Parent = cx
  Instance.new("UICorner", da).CornerRadius = UDim.new(1, 0)
  local db = Instance.new("Frame")
  db.Size = UDim2.new(bd, 0, 1, 0)
  db.BackgroundColor3 = bc.Accent
  db.BorderSizePixel = 0
  db.ZIndex = 19
  db.Parent = da
  Instance.new("UICorner", db).CornerRadius = UDim.new(1, 0)
  local dc = Instance.new("TextButton")
  dc.Size = UDim2.fromOffset(18, 18)
  dc.AnchorPoint = Vector2.new(0.5, 0.5)
  dc.Position = UDim2.new(bd, 0, 0.5, 0)
  dc.BackgroundColor3 = ba
  dc.BorderSizePixel = 0
  dc.Text = ""
  dc.AutoButtonColor = false
  dc.ZIndex = 20
  dc.Parent = da
  Instance.new("UICorner", dc).CornerRadius = UDim.new(1, 0)
  local dd = Instance.new("UIStroke")
  dd.Color = bc.Accent
  dd.Thickness = 2
  dd.Transparency = 0.15
  dd.Parent = dc
  local de = false
  local function df(dg)
    local dh = da.AbsolutePosition.X
    local di = da.AbsoluteSize.X
    if (((12 * 12) == 144) and (di <= 0)) then
      return
    end
    local dj = math.clamp((((dg - dh)) / di), 0, 1)
    bd = dj
    db.Size = UDim2.new(dj, 0, 1, 0)
    dc.Position = UDim2.new(dj, 0, 0.5, 0)
    cz.Text = (math.floor(((dj * 100) + 0.5)) .. "%")
    bh.BackgroundTransparency = bd
    for dk, dl in ipairs(bx) do
      if (((3 ^ 2) == 9) and dl:IsA("TextButton")) then
        dl.BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)
      end
    end
  end
  dc.InputBegan:Connect(function(dm)
    if (((7 * 7) == 49) and ((dm.UserInputType == Enum.UserInputType.MouseButton1) or (dm.UserInputType == Enum.UserInputType.Touch))) then
      de = true
      df(dm.Position.X)
    end
  end)
  da.InputBegan:Connect(function(dn)
    if (((1 + 1) == 2) and ((dn.UserInputType == Enum.UserInputType.MouseButton1) or (dn.UserInputType == Enum.UserInputType.Touch))) then
      de = true
      df(dn.Position.X)
    end
  end)
  b.InputChanged:Connect(function(dp)
    if (((15 * 15) == 225) and (de and (((dp.UserInputType == Enum.UserInputType.MouseMovement) or (dp.UserInputType == Enum.UserInputType.Touch))))) then
      df(dp.Position.X)
    end
  end)
  b.InputEnded:Connect(function(dq)
    if (((100 % 7) == 2) and ((dq.UserInputType == Enum.UserInputType.MouseButton1) or (dq.UserInputType == Enum.UserInputType.Touch))) then
      de = false
    end
  end)
  cz.Text = (math.floor(((bd * 100) + 0.5)) .. "%")
  table.insert(bx, cx)
  return cx
end
local function dr(ds)
  bc = ds
  bh.BackgroundColor3 = ds.Glass
  bi.Color = ds.Border
  bk.BackgroundColor3 = ds.Accent
  bl.Color = ds.Accent
  bs.TextColor3 = ds.Accent
  bu.ScrollBarImageColor3 = ds.Accent
  showSettings()
end
function showSettings()
  by()
  bs.Text = "SETTINGS"
  bt.Visible = true
  cw()
  for dt, du in pairs(bb) do
    cb(("Theme: " .. du.Name), "Cambiar el color del panel", function()
      dr(du)
    end)
  end
  cb("Reset Appearance", "Restaurar apariencia original", function()
    bd = 0.10
    bc = bb.Purple
    bh.BackgroundColor3 = bc.Glass
    bh.BackgroundTransparency = bd
    bi.Color = bc.Border
    bk.BackgroundColor3 = bc.Accent
    bl.Color = bc.Accent
    bs.TextColor3 = bc.Accent
    bu.ScrollBarImageColor3 = bc.Accent
    showSettings()
  end)
end
local dv = {{name = "Server Admin", icon = "◆", description = "Herramientas del servidor"}, {name = "Scripts", icon = "◆", description = "Tus scripts y herramientas"}, {name = "Visuals", icon = "◆", description = "Opciones visuales"}, {name = "Player", icon = "◆", description = "Opciones del jugador"}}
local function dw(dx)
  by()
  bs.Text = dx
  bt.Visible = true
  if (((12 * 12) == 144) and (dx == "Server Admin")) then
    ck("Anti VC Ban", "Proteccion contra voice chat ban system", false, function(dy)
      if (((3 ^ 2) == 9) and dy) then
        ah("antivcban")
      end
    end)
  elseif (((7 * 7) == 49) and (dx == "Scripts")) then
    cb("Speed 50", "WalkSpeed = 50", function()
      pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
      end)
    end)
    cb("Speed 100", "WalkSpeed = 100", function()
      pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
      end)
    end)
    cb("Speed 200", "WalkSpeed = 200", function()
      pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
      end)
    end)
    cb("Reset Speed", "WalkSpeed = 16", function()
      pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
      end)
    end)
    ck("Noclip", "Atravesar paredes", false, function(dz)
      _G.GhostsNoclip = dz
    end)
    ck("Infinite Jump", "Saltar sin limite", false, function(ea)
      _G.GhostsInfJump = ea
    end)
  elseif (((1 + 1) == 2) and (dx == "Visuals")) then
    ck("FlowReanimation", "Reanimation v1.0 - Server protected", false, function(eb)
      if (((15 * 15) == 225) and eb) then
        task.spawn(function()
          local ec = nil
          local eg = {function()
            return game:HttpGet((j .. "/api/script"), true)
          end, function()
            local ed = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
            if (((100 % 7) == 2) and ed) then
              local ee, ef = pcall(function()
                return ed({Url = (j .. "/api/script"), Method = "GET", Timeout = 15})
              end)
              if (((12 * 12) == 144) and (((ee and ef) and (ef.StatusCode == 200)) and ef.Body)) then
                return ef.Body
              end
            end
            return nil
          end, function()
            return readfile("FlowReanimation.lua")
          end, function()
            return readfile("FlowReanimation.lua.txt")
          end, function()
            return readfile("ghostsreanim.lua")
          end}
          for eh, ei in ipairs(eg) do
            local ej, ek = pcall(ei)
            if (((3 ^ 2) == 9) and ((ej and ek) and (ek ~= ""))) then
              ec = ek
              break
            end
          end
          if (((7 * 7) == 49) and (ec and (ec ~= ""))) then
            loadstring(ec)()
          else
            warn("[GHOSTS] No se pudo obtener FlowReanimation")
          end
        end)
      else
        pcall(function()
          if (((1 + 1) == 2) and _G._FlowReanimCleanup) then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local el = Players.LocalPlayer.Character
          if (((15 * 15) == 225) and el) then
            for em, en in pairs(el:GetDescendants()) do
              if (((100 % 7) == 2) and (en:IsA("BasePart") and (en.Name == "FakeRoot"))) then
                en:Destroy()
              end
              if (((12 * 12) == 144) and (en:IsA("Motor6D") and (en.Name == "FakeRootJoint"))) then
                en:Destroy()
              end
            end
          end
        end)
        pcall(function()
          _G._FlowReanimCleanup = nil
          if (((3 ^ 2) == 9) and (getgenv and getgenv()._FlowReanimCleanup)) then
            getgenv()._FlowReanimCleanup = nil
          end
        end)
      end
    end)
  elseif (((7 * 7) == 49) and (dx == "Player")) then
    cb("Reset Character", "Morir y respawnear", function()
      pcall(function()
        local eo = Players.LocalPlayer.Character
        if (((1 + 1) == 2) and (eo and eo:FindFirstChildOfClass("Humanoid"))) then
          eo:FindFirstChildOfClass("Humanoid").Health = 0
        end
      end)
    end)
  end
end
local function ep()
  by()
  bs.Text = "COMMANDS"
  bt.Visible = false
  for eq, er in ipairs(dv) do
    cb((er.icon .. ("  " .. er.name)), er.description, function()
      dw(er.name)
    end)
  end
  cb("◆  Settings", "Personaliza el aspecto de GHOSTS", showSettings)
end
bt.Activated:Connect(ep)
ep()
local es = false
local function et()
  if (((15 * 15) == 225) and es) then
    return
  end
  es = true
  ep()
  a:Create(bh, be, {Size = UDim2.fromOffset(ax, ay)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function eu()
  if (((100 % 7) == 2) and not es) then
    return
  end
  es = false
  a:Create(bh, bf, {Size = UDim2.fromOffset(av, aw)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bn.Activated:Connect(function()
  if (((12 * 12) == 144) and es) then
    eu()
  else
    et()
  end
end)
task.spawn(function()
  while (((3 ^ 2) == 9) and bg.Parent) do
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
local ev = {}
local ew = Instance.new("ScreenGui")
ew.Name = "GhostsTags"
ew.ResetOnSpawn = false
ew.IgnoreGuiInset = true
ew.DisplayOrder = 99
ew.Parent = h
task.spawn(function()
  while (((7 * 7) == 49) and true) do
    y((i .. "/api/register"), {userId = g.UserId, displayName = g.DisplayName})
    task.wait(k)
  end
end)
task.spawn(function()
  while (((1 + 1) == 2) and true) do
    local ex = r((i .. "/api/users"))
    if (((15 * 15) == 225) and ex) then
      local ey, ez = pcall(function()
        return f:JSONDecode(ex)
      end)
      if (((100 % 7) == 2) and ((ey and ez) and ez.users)) then
        local fa = {}
        for fb, fc in ipairs(ez.users) do
          fa[tostring(fc.userId)] = fc
        end
        ev = fa
      end
    end
    task.wait(l)
  end
end)
local fd = {}
local function fe(ff)
  task.spawn(function()
    local function fg(fh)
      local fi = fh:WaitForChild("Head", 5)
      local fj = fh:FindFirstChild("Humanoid", 5)
      if (((12 * 12) == 144) and not fi) then
        return
      end
      if (((3 ^ 2) == 9) and fj) then
        fj.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      end
      if (((7 * 7) == 49) and fd[ff.UserId]) then
        fd[ff.UserId]:Destroy()
        fd[ff.UserId] = nil
      end
      local fk = Instance.new("BillboardGui", ew)
      fk.Name = "BloxyTag_Dynamic"
      fk.Adornee = fi
      fk.Size = UDim2.new(0, 300, 0, 50)
      fk.StudsOffset = Vector3.new(0, 2, 0)
      fk.AlwaysOnTop = true
      fk.MaxDistance = math.huge
      fk.Active = true
      local fl = Instance.new("TextButton", fk)
      fl.Text = ""
      fl.AnchorPoint = Vector2.new(0.5, 0.5)
      fl.Position = UDim2.new(0.5, 0, 0.5, 0)
      fl.Size = UDim2.new(0, 44, 0, 44)
      fl.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
      fl.BackgroundTransparency = 0.05
      fl.BorderSizePixel = 0
      fl.ClipsDescendants = true
      fl.Active = true
      fl.AutoButtonColor = false
      Instance.new("UICorner", fl).CornerRadius = UDim.new(0.5, 0)
      local fm = Instance.new("UIStroke", fl)
      fm.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      fm.Thickness = 1.5
      fm.Color = Color3.fromRGB(60, 60, 65)
      fm.Transparency = 0.3
      local fn = Instance.new("Frame", fl)
      fn.Size = UDim2.new(1, 0, 1, 0)
      fn.BackgroundTransparency = 1
      fn.ZIndex = 1
      fn.Active = false
      local fo = Instance.new("Frame", fl)
      fo.Name = "AvatarCircle"
      fo.Size = UDim2.new(1, 0, 1, 0)
      fo.Position = UDim2.new(0, 0, 0, 0)
      fo.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
      fo.BackgroundTransparency = 0.1
      fo.ZIndex = 3
      fo.Active = false
      Instance.new("UICorner", fo).CornerRadius = UDim.new(0.5, 0)
      local fp = Instance.new("UIStroke", fo)
      fp.Color = Color3.fromRGB(80, 80, 85)
      fp.Thickness = 1.5
      fp.Transparency = 0.4
      local fq = Instance.new("ImageLabel", fo)
      fq.Size = UDim2.new(0.75, 0, 0.75, 0)
      fq.AnchorPoint = Vector2.new(0.5, 0.5)
      fq.Position = UDim2.new(0.5, 0, 0.5, 0)
      fq.BackgroundTransparency = 1
      fq.Image = ("rbxthumb://type=AvatarHeadShot&id=" .. (ff.UserId .. "&w=150&h=150"))
      fq.ZIndex = 4
      Instance.new("UICorner", fq).CornerRadius = UDim.new(0.5, 0)
      local fr = Instance.new("Frame", fo)
      fr.Name = "OnlineDot"
      fr.Size = UDim2.new(0, 8, 0, 8)
      fr.Position = UDim2.new(1, -6, 1, -6)
      fr.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
      fr.BorderSizePixel = 0
      fr.ZIndex = 6
      Instance.new("UICorner", fr).CornerRadius = UDim.new(0.5, 0)
      local fs = Instance.new("UIStroke", fr)
      fs.Color = Color3.fromRGB(10, 10, 12)
      fs.Thickness = 1.5
      fr.BackgroundTransparency = 1
      fs.Transparency = 1
      local ft = Instance.new("Frame", fl)
      ft.Name = "Content"
      ft.Size = UDim2.new(1, -44, 1, 0)
      ft.Position = UDim2.new(1, 0, 0, 0)
      ft.AnchorPoint = Vector2.new(1, 0.5)
      ft.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
      ft.BackgroundTransparency = 0.2
      ft.ZIndex = 2
      ft.Active = false
      ft.ClipsDescendants = true
      Instance.new("UICorner", ft).CornerRadius = UDim.new(0.5, 0)
      local fu = Instance.new("UIStroke", ft)
      fu.Color = Color3.fromRGB(50, 50, 55)
      fu.Thickness = 1
      fu.Transparency = 0.5
      local fv = Instance.new("TextLabel", ft)
      fv.Name = "NameLabel"
      fv.Size = UDim2.new(1, -12, 0.55, 0)
      fv.Position = UDim2.new(0, 6, 0, 0)
      fv.BackgroundTransparency = 1
      fv.Text = ff.DisplayName
      fv.TextColor3 = Color3.fromRGB(230, 230, 240)
      fv.Font = Enum.Font.GothamBlack
      fv.TextSize = 11
      fv.TextXAlignment = Enum.TextXAlignment.Center
      fv.TextYAlignment = Enum.TextYAlignment.Bottom
      fv.ZIndex = 3
      fv.TextTruncate = Enum.TextTruncate.AtEnd
      local fw = Instance.new("TextLabel", ft)
      fw.Name = "StatusLabel"
      fw.Size = UDim2.new(1, -12, 0.4, 0)
      fw.Position = UDim2.new(0, 6, 0.55, 0)
      fw.BackgroundTransparency = 1
      fw.Text = "Loading..."
      fw.TextColor3 = Color3.fromRGB(100, 200, 100)
      fw.Font = Enum.Font.GothamMedium
      fw.TextSize = 9
      fw.TextXAlignment = Enum.TextXAlignment.Center
      fw.TextYAlignment = Enum.TextYAlignment.Top
      fw.ZIndex = 3
      fw.TextTruncate = Enum.TextTruncate.AtEnd
      fd[ff.UserId] = fk
      fl.Activated:Connect(function()
        if (((1 + 1) == 2) and (ff ~= g)) then
          pcall(function()
            local fx = g.Character
            local fy = ff.Character
            if (((15 * 15) == 225) and (((fx and fx:FindFirstChild("HumanoidRootPart")) and fy) and fy:FindFirstChild("HumanoidRootPart"))) then
              af()
              fx:PivotTo((fy.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2)))
            end
          end)
        end
      end)
      local fz = false
      local ga = 0
      local gb = nil
      local gc = 0
      c.RenderStepped:Connect(function(gd)
        if (((100 % 7) == 2) and (not fk or not fk.Parent)) then
          return
        end
        gc = (gc + 1)
        if (((12 * 12) == 144) and ((gc % 3) ~= 0)) then
          return
        end
        local ge = nil
        if (((3 ^ 2) == 9) and (ff == g)) then
          ge = "self"
        else
          ge = (((ev[tostring(ff.UserId)] ~= nil) and "active") or "inactive")
        end
        if (((7 * 7) == 49) and (ge ~= gb)) then
          gb = ge
          if (((1 + 1) == 2) and (ge == "self")) then
            fw.Text = "GHOST MENU"
            fw.TextColor3 = Color3.fromRGB(99, 102, 241)
            fp.Color = Color3.fromRGB(99, 102, 241)
            fp.Transparency = 0
            fm.Color = Color3.fromRGB(99, 102, 241)
          elseif (((15 * 15) == 225) and (ge == "active")) then
            fw.Text = "GHOST"
            fw.TextColor3 = Color3.fromRGB(34, 197, 94)
            fp.Color = Color3.fromRGB(34, 197, 94)
            fp.Transparency = 0
            fm.Color = Color3.fromRGB(34, 197, 94)
          else
            fw.Text = "OFFLINE"
            fw.TextColor3 = Color3.fromRGB(140, 140, 150)
            fp.Color = Color3.fromRGB(80, 80, 85)
            fp.Transparency = 0.4
            fm.Color = Color3.fromRGB(60, 60, 65)
          end
        end
        ga = (ga + gd)
        if (((100 % 7) == 2) and (ga >= 1.5)) then
          ga = 0
          pcall(function()
            local gf = Instance.new("Frame")
            local gg = math.random(2, 4)
            gf.Size = UDim2.new(0, gg, 0, gg)
            gf.Position = UDim2.new((math.random(10, 90) / 100), 0, 1.2, 0)
            if (((12 * 12) == 144) and (ge == "self")) then
              gf.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
            elseif (((3 ^ 2) == 9) and (ge == "active")) then
              gf.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
            else
              gf.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
            end
            gf.BackgroundTransparency = 0.5
            gf.BorderSizePixel = 0
            gf.ZIndex = 1
            gf.Active = false
            Instance.new("UICorner", gf).CornerRadius = UDim.new(1, 0)
            gf.Parent = fn
            local gh = a:Create(gf, TweenInfo.new((math.random(15, 25) / 10), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(gf.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
            gh:Play()
            gh.Completed:Connect(function()
              gf:Destroy()
            end)
          end)
        end
        if (((7 * 7) == 49) and ((gc % 6) ~= 0)) then
          return
        end
        local gi = 9999
        local gj = g.Character
        if (((1 + 1) == 2) and (gj and gj:FindFirstChild("Head"))) then
          gi = ((fi.Position - gj.Head.Position)).Magnitude
        end
        if (((15 * 15) == 225) and (gi < 55)) then
          if (((100 % 7) == 2) and not fz) then
            fz = true
            a:Create(fl, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
            a:Create(fo, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
            a:Create(ft, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(fr, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
            a:Create(fs, TweenInfo.new(0.35), {Transparency = 0}):Play()
          end
        else
          if (((12 * 12) == 144) and fz) then
            fz = false
            a:Create(fl, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
            a:Create(fo, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
            a:Create(ft, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(fr, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            a:Create(fs, TweenInfo.new(0.2), {Transparency = 1}):Play()
          end
        end
      end)
    end
    if (((3 ^ 2) == 9) and ff.Character) then
      fg(ff.Character)
    end
    ff.CharacterAdded:Connect(fg)
  end)
end
task.spawn(function()
  while (((7 * 7) == 49) and task.wait(l)) do
    if (((1 + 1) == 2) and (not bg or not bg.Parent)) then
      break
    end
    for gk, gl in ipairs(Players:GetPlayers()) do
      local gm = (ev[tostring(gl.UserId)] ~= nil)
      local gn = (gl == g)
      if (((15 * 15) == 225) and (gn or gm)) then
        if (((100 % 7) == 2) and (gl.Character and gl.Character:FindFirstChild("Head"))) then
          if (((12 * 12) == 144) and (not fd[gl.UserId] or not fd[gl.UserId].Parent)) then
            fe(gl)
          end
        end
      else
        if (((3 ^ 2) == 9) and fd[gl.UserId]) then
          fd[gl.UserId]:Destroy()
          fd[gl.UserId] = nil
        end
      end
    end
  end
end)
Players.PlayerRemoving:Connect(function(go)
  if (((7 * 7) == 49) and fd[go.UserId]) then
    fd[go.UserId]:Destroy()
    fd[go.UserId] = nil
  end
  ev[tostring(go.UserId)] = nil
end)
for gp, gq in ipairs(Players:GetPlayers()) do
  if (((1 + 1) == 2) and (gq == g)) then
    fe(gq)
  end
end
Players.PlayerAdded:Connect(function(gr)
  if (((15 * 15) == 225) and (gr == g)) then
    fe(gr)
  end
end)
print("[GHOSTS Dynamic Island] Loaded - Menu arriba con categorias")
print("[GHOSTS Dynamic Island] Tags solo para teleport")
print(("[GHOSTS Dynamic Island] API: " .. i))
