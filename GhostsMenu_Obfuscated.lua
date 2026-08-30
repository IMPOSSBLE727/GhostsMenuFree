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
  ck("Show Tags", "Mostrar/ocultar tags sobre los jugadores", tagsEnabled, function(dt)
    tagsEnabled = dt
    if (((12 * 12) == 144) and not dt) then
      for du, dv in pairs(existingTags) do
        if (((3 ^ 2) == 9) and (dv and dv.Parent)) then
          dv:Destroy()
        end
        existingTags[du] = nil
      end
    else
      for dw, dx in ipairs(Players:GetPlayers()) do
        if (((7 * 7) == 49) and (dx.Character and dx.Character:FindFirstChild("Head"))) then
          if (((1 + 1) == 2) and (not existingTags[dx.UserId] or not existingTags[dx.UserId].Parent)) then
            applyTagToPlayer(dx)
          end
        end
      end
    end
  end)
  for dy, dz in pairs(bb) do
    cb(("Theme: " .. dz.Name), "Cambiar el color del panel", function()
      dr(dz)
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
local ea = {{name = "Server Admin", icon = "◆", description = "Herramientas del servidor"}, {name = "Visuals", icon = "◆", description = "Opciones visuales"}}
local function eb(ec)
  by()
  bs.Text = ec
  bt.Visible = true
  if (((15 * 15) == 225) and (ec == "Server Admin")) then
    ck("Anti VC Ban", "Proteccion contra voice chat ban system", false, function(ed)
      if (((100 % 7) == 2) and ed) then
        ah("antivcban")
      end
    end)
  elseif (((12 * 12) == 144) and (ec == "Visuals")) then
    ck("FlowReanimation", "Reanimation v1.0 - Server protected", false, function(ee)
      if (((3 ^ 2) == 9) and ee) then
        task.spawn(function()
          local ef = nil
          local ej = {function()
            return game:HttpGet((j .. "/api/script"), true)
          end, function()
            local eg = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
            if (((7 * 7) == 49) and eg) then
              local eh, ei = pcall(function()
                return eg({Url = (j .. "/api/script"), Method = "GET", Timeout = 15})
              end)
              if (((1 + 1) == 2) and (((eh and ei) and (ei.StatusCode == 200)) and ei.Body)) then
                return ei.Body
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
          for ek, el in ipairs(ej) do
            local em, en = pcall(el)
            if (((15 * 15) == 225) and ((em and en) and (en ~= ""))) then
              ef = en
              break
            end
          end
          if (((100 % 7) == 2) and (ef and (ef ~= ""))) then
            loadstring(ef)()
          else
            warn("[GHOSTS] No se pudo obtener FlowReanimation")
          end
        end)
      else
        pcall(function()
          if (((12 * 12) == 144) and _G._FlowReanimCleanup) then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local eo = Players.LocalPlayer.Character
          if (((3 ^ 2) == 9) and eo) then
            for ep, eq in pairs(eo:GetDescendants()) do
              if (((7 * 7) == 49) and (eq:IsA("BasePart") and (eq.Name == "FakeRoot"))) then
                eq:Destroy()
              end
              if (((1 + 1) == 2) and (eq:IsA("Motor6D") and (eq.Name == "FakeRootJoint"))) then
                eq:Destroy()
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
    end)
  end
end
local function er()
  by()
  bs.Text = "COMMANDS"
  bt.Visible = false
  for es, et in ipairs(ea) do
    cb((et.icon .. ("  " .. et.name)), et.description, function()
      eb(et.name)
    end)
  end
  cb("◆  Settings", "Personaliza el aspecto de GHOSTS", showSettings)
end
bt.Activated:Connect(er)
er()
local eu = false
local function ev()
  if (((100 % 7) == 2) and eu) then
    return
  end
  eu = true
  er()
  a:Create(bh, be, {Size = UDim2.fromOffset(ax, ay)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function ew()
  if (((12 * 12) == 144) and not eu) then
    return
  end
  eu = false
  a:Create(bh, bf, {Size = UDim2.fromOffset(av, aw)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bn.Activated:Connect(function()
  if (((3 ^ 2) == 9) and eu) then
    ew()
  else
    ev()
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and bg.Parent) do
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
local ex = true
local ey = {}
local ez = Instance.new("ScreenGui")
ez.Name = "GhostsTags"
ez.ResetOnSpawn = false
ez.IgnoreGuiInset = true
ez.DisplayOrder = 99
ez.Parent = h
task.spawn(function()
  while (((1 + 1) == 2) and true) do
    y((i .. "/api/register"), {userId = g.UserId, displayName = g.DisplayName})
    task.wait(k)
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and true) do
    local fa = r((i .. "/api/users"))
    if (((100 % 7) == 2) and fa) then
      local fb, fc = pcall(function()
        return f:JSONDecode(fa)
      end)
      if (((12 * 12) == 144) and ((fb and fc) and fc.users)) then
        local fd = {}
        for fe, ff in ipairs(fc.users) do
          fd[tostring(ff.userId)] = ff
        end
        ey = fd
      end
    end
    task.wait(l)
  end
end)
local fg = {}
local function fh(fi)
  task.spawn(function()
    local function fj(fk)
      local fl = fk:WaitForChild("Head", 5)
      local fm = fk:FindFirstChild("Humanoid", 5)
      if (((3 ^ 2) == 9) and not fl) then
        return
      end
      if (((7 * 7) == 49) and fm) then
        fm.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      end
      if (((1 + 1) == 2) and fg[fi.UserId]) then
        fg[fi.UserId]:Destroy()
        fg[fi.UserId] = nil
      end
      local fn = Instance.new("BillboardGui", ez)
      fn.Name = "BloxyTag_Dynamic"
      fn.Adornee = fl
      fn.Size = UDim2.new(0, 300, 0, 50)
      fn.StudsOffset = Vector3.new(0, 2, 0)
      fn.AlwaysOnTop = true
      fn.MaxDistance = math.huge
      fn.Active = true
      local fo = Instance.new("TextButton", fn)
      fo.Text = ""
      fo.AnchorPoint = Vector2.new(0.5, 0.5)
      fo.Position = UDim2.new(0.5, 0, 0.5, 0)
      fo.Size = UDim2.new(0, 44, 0, 44)
      fo.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
      fo.BackgroundTransparency = 0.05
      fo.BorderSizePixel = 0
      fo.ClipsDescendants = true
      fo.Active = true
      fo.AutoButtonColor = false
      Instance.new("UICorner", fo).CornerRadius = UDim.new(0.5, 0)
      local fp = Instance.new("UIStroke", fo)
      fp.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      fp.Thickness = 1.5
      fp.Color = Color3.fromRGB(60, 60, 65)
      fp.Transparency = 0.3
      local fq = Instance.new("Frame", fo)
      fq.Size = UDim2.new(1, 0, 1, 0)
      fq.BackgroundTransparency = 1
      fq.ZIndex = 1
      fq.Active = false
      local fr = Instance.new("Frame", fo)
      fr.Name = "AvatarCircle"
      fr.Size = UDim2.new(1, 0, 1, 0)
      fr.Position = UDim2.new(0, 0, 0, 0)
      fr.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
      fr.BackgroundTransparency = 0.1
      fr.ZIndex = 3
      fr.Active = false
      Instance.new("UICorner", fr).CornerRadius = UDim.new(0.5, 0)
      local fs = Instance.new("UIStroke", fr)
      fs.Color = Color3.fromRGB(80, 80, 85)
      fs.Thickness = 1.5
      fs.Transparency = 0.4
      local ft = Instance.new("ImageLabel", fr)
      ft.Size = UDim2.new(0.75, 0, 0.75, 0)
      ft.AnchorPoint = Vector2.new(0.5, 0.5)
      ft.Position = UDim2.new(0.5, 0, 0.5, 0)
      ft.BackgroundTransparency = 1
      ft.Image = ("rbxthumb://type=AvatarHeadShot&id=" .. (fi.UserId .. "&w=150&h=150"))
      ft.ZIndex = 4
      Instance.new("UICorner", ft).CornerRadius = UDim.new(0.5, 0)
      local fu = Instance.new("Frame", fr)
      fu.Name = "OnlineDot"
      fu.Size = UDim2.new(0, 8, 0, 8)
      fu.Position = UDim2.new(1, -6, 1, -6)
      fu.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
      fu.BorderSizePixel = 0
      fu.ZIndex = 6
      Instance.new("UICorner", fu).CornerRadius = UDim.new(0.5, 0)
      local fv = Instance.new("UIStroke", fu)
      fv.Color = Color3.fromRGB(10, 10, 12)
      fv.Thickness = 1.5
      fu.BackgroundTransparency = 1
      fv.Transparency = 1
      local fw = Instance.new("Frame", fo)
      fw.Name = "Content"
      fw.Size = UDim2.new(1, -44, 1, 0)
      fw.Position = UDim2.new(1, 0, 0, 0)
      fw.AnchorPoint = Vector2.new(1, 0.5)
      fw.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
      fw.BackgroundTransparency = 0.2
      fw.ZIndex = 2
      fw.Active = false
      fw.ClipsDescendants = true
      Instance.new("UICorner", fw).CornerRadius = UDim.new(0.5, 0)
      local fx = Instance.new("UIStroke", fw)
      fx.Color = Color3.fromRGB(50, 50, 55)
      fx.Thickness = 1
      fx.Transparency = 0.5
      local fy = Instance.new("TextLabel", fw)
      fy.Name = "NameLabel"
      fy.Size = UDim2.new(1, -12, 0.55, 0)
      fy.Position = UDim2.new(0, 6, 0, 0)
      fy.BackgroundTransparency = 1
      fy.Text = fi.DisplayName
      fy.TextColor3 = Color3.fromRGB(230, 230, 240)
      fy.Font = Enum.Font.GothamBlack
      fy.TextSize = 11
      fy.TextXAlignment = Enum.TextXAlignment.Center
      fy.TextYAlignment = Enum.TextYAlignment.Bottom
      fy.ZIndex = 3
      fy.TextTruncate = Enum.TextTruncate.AtEnd
      local fz = Instance.new("TextLabel", fw)
      fz.Name = "StatusLabel"
      fz.Size = UDim2.new(1, -12, 0.4, 0)
      fz.Position = UDim2.new(0, 6, 0.55, 0)
      fz.BackgroundTransparency = 1
      fz.Text = "Loading..."
      fz.TextColor3 = Color3.fromRGB(100, 200, 100)
      fz.Font = Enum.Font.GothamMedium
      fz.TextSize = 9
      fz.TextXAlignment = Enum.TextXAlignment.Center
      fz.TextYAlignment = Enum.TextYAlignment.Top
      fz.ZIndex = 3
      fz.TextTruncate = Enum.TextTruncate.AtEnd
      fg[fi.UserId] = fn
      fo.Activated:Connect(function()
        if (((15 * 15) == 225) and (fi ~= g)) then
          pcall(function()
            local ga = g.Character
            local gb = fi.Character
            if (((100 % 7) == 2) and (((ga and ga:FindFirstChild("HumanoidRootPart")) and gb) and gb:FindFirstChild("HumanoidRootPart"))) then
              af()
              ga:PivotTo((gb.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2)))
            end
          end)
        end
      end)
      local gc = false
      local gd = 0
      local ge = nil
      local gf = 0
      c.RenderStepped:Connect(function(gg)
        if (((12 * 12) == 144) and (not fn or not fn.Parent)) then
          return
        end
        gf = (gf + 1)
        if (((3 ^ 2) == 9) and ((gf % 3) ~= 0)) then
          return
        end
        local gh = nil
        if (((7 * 7) == 49) and (fi == g)) then
          gh = "self"
        else
          gh = (((ey[tostring(fi.UserId)] ~= nil) and "active") or "inactive")
        end
        if (((1 + 1) == 2) and (gh ~= ge)) then
          ge = gh
          if (((15 * 15) == 225) and (gh == "self")) then
            fz.Text = "GHOST MENU"
            fz.TextColor3 = Color3.fromRGB(99, 102, 241)
            fs.Color = Color3.fromRGB(99, 102, 241)
            fs.Transparency = 0
            fp.Color = Color3.fromRGB(99, 102, 241)
          elseif (((100 % 7) == 2) and (gh == "active")) then
            fz.Text = "GHOST"
            fz.TextColor3 = Color3.fromRGB(34, 197, 94)
            fs.Color = Color3.fromRGB(34, 197, 94)
            fs.Transparency = 0
            fp.Color = Color3.fromRGB(34, 197, 94)
          else
            fz.Text = "OFFLINE"
            fz.TextColor3 = Color3.fromRGB(140, 140, 150)
            fs.Color = Color3.fromRGB(80, 80, 85)
            fs.Transparency = 0.4
            fp.Color = Color3.fromRGB(60, 60, 65)
          end
        end
        gd = (gd + gg)
        if (((12 * 12) == 144) and (gd >= 1.5)) then
          gd = 0
          pcall(function()
            local gi = Instance.new("Frame")
            local gj = math.random(2, 4)
            gi.Size = UDim2.new(0, gj, 0, gj)
            gi.Position = UDim2.new((math.random(10, 90) / 100), 0, 1.2, 0)
            if (((3 ^ 2) == 9) and (gh == "self")) then
              gi.BackgroundColor3 = Color3.fromRGB(99, 102, 241)
            elseif (((7 * 7) == 49) and (gh == "active")) then
              gi.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
            else
              gi.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
            end
            gi.BackgroundTransparency = 0.5
            gi.BorderSizePixel = 0
            gi.ZIndex = 1
            gi.Active = false
            Instance.new("UICorner", gi).CornerRadius = UDim.new(1, 0)
            gi.Parent = fq
            local gk = a:Create(gi, TweenInfo.new((math.random(15, 25) / 10), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(gi.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
            gk:Play()
            gk.Completed:Connect(function()
              gi:Destroy()
            end)
          end)
        end
        if (((1 + 1) == 2) and ((gf % 6) ~= 0)) then
          return
        end
        local gl = 9999
        local gm = g.Character
        if (((15 * 15) == 225) and (gm and gm:FindFirstChild("Head"))) then
          gl = ((fl.Position - gm.Head.Position)).Magnitude
        end
        if (((100 % 7) == 2) and (gl < 55)) then
          if (((12 * 12) == 144) and not gc) then
            gc = true
            a:Create(fo, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
            a:Create(fr, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
            a:Create(fw, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(fu, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
            a:Create(fv, TweenInfo.new(0.35), {Transparency = 0}):Play()
          end
        else
          if (((3 ^ 2) == 9) and gc) then
            gc = false
            a:Create(fo, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
            a:Create(fr, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
            a:Create(fw, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(fu, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            a:Create(fv, TweenInfo.new(0.2), {Transparency = 1}):Play()
          end
        end
      end)
    end
    if (((7 * 7) == 49) and fi.Character) then
      fj(fi.Character)
    end
    fi.CharacterAdded:Connect(fj)
  end)
end
task.spawn(function()
  while (((1 + 1) == 2) and task.wait(l)) do
    if (((15 * 15) == 225) and (not bg or not bg.Parent)) then
      break
    end
    for gn, go in ipairs(Players:GetPlayers()) do
      local gp = (ey[tostring(go.UserId)] ~= nil)
      local gq = (go == g)
      if (((100 % 7) == 2) and (ex and ((gq or gp)))) then
        if (((12 * 12) == 144) and (go.Character and go.Character:FindFirstChild("Head"))) then
          if (((3 ^ 2) == 9) and (not fg[go.UserId] or not fg[go.UserId].Parent)) then
            fh(go)
          end
        end
      else
        if (((7 * 7) == 49) and fg[go.UserId]) then
          fg[go.UserId]:Destroy()
          fg[go.UserId] = nil
        end
      end
    end
  end
end)
Players.PlayerRemoving:Connect(function(gr)
  if (((1 + 1) == 2) and fg[gr.UserId]) then
    fg[gr.UserId]:Destroy()
    fg[gr.UserId] = nil
  end
  ey[tostring(gr.UserId)] = nil
end)
for gs, gt in ipairs(Players:GetPlayers()) do
  if (((15 * 15) == 225) and (gt == g)) then
    fh(gt)
  end
end
Players.PlayerAdded:Connect(function(gu)
  if (((100 % 7) == 2) and (gu == g)) then
    fh(gu)
  end
end)
print("[GHOSTS Dynamic Island] Loaded - Menu arriba con categorias")
print("[GHOSTS Dynamic Island] Tags solo para teleport")
print(("[GHOSTS Dynamic Island] API: " .. i))
