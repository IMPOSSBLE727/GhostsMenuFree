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
  ch.Active = false
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
  ci.Active = false
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
  cj.Active = false
  cj.Parent = cf
  cf.MouseEnter:Connect(function()
    a:Create(cf, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.10), 0, 0.85)}):Play()
  end)
  cf.MouseLeave:Connect(function()
    a:Create(cf, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)}):Play()
  end)
  cf.MouseButton1Click:Connect(function()
    if (((100 % 7) == 2) and ce) then
      ce()
    end
  end)
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
  cr.Active = false
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
  cs.Active = false
  cs.Parent = cp
  local ct = Instance.new("TextButton")
  ct.Size = UDim2.new(0, 40, 0, 22)
  ct.Position = UDim2.new(1, -52, 0.5, -11)
  ct.BackgroundColor3 = ((cn and bc.Accent) or Color3.fromRGB(80, 82, 88))
  ct.BorderSizePixel = 0
  ct.ZIndex = 18
  ct.Text = ""
  ct.AutoButtonColor = false
  ct.Parent = cp
  Instance.new("UICorner", ct).CornerRadius = UDim.new(1, 0)
  local cu = Instance.new("Frame")
  cu.Size = UDim2.new(0, 18, 0, 18)
  cu.Position = ((cn and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  cu.BackgroundColor3 = ba
  cu.BorderSizePixel = 0
  cu.ZIndex = 19
  cu.Active = false
  cu.Parent = ct
  Instance.new("UICorner", cu).CornerRadius = UDim.new(1, 0)
  local cv = (cn or false)
  local function cw()
    cv = not cv
    warn(("[GHOSTS] Toggle " .. (cl .. (" = " .. tostring(cv)))))
    a:Create(ct, TweenInfo.new(0.2), {BackgroundColor3 = ((cv and bc.Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    a:Create(cu, TweenInfo.new(0.2), {Position = ((cv and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if (((12 * 12) == 144) and co) then
      co(cv)
    end
  end
  ct.MouseButton1Click:Connect(cw)
  table.insert(bx, cp)
  return cp
end
local function cx()
  local cy = Instance.new("Frame")
  cy.Name = "TransparencySlider"
  cy.Size = UDim2.new(1, -28, 0, 70)
  cy.BackgroundTransparency = 1
  cy.LayoutOrder = (#bx + 1)
  cy.ZIndex = 17
  cy.Parent = bu
  local cz = Instance.new("TextLabel")
  cz.Size = UDim2.new(1, -55, 0, 22)
  cz.BackgroundTransparency = 1
  cz.Text = "Transparency"
  cz.TextColor3 = ba
  cz.TextSize = 13
  cz.TextXAlignment = Enum.TextXAlignment.Left
  cz.Font = Enum.Font.GothamMedium
  cz.ZIndex = 18
  cz.Parent = cy
  local da = Instance.new("TextLabel")
  da.Size = UDim2.fromOffset(50, 22)
  da.Position = UDim2.new(1, -50, 0, 0)
  da.BackgroundTransparency = 1
  da.TextColor3 = bc.Accent
  da.TextSize = 12
  da.TextXAlignment = Enum.TextXAlignment.Right
  da.Font = Enum.Font.GothamMedium
  da.ZIndex = 18
  da.Parent = cy
  local db = Instance.new("Frame")
  db.Size = UDim2.new(1, 0, 0, 6)
  db.Position = UDim2.fromOffset(0, 36)
  db.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  db.BorderSizePixel = 0
  db.ZIndex = 18
  db.Parent = cy
  Instance.new("UICorner", db).CornerRadius = UDim.new(1, 0)
  local dc = Instance.new("Frame")
  dc.Size = UDim2.new(bd, 0, 1, 0)
  dc.BackgroundColor3 = bc.Accent
  dc.BorderSizePixel = 0
  dc.ZIndex = 19
  dc.Parent = db
  Instance.new("UICorner", dc).CornerRadius = UDim.new(1, 0)
  local dd = Instance.new("TextButton")
  dd.Size = UDim2.fromOffset(18, 18)
  dd.AnchorPoint = Vector2.new(0.5, 0.5)
  dd.Position = UDim2.new(bd, 0, 0.5, 0)
  dd.BackgroundColor3 = ba
  dd.BorderSizePixel = 0
  dd.Text = ""
  dd.AutoButtonColor = false
  dd.ZIndex = 20
  dd.Parent = db
  Instance.new("UICorner", dd).CornerRadius = UDim.new(1, 0)
  local de = Instance.new("UIStroke")
  de.Color = bc.Accent
  de.Thickness = 2
  de.Transparency = 0.15
  de.Parent = dd
  local df = false
  local function dg(dh)
    local di = db.AbsolutePosition.X
    local dj = db.AbsoluteSize.X
    if (((3 ^ 2) == 9) and (dj <= 0)) then
      return
    end
    local dk = math.clamp((((dh - di)) / dj), 0, 1)
    bd = dk
    dc.Size = UDim2.new(dk, 0, 1, 0)
    dd.Position = UDim2.new(dk, 0, 0.5, 0)
    da.Text = (math.floor(((dk * 100) + 0.5)) .. "%")
    bh.BackgroundTransparency = bd
    for dl, dm in ipairs(bx) do
      if (((7 * 7) == 49) and dm:IsA("TextButton")) then
        dm.BackgroundTransparency = math.clamp((bd + 0.28), 0, 0.85)
      end
    end
  end
  dd.InputBegan:Connect(function(dn)
    if (((1 + 1) == 2) and ((dn.UserInputType == Enum.UserInputType.MouseButton1) or (dn.UserInputType == Enum.UserInputType.Touch))) then
      df = true
      dg(dn.Position.X)
    end
  end)
  db.InputBegan:Connect(function(dp)
    if (((15 * 15) == 225) and ((dp.UserInputType == Enum.UserInputType.MouseButton1) or (dp.UserInputType == Enum.UserInputType.Touch))) then
      df = true
      dg(dp.Position.X)
    end
  end)
  b.InputChanged:Connect(function(dq)
    if (((100 % 7) == 2) and (df and (((dq.UserInputType == Enum.UserInputType.MouseMovement) or (dq.UserInputType == Enum.UserInputType.Touch))))) then
      dg(dq.Position.X)
    end
  end)
  b.InputEnded:Connect(function(dr)
    if (((12 * 12) == 144) and ((dr.UserInputType == Enum.UserInputType.MouseButton1) or (dr.UserInputType == Enum.UserInputType.Touch))) then
      df = false
    end
  end)
  da.Text = (math.floor(((bd * 100) + 0.5)) .. "%")
  table.insert(bx, cy)
  return cy
end
local function ds(dt)
  bc = dt
  bh.BackgroundColor3 = dt.Glass
  bi.Color = dt.Border
  bk.BackgroundColor3 = dt.Accent
  bl.Color = dt.Accent
  bs.TextColor3 = dt.Accent
  bu.ScrollBarImageColor3 = dt.Accent
  for du, dv in pairs(existingTags) do
    if (((3 ^ 2) == 9) and (dv and dv.Parent)) then
      pcall(function()
        local dw = dv.Adornee
        if (((7 * 7) == 49) and (dw and dw.Parent)) then
          local dx = Players:GetPlayerFromCharacter(dw.Parent)
          if (((1 + 1) == 2) and (dx and (dx == g))) then
            local dy = dv:FindFirstChildOfClass("TextButton")
            if (((15 * 15) == 225) and dy) then
              local dz = dy:FindFirstChild("AvatarCircle")
              local ea = dy:FindFirstChildOfClass("UIStroke")
              local eb = dy:FindFirstChild("Content")
              if (((100 % 7) == 2) and dz) then
                local ec = dz:FindFirstChildOfClass("UIStroke")
                if (((12 * 12) == 144) and ec) then
                  ec.Color = dt.Accent
                end
              end
              if (((3 ^ 2) == 9) and ea) then
                ea.Color = dt.Accent
              end
              if (((7 * 7) == 49) and eb) then
                local ed = eb:FindFirstChild("StatusLabel")
                if (((1 + 1) == 2) and ed) then
                  ed.TextColor3 = dt.Accent
                end
              end
            end
          end
        end
      end)
    end
  end
  showSettings()
end
function showSettings()
  by()
  bs.Text = "SETTINGS"
  bt.Visible = true
  cx()
  ck("Show Tags", "Mostrar/ocultar tags sobre los jugadores", _G.tagsEnabled, function(ee)
    _G.tagsEnabled = ee
    warn(("[GHOSTS] _G.tagsEnabled = " .. tostring(_G.tagsEnabled)))
    if (((15 * 15) == 225) and not ee) then
      for ef, eg in pairs(tagConnections) do
        pcall(function()
          eg:Disconnect()
        end)
      end
      tagConnections = {}
      for eh, ei in pairs(tagsGui:GetChildren()) do
        ei:Destroy()
      end
      existingTags = {}
    else
      for ej, ek in ipairs(Players:GetPlayers()) do
        if (((100 % 7) == 2) and (ek.Character and ek.Character:FindFirstChild("Head"))) then
          applyTagToPlayer(ek)
        end
      end
    end
  end)
  for el, em in pairs(bb) do
    cb(("Theme: " .. em.Name), "Cambiar el color del panel", function()
      ds(em)
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
local en = {{name = "Server Admin", icon = "◆", description = "Herramientas del servidor"}, {name = "Visuals", icon = "◆", description = "Opciones visuales"}}
local function eo(ep)
  by()
  bs.Text = ep
  bt.Visible = true
  if (((12 * 12) == 144) and (ep == "Server Admin")) then
    ck("Anti VC Ban", "Proteccion contra voice chat ban system", false, function(eq)
      if (((3 ^ 2) == 9) and eq) then
        ah("antivcban")
      end
    end)
  elseif (((7 * 7) == 49) and (ep == "Visuals")) then
    ck("FlowReanimation", "Reanimation v1.0 - Server protected", false, function(er)
      if (((1 + 1) == 2) and er) then
        task.spawn(function()
          local es = nil
          local ew = {function()
            return game:HttpGet((j .. "/api/script"), true)
          end, function()
            local et = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
            if (((15 * 15) == 225) and et) then
              local eu, ev = pcall(function()
                return et({Url = (j .. "/api/script"), Method = "GET", Timeout = 15})
              end)
              if (((100 % 7) == 2) and (((eu and ev) and (ev.StatusCode == 200)) and ev.Body)) then
                return ev.Body
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
          for ex, ey in ipairs(ew) do
            local ez, fa = pcall(ey)
            if (((12 * 12) == 144) and ((ez and fa) and (fa ~= ""))) then
              es = fa
              break
            end
          end
          if (((3 ^ 2) == 9) and (es and (es ~= ""))) then
            loadstring(es)()
          else
            warn("[GHOSTS] No se pudo obtener FlowReanimation")
          end
        end)
      else
        pcall(function()
          if (((7 * 7) == 49) and _G._FlowReanimCleanup) then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local fb = Players.LocalPlayer.Character
          if (((1 + 1) == 2) and fb) then
            for fc, fd in pairs(fb:GetDescendants()) do
              if (((15 * 15) == 225) and (fd:IsA("BasePart") and (fd.Name == "FakeRoot"))) then
                fd:Destroy()
              end
              if (((100 % 7) == 2) and (fd:IsA("Motor6D") and (fd.Name == "FakeRootJoint"))) then
                fd:Destroy()
              end
            end
          end
        end)
        pcall(function()
          _G._FlowReanimCleanup = nil
          if (((12 * 12) == 144) and (getgenv and getgenv()._FlowReanimCleanup)) then
            getgenv()._FlowReanimCleanup = nil
          end
        end)
      end
    end)
  end
end
local function fe()
  by()
  bs.Text = "COMMANDS"
  bt.Visible = false
  for ff, fg in ipairs(en) do
    cb((fg.icon .. ("  " .. fg.name)), fg.description, function()
      eo(fg.name)
    end)
  end
  cb("◆  Settings", "Personaliza el aspecto de GHOSTS", showSettings)
end
bt.MouseButton1Click:Connect(fe)
fe()
local fh = false
local function fi()
  if (((3 ^ 2) == 9) and fh) then
    return
  end
  fh = true
  fe()
  a:Create(bh, be, {Size = UDim2.fromOffset(ax, ay)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function fj()
  if (((7 * 7) == 49) and not fh) then
    return
  end
  fh = false
  a:Create(bh, bf, {Size = UDim2.fromOffset(av, aw)}):Play()
  a:Create(bm, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  a:Create(bo[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  a:Create(bo[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  a:Create(bo[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bn.MouseButton1Click:Connect(function()
  if (((1 + 1) == 2) and fh) then
    fj()
  else
    fi()
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and bg.Parent) do
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    a:Create(bk, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
local fk = true
_G["tagsEnabled"] = true
local fl = {}
local fm = Instance.new("ScreenGui")
fm.Name = "GhostsTags"
fm.ResetOnSpawn = false
fm.IgnoreGuiInset = true
fm.DisplayOrder = 99
fm.Parent = h
task.spawn(function()
  while (((100 % 7) == 2) and true) do
    y((i .. "/api/register"), {userId = g.UserId, displayName = g.DisplayName})
    task.wait(k)
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and true) do
    local fn = r((i .. "/api/users"))
    if (((3 ^ 2) == 9) and fn) then
      local fo, fp = pcall(function()
        return f:JSONDecode(fn)
      end)
      if (((7 * 7) == 49) and ((fo and fp) and fp.users)) then
        local fq = {}
        for fr, fs in ipairs(fp.users) do
          fq[tostring(fs.userId)] = fs
        end
        fl = fq
      end
    end
    task.wait(l)
  end
end)
local ft = {}
local fu = {}
local function fv(fw)
  task.spawn(function()
    local function fx(fy)
      if (((1 + 1) == 2) and not _G.tagsEnabled) then
        return
      end
      local fz = fy:WaitForChild("Head", 5)
      local ga = fy:FindFirstChild("Humanoid", 5)
      if (((15 * 15) == 225) and not fz) then
        return
      end
      if (((100 % 7) == 2) and ga) then
        ga.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
      end
      if (((12 * 12) == 144) and ft[fw.UserId]) then
        ft[fw.UserId]:Destroy()
        ft[fw.UserId] = nil
      end
      local gb = Instance.new("BillboardGui", fm)
      gb.Name = "BloxyTag_Dynamic"
      gb.Adornee = fz
      gb.Size = UDim2.new(0, 300, 0, 50)
      gb.StudsOffset = Vector3.new(0, 2, 0)
      gb.AlwaysOnTop = true
      gb.MaxDistance = math.huge
      gb.Active = true
      local gc = Instance.new("TextButton", gb)
      gc.Text = ""
      gc.AnchorPoint = Vector2.new(0.5, 0.5)
      gc.Position = UDim2.new(0.5, 0, 0.5, 0)
      gc.Size = UDim2.new(0, 44, 0, 44)
      gc.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
      gc.BackgroundTransparency = 0.05
      gc.BorderSizePixel = 0
      gc.ClipsDescendants = true
      gc.Active = true
      gc.AutoButtonColor = false
      Instance.new("UICorner", gc).CornerRadius = UDim.new(0.5, 0)
      local gd = Instance.new("UIStroke", gc)
      gd.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
      gd.Thickness = 1.5
      gd.Color = Color3.fromRGB(60, 60, 65)
      gd.Transparency = 0.3
      local ge = Instance.new("Frame", gc)
      ge.Size = UDim2.new(1, 0, 1, 0)
      ge.BackgroundTransparency = 1
      ge.ZIndex = 1
      ge.Active = false
      local gf = Instance.new("Frame", gc)
      gf.Name = "AvatarCircle"
      gf.Size = UDim2.new(1, 0, 1, 0)
      gf.Position = UDim2.new(0, 0, 0, 0)
      gf.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
      gf.BackgroundTransparency = 0.1
      gf.ZIndex = 3
      gf.Active = false
      Instance.new("UICorner", gf).CornerRadius = UDim.new(0.5, 0)
      local gg = Instance.new("UIStroke", gf)
      gg.Color = Color3.fromRGB(80, 80, 85)
      gg.Thickness = 1.5
      gg.Transparency = 0.4
      local gh = Instance.new("ImageLabel", gf)
      gh.Size = UDim2.new(0.75, 0, 0.75, 0)
      gh.AnchorPoint = Vector2.new(0.5, 0.5)
      gh.Position = UDim2.new(0.5, 0, 0.5, 0)
      gh.BackgroundTransparency = 1
      gh.Image = ("rbxthumb://type=AvatarHeadShot&id=" .. (fw.UserId .. "&w=150&h=150"))
      gh.ZIndex = 4
      Instance.new("UICorner", gh).CornerRadius = UDim.new(0.5, 0)
      local gi = Instance.new("Frame", gf)
      gi.Name = "OnlineDot"
      gi.Size = UDim2.new(0, 8, 0, 8)
      gi.Position = UDim2.new(1, -6, 1, -6)
      gi.BackgroundColor3 = Color3.fromRGB(80, 220, 80)
      gi.BorderSizePixel = 0
      gi.ZIndex = 6
      Instance.new("UICorner", gi).CornerRadius = UDim.new(0.5, 0)
      local gj = Instance.new("UIStroke", gi)
      gj.Color = Color3.fromRGB(10, 10, 12)
      gj.Thickness = 1.5
      gi.BackgroundTransparency = 1
      gj.Transparency = 1
      local gk = Instance.new("Frame", gc)
      gk.Name = "Content"
      gk.Size = UDim2.new(1, -44, 1, 0)
      gk.Position = UDim2.new(1, 0, 0, 0)
      gk.AnchorPoint = Vector2.new(1, 0.5)
      gk.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
      gk.BackgroundTransparency = 0.2
      gk.ZIndex = 2
      gk.Active = false
      gk.ClipsDescendants = true
      Instance.new("UICorner", gk).CornerRadius = UDim.new(0.5, 0)
      local gl = Instance.new("UIStroke", gk)
      gl.Color = Color3.fromRGB(50, 50, 55)
      gl.Thickness = 1
      gl.Transparency = 0.5
      local gm = Instance.new("TextLabel", gk)
      gm.Name = "NameLabel"
      gm.Size = UDim2.new(1, -12, 0.55, 0)
      gm.Position = UDim2.new(0, 6, 0, 0)
      gm.BackgroundTransparency = 1
      gm.Text = fw.DisplayName
      gm.TextColor3 = Color3.fromRGB(230, 230, 240)
      gm.Font = Enum.Font.GothamBlack
      gm.TextSize = 11
      gm.TextXAlignment = Enum.TextXAlignment.Center
      gm.TextYAlignment = Enum.TextYAlignment.Bottom
      gm.ZIndex = 3
      gm.TextTruncate = Enum.TextTruncate.AtEnd
      local gn = Instance.new("TextLabel", gk)
      gn.Name = "StatusLabel"
      gn.Size = UDim2.new(1, -12, 0.4, 0)
      gn.Position = UDim2.new(0, 6, 0.55, 0)
      gn.BackgroundTransparency = 1
      gn.Text = "Loading..."
      gn.TextColor3 = Color3.fromRGB(100, 200, 100)
      gn.Font = Enum.Font.GothamMedium
      gn.TextSize = 9
      gn.TextXAlignment = Enum.TextXAlignment.Center
      gn.TextYAlignment = Enum.TextYAlignment.Top
      gn.ZIndex = 3
      gn.TextTruncate = Enum.TextTruncate.AtEnd
      ft[fw.UserId] = gb
      gc.MouseButton1Click:Connect(function()
        if (((3 ^ 2) == 9) and (fw ~= g)) then
          pcall(function()
            local go = g.Character
            local gp = fw.Character
            if (((7 * 7) == 49) and (((go and go:FindFirstChild("HumanoidRootPart")) and gp) and gp:FindFirstChild("HumanoidRootPart"))) then
              af()
              go:PivotTo((gp.HumanoidRootPart.CFrame * CFrame.new(4, 0, 2)))
            end
          end)
        end
      end)
      local gq = false
      local gr = 0
      local gs = nil
      local gt = 0
      c.RenderStepped:Connect(function(gu)
        if (((1 + 1) == 2) and (not gb or not gb.Parent)) then
          return
        end
        gt = (gt + 1)
        if (((15 * 15) == 225) and ((gt % 3) ~= 0)) then
          return
        end
        local gv = nil
        if (((100 % 7) == 2) and (fw == g)) then
          gv = "self"
        else
          gv = (((fl[tostring(fw.UserId)] ~= nil) and "active") or "inactive")
        end
        if (((12 * 12) == 144) and (gv ~= gs)) then
          gs = gv
          if (((3 ^ 2) == 9) and (gv == "self")) then
            gn.Text = "GHOST MENU"
            gn.TextColor3 = bc.Accent
            gg.Color = bc.Accent
            gg.Transparency = 0
            gd.Color = bc.Accent
          elseif (((7 * 7) == 49) and (gv == "active")) then
            gn.Text = "GHOST"
            gn.TextColor3 = Color3.fromRGB(34, 197, 94)
            gg.Color = Color3.fromRGB(34, 197, 94)
            gg.Transparency = 0
            gd.Color = Color3.fromRGB(34, 197, 94)
          else
            gn.Text = "OFFLINE"
            gn.TextColor3 = Color3.fromRGB(140, 140, 150)
            gg.Color = Color3.fromRGB(80, 80, 85)
            gg.Transparency = 0.4
            gd.Color = Color3.fromRGB(60, 60, 65)
          end
        end
        gr = (gr + gu)
        if (((1 + 1) == 2) and (gr >= 1.5)) then
          gr = 0
          pcall(function()
            local gw = Instance.new("Frame")
            local gx = math.random(2, 4)
            gw.Size = UDim2.new(0, gx, 0, gx)
            gw.Position = UDim2.new((math.random(10, 90) / 100), 0, 1.2, 0)
            if (((15 * 15) == 225) and (gv == "self")) then
              gw.BackgroundColor3 = bc.Accent
            elseif (((100 % 7) == 2) and (gv == "active")) then
              gw.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
            else
              gw.BackgroundColor3 = Color3.fromRGB(180, 180, 190)
            end
            gw.BackgroundTransparency = 0.5
            gw.BorderSizePixel = 0
            gw.ZIndex = 1
            gw.Active = false
            Instance.new("UICorner", gw).CornerRadius = UDim.new(1, 0)
            gw.Parent = ge
            local gy = a:Create(gw, TweenInfo.new((math.random(15, 25) / 10), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(gw.Position.X.Scale, 0, -0.3, 0), BackgroundTransparency = 1})
            gy:Play()
            gy.Completed:Connect(function()
              gw:Destroy()
            end)
          end)
        end
        if (((12 * 12) == 144) and ((gt % 6) ~= 0)) then
          return
        end
        local gz = 9999
        local ha = g.Character
        if (((3 ^ 2) == 9) and (ha and ha:FindFirstChild("Head"))) then
          gz = ((fz.Position - ha.Head.Position)).Magnitude
        end
        if (((7 * 7) == 49) and (gz < 55)) then
          if (((1 + 1) == 2) and not gq) then
            gq = true
            a:Create(gc, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 180, 0, 44)}):Play()
            a:Create(gf, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 36, 0, 36), Position = UDim2.new(0, 4, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5)}):Play()
            a:Create(gk, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -48, 1, -8), Position = UDim2.new(1, -4, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(gi, TweenInfo.new(0.35), {BackgroundTransparency = 0}):Play()
            a:Create(gj, TweenInfo.new(0.35), {Transparency = 0}):Play()
          end
        else
          if (((15 * 15) == 225) and gq) then
            gq = false
            a:Create(gc, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 44, 0, 44)}):Play()
            a:Create(gf, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), Position = UDim2.new(0, 0, 0, 0), AnchorPoint = Vector2.new(0, 0)}):Play()
            a:Create(gk, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 1, -8), Position = UDim2.new(1, 0, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5)}):Play()
            a:Create(gi, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            a:Create(gj, TweenInfo.new(0.2), {Transparency = 1}):Play()
          end
        end
      end)
    end
    if (((100 % 7) == 2) and fw.Character) then
      fx(fw.Character)
    end
    local hc = fw.CharacterAdded:Connect(function(hb)
      fx(hb)
    end)
    if (((12 * 12) == 144) and fu[fw.UserId]) then
      pcall(function()
        fu[fw.UserId]:Disconnect()
      end)
    end
    fu[fw.UserId] = hc
  end)
end
task.spawn(function()
  while (((3 ^ 2) == 9) and task.wait(l)) do
    if (((7 * 7) == 49) and (not bg or not bg.Parent)) then
      break
    end
    if (((1 + 1) == 2) and not _G.tagsEnabled) then
      for hd, he in pairs(fm:GetChildren()) do
        he:Destroy()
      end
      ft = {}
      for hf, hg in pairs(fu) do
        pcall(function()
          hg:Disconnect()
        end)
      end
      fu = {}
    end
    for hh, hi in ipairs(Players:GetPlayers()) do
      local hj = (fl[tostring(hi.UserId)] ~= nil)
      local hk = (hi == g)
      if (((15 * 15) == 225) and (_G.tagsEnabled and ((hk or hj)))) then
        if (((100 % 7) == 2) and (hi.Character and hi.Character:FindFirstChild("Head"))) then
          if (((12 * 12) == 144) and (not ft[hi.UserId] or not ft[hi.UserId].Parent)) then
            fv(hi)
          end
        end
      else
        if (((3 ^ 2) == 9) and ft[hi.UserId]) then
          ft[hi.UserId]:Destroy()
          ft[hi.UserId] = nil
        end
      end
    end
  end
end)
Players.PlayerRemoving:Connect(function(hl)
  if (((7 * 7) == 49) and ft[hl.UserId]) then
    ft[hl.UserId]:Destroy()
    ft[hl.UserId] = nil
  end
  if (((1 + 1) == 2) and fu[hl.UserId]) then
    pcall(function()
      fu[hl.UserId]:Disconnect()
    end)
    fu[hl.UserId] = nil
  end
  fl[tostring(hl.UserId)] = nil
end)
for hm, hn in ipairs(Players:GetPlayers()) do
  if (((15 * 15) == 225) and ((hn == g) and _G.tagsEnabled)) then
    fv(hn)
  end
end
Players.PlayerAdded:Connect(function(ho)
  if (((100 % 7) == 2) and ((ho == g) and _G.tagsEnabled)) then
    fv(ho)
  end
end)
print("[GHOSTS Dynamic Island] Loaded - Menu arriba con categorias")
print("[GHOSTS Dynamic Island] Tags solo para teleport")
print(("[GHOSTS Dynamic Island] API: " .. i))
