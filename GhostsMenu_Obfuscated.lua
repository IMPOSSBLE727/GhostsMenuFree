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
for k, l in pairs(h:GetChildren()) do
  if ((l.Name == "GhostsMenu") or (l.Name == "GHOSTS_DynamicIsland")) then
    l:Destroy()
  end
end
local function m(n)
  local o = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if o then
    local p, q = pcall(function()
      return o({Url = n, Method = "GET", Headers = {["Content-Type"] = "application/json"}})
    end)
    if (((p and q) and (q.StatusCode == 200)) and q.Body) then
      return q.Body
    end
  end
  local r, s = pcall(function()
    return game:HttpGet(n, true)
  end)
  if r then
    return s
  end
  return nil
end
local function t(u, v)
  local w = f:JSONEncode(v)
  local x = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
  if x then
    local y, z = pcall(function()
      return x({Url = u, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = w})
    end)
    if (y and z) then
      return true
    end
  end
  return false
end
local function aa()
  pcall(function()
    local ab = Instance.new("Sound")
    ab.SoundId = "rbxassetid://127439510287856"
    ab.Volume = 2
    ab.Parent = e
    ab:Play()
    d:AddItem(ab, 4)
  end)
end
local function ac(ad)
  task.spawn(function()
    print(("[GHOSTS] Ejecutando: " .. ad))
    local ae = nil
    local af = {function()
      return game:HttpGet((i .. ("/raw/" .. ad)), true)
    end, function()
      return game:HttpGet((i .. ("/api/scripts/" .. ad)))
    end, function()
      return m((i .. ("/raw/" .. ad)))
    end, function()
      return m((i .. ("/api/scripts/" .. ad)))
    end}
    for ag, ah in ipairs(af) do
      local ai, aj = pcall(ah)
      if ((ai and aj) and (#aj > 50)) then
        if (ag >= 3) then
          local ak, al = pcall(function()
            return f:JSONDecode(aj)
          end)
          if ((ak and al) and al.code) then
            ae = al.code
          end
        else
          ae = aj
        end
        if ae then
          break
        end
      end
    end
    if not ae then
      warn(("[GHOSTS] No se pudo obtener: " .. ad))
      return
    end
    ae = ae:gsub("^[├»][┬╗][┬┐]", "")
    ae = ae:gsub("^[\0]+", "")
    local am, an = loadstring(ae)
    if not am then
      warn(("[GHOSTS] Error loadstring " .. (ad .. (": " .. tostring(an)))))
      return
    end
    local ao, ap = pcall(am)
    if ao then
      print(("[GHOSTS] Script ejecutado: " .. ad))
    else
      warn(("[GHOSTS] Error ejecutando " .. (ad .. (": " .. tostring(ap)))))
    end
  end)
end
local aq = {Purple = {Name = "Purple", Accent = Color3.fromRGB(175, 105, 255), Border = Color3.fromRGB(150, 155, 165), Glass = Color3.fromRGB(30, 32, 36)}, Blue = {Name = "Blue", Accent = Color3.fromRGB(80, 160, 255), Border = Color3.fromRGB(125, 170, 220), Glass = Color3.fromRGB(27, 32, 40)}, Red = {Name = "Red", Accent = Color3.fromRGB(255, 90, 105), Border = Color3.fromRGB(220, 130, 140), Glass = Color3.fromRGB(38, 28, 31)}, Green = {Name = "Green", Accent = Color3.fromRGB(80, 220, 145), Border = Color3.fromRGB(125, 190, 155), Glass = Color3.fromRGB(27, 36, 32)}, White = {Name = "White", Accent = Color3.fromRGB(235, 235, 240), Border = Color3.fromRGB(210, 210, 220), Glass = Color3.fromRGB(34, 34, 37)}}
_G["currentTheme"] = aq.Purple
local ar = 0.10
local as = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local at = TweenInfo.new(0.30, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
local au = Instance.new("ScreenGui")
au.Name = "GhostsMenu"
au.ResetOnSpawn = false
au.IgnoreGuiInset = true
au.Parent = h
if (syn and syn.protect_gui) then
  pcall(syn.protect_gui, au)
end
local av, aw = 180, 42
local ax, ay = 350, 380
local az = 14
local ba = Color3.fromRGB(245, 245, 248)
local bb = Instance.new("Frame")
bb.Name = "Island"
bb.AnchorPoint = Vector2.new(0.5, 0)
bb.Size = UDim2.fromOffset(av, aw)
bb.Position = UDim2.new(0.5, 0, 0, az)
bb.BackgroundColor3 = _G["currentTheme"].Glass
bb.BackgroundTransparency = ar
bb.BorderSizePixel = 0
bb.ClipsDescendants = true
bb.ZIndex = 10
bb.Parent = au
Instance.new("UICorner", bb).CornerRadius = UDim.new(0, 24)
local bc = Instance.new("UIStroke")
bc.Color = _G["currentTheme"].Border
bc.Transparency = 0.48
bc.Thickness = 1.2
bc.Parent = bb
local bd = Instance.new("Frame")
bd.Size = UDim2.new(1, -28, 0, 1)
bd.Position = UDim2.fromOffset(14, 1)
bd.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
bd.BackgroundTransparency = 0.65
bd.BorderSizePixel = 0
bd.ZIndex = 11
bd.Parent = bb
local be = Instance.new("Frame")
be.Size = UDim2.fromOffset(9, 9)
be.Position = UDim2.fromOffset(15, 16)
be.BackgroundColor3 = _G["currentTheme"].Accent
be.BorderSizePixel = 0
be.ZIndex = 12
be.Parent = bb
Instance.new("UICorner", be).CornerRadius = UDim.new(1, 0)
local bf = Instance.new("UIStroke")
bf.Color = _G["currentTheme"].Accent
bf.Transparency = 0.35
bf.Thickness = 2
bf.Parent = be
local bg = Instance.new("TextLabel")
bg.Size = UDim2.new(1, -90, 0, 42)
bg.Position = UDim2.fromOffset(36, 0)
bg.BackgroundTransparency = 1
bg.Text = "GHOSTS"
bg.TextColor3 = ba
bg.TextSize = 15
bg.Font = Enum.Font.GothamMedium
bg.ZIndex = 12
bg.Parent = bb
local bh = Instance.new("TextButton")
bh.Size = UDim2.fromOffset(42, 42)
bh.Position = UDim2.new(1, -45, 0, 0)
bh.BackgroundTransparency = 1
bh.Text = ""
bh.AutoButtonColor = false
bh.ZIndex = 30
bh.Parent = bb
local bi = {}
for bj = 1, 3 do
  local bk = Instance.new("Frame")
  bk.Size = UDim2.fromOffset(15, 2)
  bk.Position = UDim2.new(0.5, -7, 0, (15 + ((((bj - 1)) * 4))))
  bk.BackgroundColor3 = ba
  bk.BorderSizePixel = 0
  bk.ZIndex = 31
  bk.Parent = bh
  Instance.new("UICorner", bk).CornerRadius = UDim.new(1, 0)
  bi[bj] = bk
end
local bl = Instance.new("Frame")
bl.Name = "Content"
bl.Size = UDim2.new(1, 0, 1, -48)
bl.Position = UDim2.fromOffset(0, 48)
bl.BackgroundTransparency = 1
bl.ZIndex = 15
bl.Parent = bb
local bm = Instance.new("TextLabel")
bm.Size = UDim2.new(1, -100, 0, 28)
bm.Position = UDim2.fromOffset(20, 4)
bm.BackgroundTransparency = 1
bm.Text = "COMMANDS"
bm.TextColor3 = _G["currentTheme"].Accent
bm.TextSize = 13
bm.TextXAlignment = Enum.TextXAlignment.Left
bm.Font = Enum.Font.GothamMedium
bm.ZIndex = 20
bm.Parent = bl
local bn = Instance.new("TextButton")
bn.Size = UDim2.fromOffset(70, 28)
bn.Position = UDim2.new(1, -90, 0, 4)
bn.BackgroundTransparency = 1
bn.Text = "Back"
bn.TextColor3 = Color3.fromRGB(200, 200, 208)
bn.TextSize = 12
bn.Font = Enum.Font.GothamMedium
bn.AutoButtonColor = false
bn.Visible = false
bn.ZIndex = 21
bn.Parent = bl
local bo = Instance.new("ScrollingFrame")
bo.Name = "Scroll"
bo.Size = UDim2.new(1, -10, 1, -38)
bo.Position = UDim2.fromOffset(5, 36)
bo.BackgroundTransparency = 1
bo.BorderSizePixel = 0
bo.ScrollBarThickness = 3
bo.ScrollBarImageColor3 = _G["currentTheme"].Accent
bo.ScrollBarImageTransparency = 0.35
bo.ScrollingDirection = Enum.ScrollingDirection.Y
bo.AutomaticCanvasSize = Enum.AutomaticSize.Y
bo.ScrollingEnabled = true
bo.Active = true
bo.ZIndex = 16
bo.Parent = bl
local bp = Instance.new("UIPadding", bo)
bp.PaddingTop = UDim.new(0, 2)
bp.PaddingBottom = UDim.new(0, 8)
bp.PaddingLeft = UDim.new(0, 4)
bp.PaddingRight = UDim.new(0, 4)
local bq = Instance.new("UIListLayout")
bq.Padding = UDim.new(0, 6)
bq.SortOrder = Enum.SortOrder.LayoutOrder
bq.Parent = bo
local br = {}
local function bs()
  for bt, bu in ipairs(br) do
    bu:Destroy()
  end
  table.clear(br)
  bo.CanvasPosition = Vector2.zero
end
local function bv(bw, bx, by)
  local bz = Instance.new("TextButton")
  bz.Size = UDim2.new(1, -4, 0, 48)
  bz.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  bz.BackgroundTransparency = math.clamp((ar + 0.28), 0, 0.85)
  bz.BorderSizePixel = 0
  bz.Text = ""
  bz.AutoButtonColor = false
  bz.LayoutOrder = (#br + 1)
  bz.ZIndex = 17
  bz.Parent = bo
  Instance.new("UICorner", bz).CornerRadius = UDim.new(0, 15)
  local ca = Instance.new("UIStroke")
  ca.Color = _G["currentTheme"].Border
  ca.Transparency = 0.78
  ca.Thickness = 1
  ca.Parent = bz
  local cb = Instance.new("TextLabel")
  cb.Size = UDim2.new(1, -55, 0, 21)
  cb.Position = UDim2.fromOffset(15, 5)
  cb.BackgroundTransparency = 1
  cb.Text = bw
  cb.TextColor3 = ba
  cb.TextSize = 14
  cb.TextXAlignment = Enum.TextXAlignment.Left
  cb.Font = Enum.Font.GothamMedium
  cb.ZIndex = 18
  cb.Active = false
  cb.Parent = bz
  local cc = Instance.new("TextLabel")
  cc.Size = UDim2.new(1, -55, 0, 17)
  cc.Position = UDim2.fromOffset(15, 26)
  cc.BackgroundTransparency = 1
  cc.Text = (bx or "")
  cc.TextColor3 = Color3.fromRGB(190, 193, 200)
  cc.TextSize = 10
  cc.TextXAlignment = Enum.TextXAlignment.Left
  cc.Font = Enum.Font.Gotham
  cc.ZIndex = 18
  cc.Active = false
  cc.Parent = bz
  local cd = Instance.new("TextLabel")
  cd.Size = UDim2.fromOffset(25, 48)
  cd.Position = UDim2.new(1, -32, 0, 0)
  cd.BackgroundTransparency = 1
  cd.Text = ">"
  cd.TextColor3 = ba
  cd.TextSize = 22
  cd.Font = Enum.Font.Gotham
  cd.ZIndex = 18
  cd.Active = false
  cd.Parent = bz
  bz.MouseEnter:Connect(function()
    a:Create(bz, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((ar + 0.10), 0, 0.85)}):Play()
  end)
  bz.MouseLeave:Connect(function()
    a:Create(bz, TweenInfo.new(0.15), {BackgroundTransparency = math.clamp((ar + 0.28), 0, 0.85)}):Play()
  end)
  bz.MouseButton1Click:Connect(function()
    if by then
      by()
    end
  end)
  table.insert(br, bz)
  return bz
end
local function ce(cf, cg, ch, ci)
  local cj = Instance.new("TextButton")
  cj.Size = UDim2.new(1, -4, 0, 48)
  cj.BackgroundColor3 = Color3.fromRGB(65, 67, 72)
  cj.BackgroundTransparency = math.clamp((ar + 0.28), 0, 0.85)
  cj.BorderSizePixel = 0
  cj.Text = ""
  cj.AutoButtonColor = false
  cj.LayoutOrder = (#br + 1)
  cj.ZIndex = 17
  cj.Parent = bo
  Instance.new("UICorner", cj).CornerRadius = UDim.new(0, 15)
  local ck = Instance.new("UIStroke")
  ck.Color = _G["currentTheme"].Border
  ck.Transparency = 0.78
  ck.Thickness = 1
  ck.Parent = cj
  local cl = Instance.new("TextLabel")
  cl.Size = UDim2.new(1, -75, 0, 21)
  cl.Position = UDim2.fromOffset(15, 5)
  cl.BackgroundTransparency = 1
  cl.Text = cf
  cl.TextColor3 = ba
  cl.TextSize = 14
  cl.TextXAlignment = Enum.TextXAlignment.Left
  cl.Font = Enum.Font.GothamMedium
  cl.ZIndex = 18
  cl.Active = false
  cl.Parent = cj
  local cm = Instance.new("TextLabel")
  cm.Size = UDim2.new(1, -75, 0, 17)
  cm.Position = UDim2.fromOffset(15, 26)
  cm.BackgroundTransparency = 1
  cm.Text = (cg or "")
  cm.TextColor3 = Color3.fromRGB(190, 193, 200)
  cm.TextSize = 10
  cm.TextXAlignment = Enum.TextXAlignment.Left
  cm.Font = Enum.Font.Gotham
  cm.ZIndex = 18
  cm.Active = false
  cm.Parent = cj
  local cn = Instance.new("Frame")
  cn.Size = UDim2.new(0, 40, 0, 22)
  cn.Position = UDim2.new(1, -52, 0.5, -11)
  cn.BackgroundColor3 = ((ch and _G["currentTheme"].Accent) or Color3.fromRGB(80, 82, 88))
  cn.BorderSizePixel = 0
  cn.ZIndex = 18
  cn.Parent = cj
  Instance.new("UICorner", cn).CornerRadius = UDim.new(1, 0)
  local co = Instance.new("Frame")
  co.Size = UDim2.new(0, 18, 0, 18)
  co.Position = ((ch and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))
  co.BackgroundColor3 = ba
  co.BorderSizePixel = 0
  co.ZIndex = 19
  co.Parent = cn
  Instance.new("UICorner", co).CornerRadius = UDim.new(1, 0)
  local cp = (ch or false)
  local cq = Instance.new("TextButton")
  cq.Size = UDim2.new(0, 40, 0, 22)
  cq.Position = UDim2.new(1, -52, 0.5, -11)
  cq.BackgroundTransparency = 1
  cq.Text = ""
  cq.AutoButtonColor = false
  cq.ZIndex = 20
  cq.Parent = cj
  cq.MouseButton1Click:Connect(function()
    cp = not cp
    a:Create(cn, TweenInfo.new(0.2), {BackgroundColor3 = ((cp and _G["currentTheme"].Accent) or Color3.fromRGB(80, 82, 88))}):Play()
    a:Create(co, TweenInfo.new(0.2), {Position = ((cp and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play()
    if ci then
      ci(cp)
    end
  end)
  table.insert(br, cj)
  return cj
end
local function cr()
  local cs = Instance.new("Frame")
  cs.Name = "TransparencySlider"
  cs.Size = UDim2.new(1, -28, 0, 70)
  cs.BackgroundTransparency = 1
  cs.LayoutOrder = (#br + 1)
  cs.ZIndex = 17
  cs.Parent = bo
  local ct = Instance.new("TextLabel")
  ct.Size = UDim2.new(1, -55, 0, 22)
  ct.BackgroundTransparency = 1
  ct.Text = "Transparency"
  ct.TextColor3 = ba
  ct.TextSize = 13
  ct.TextXAlignment = Enum.TextXAlignment.Left
  ct.Font = Enum.Font.GothamMedium
  ct.ZIndex = 18
  ct.Parent = cs
  local cu = Instance.new("TextLabel")
  cu.Size = UDim2.fromOffset(50, 22)
  cu.Position = UDim2.new(1, -50, 0, 0)
  cu.BackgroundTransparency = 1
  cu.TextColor3 = _G["currentTheme"].Accent
  cu.TextSize = 12
  cu.TextXAlignment = Enum.TextXAlignment.Right
  cu.Font = Enum.Font.GothamMedium
  cu.ZIndex = 18
  cu.Parent = cs
  local cv = Instance.new("Frame")
  cv.Size = UDim2.new(1, 0, 0, 6)
  cv.Position = UDim2.fromOffset(0, 36)
  cv.BackgroundColor3 = Color3.fromRGB(75, 77, 82)
  cv.BorderSizePixel = 0
  cv.ZIndex = 18
  cv.Parent = cs
  Instance.new("UICorner", cv).CornerRadius = UDim.new(1, 0)
  local cw = Instance.new("Frame")
  cw.Size = UDim2.new(ar, 0, 1, 0)
  cw.BackgroundColor3 = _G["currentTheme"].Accent
  cw.BorderSizePixel = 0
  cw.ZIndex = 19
  cw.Parent = cv
  Instance.new("UICorner", cw).CornerRadius = UDim.new(1, 0)
  local cx = Instance.new("TextButton")
  cx.Size = UDim2.fromOffset(18, 18)
  cx.AnchorPoint = Vector2.new(0.5, 0.5)
  cx.Position = UDim2.new(ar, 0, 0.5, 0)
  cx.BackgroundColor3 = ba
  cx.BorderSizePixel = 0
  cx.Text = ""
  cx.AutoButtonColor = false
  cx.ZIndex = 20
  cx.Parent = cv
  Instance.new("UICorner", cx).CornerRadius = UDim.new(1, 0)
  local cy = Instance.new("UIStroke")
  cy.Color = _G["currentTheme"].Accent
  cy.Thickness = 2
  cy.Transparency = 0.15
  cy.Parent = cx
  local cz = false
  local function da(db)
    local dc = cv.AbsolutePosition.X
    local dd = cv.AbsoluteSize.X
    if (dd <= 0) then
      return
    end
    local de = math.clamp((((db - dc)) / dd), 0, 1)
    ar = de
    cw.Size = UDim2.new(de, 0, 1, 0)
    cx.Position = UDim2.new(de, 0, 0.5, 0)
    cu.Text = (math.floor(((de * 100) + 0.5)) .. "%")
    bb.BackgroundTransparency = ar
    for df, dg in ipairs(br) do
      if dg:IsA("TextButton") then
        dg.BackgroundTransparency = math.clamp((ar + 0.28), 0, 0.85)
      end
    end
  end
  cx.InputBegan:Connect(function(dh)
    if ((dh.UserInputType == Enum.UserInputType.MouseButton1) or (dh.UserInputType == Enum.UserInputType.Touch)) then
      cz = true
      da(dh.Position.X)
    end
  end)
  cv.InputBegan:Connect(function(di)
    if ((di.UserInputType == Enum.UserInputType.MouseButton1) or (di.UserInputType == Enum.UserInputType.Touch)) then
      cz = true
      da(di.Position.X)
    end
  end)
  b.InputChanged:Connect(function(dj)
    if (cz and (((dj.UserInputType == Enum.UserInputType.MouseMovement) or (dj.UserInputType == Enum.UserInputType.Touch)))) then
      da(dj.Position.X)
    end
  end)
  b.InputEnded:Connect(function(dk)
    if ((dk.UserInputType == Enum.UserInputType.MouseButton1) or (dk.UserInputType == Enum.UserInputType.Touch)) then
      cz = false
    end
  end)
  cu.Text = (math.floor(((ar * 100) + 0.5)) .. "%")
  table.insert(br, cs)
  return cs
end
_G["applyTheme"] = function(dl)
  _G["currentTheme"] = dl
  bb.BackgroundColor3 = dl.Glass
  bc.Color = dl.Border
  be.BackgroundColor3 = dl.Accent
  bf.Color = dl.Accent
  bm.TextColor3 = dl.Accent
  bo.ScrollBarImageColor3 = dl.Accent
end
_G["showSettings"] = function()
  bs()
  bm.Text = "SETTINGS"
  bn.Visible = true
  cr()
  for dm, dn in pairs(aq) do
    bv(("Theme: " .. dn.Name), "Cambiar el color del panel", function()
      _G["applyTheme"](dn)
      _G["showSettings"]()
    end)
  end
  bv("Reset Appearance", "Restaurar apariencia original", function()
    ar = 0.10
    _G["currentTheme"] = aq.Purple
    bb.BackgroundColor3 = _G["currentTheme"].Glass
    bb.BackgroundTransparency = ar
    bc.Color = _G["currentTheme"].Border
    be.BackgroundColor3 = _G["currentTheme"].Accent
    bf.Color = _G["currentTheme"].Accent
    bm.TextColor3 = _G["currentTheme"].Accent
    bo.ScrollBarImageColor3 = _G["currentTheme"].Accent
    _G["showSettings"]()
  end)
end
local dp = {{name = "Server Admin", description = "Herramientas del servidor"}, {name = "Visuals", description = "Opciones visuales"}}
local function dq(dr)
  bs()
  bm.Text = dr
  bn.Visible = true
  if (dr == "Server Admin") then
    ce("Anti VC Ban", "Proteccion contra voice chat ban system", false, function(ds)
      if ds then
        ac("antivcban")
      end
    end)
  elseif (dr == "Visuals") then
    ce("FlowReanimation", "Reanimation v1.0 - Server protected", false, function(dt)
      if dt then
        task.spawn(function()
          local du = nil
          local dy = {function()
            return game:HttpGet((j .. "/api/script"), true)
          end, function()
            local dv = ((((((type(request) == "function") and request)) or (((type(http_request) == "function") and http_request))) or ((((type(syn) == "table") and (type(syn.request) == "function")) and syn.request))) or ((((type(http) == "table") and (type(http.request) == "function")) and http.request)))
            if dv then
              local dw, dx = pcall(function()
                return dv({Url = (j .. "/api/script"), Method = "GET", Timeout = 15})
              end)
              if (((dw and dx) and (dx.StatusCode == 200)) and dx.Body) then
                return dx.Body
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
          for dz, ea in ipairs(dy) do
            local eb, ec = pcall(ea)
            if ((eb and ec) and (ec ~= "")) then
              du = ec
              break
            end
          end
          if (du and (du ~= "")) then
            loadstring(du)()
          else
            warn("[GHOSTS] No se pudo obtener FlowReanimation")
          end
        end)
      else
        pcall(function()
          if _G._FlowReanimCleanup then
            _G._FlowReanimCleanup()
          end
        end)
        pcall(function()
          local ed = Players.LocalPlayer.Character
          if ed then
            for ee, ef in pairs(ed:GetDescendants()) do
              if (ef:IsA("BasePart") and (ef.Name == "FakeRoot")) then
                ef:Destroy()
              end
              if (ef:IsA("Motor6D") and (ef.Name == "FakeRootJoint")) then
                ef:Destroy()
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
local function eg()
  bs()
  bm.Text = "COMMANDS"
  bn.Visible = false
  for eh, ei in ipairs(dp) do
    bv(ei.name, ei.description, function()
      dq(ei.name)
    end)
  end
  bv("Settings", "Personaliza el aspecto de GHOSTS", _G["showSettings"])
end
bn.MouseButton1Click:Connect(eg)
eg()
local ej = false
local function ek()
  if ej then
    return
  end
  ej = true
  eg()
  a:Create(bb, as, {Size = UDim2.fromOffset(ax, ay)}):Play()
  a:Create(bg, TweenInfo.new(0.22), {Position = UDim2.fromOffset(0, 0), Size = UDim2.new(1, -70, 0, 42)}):Play()
  a:Create(bi[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = 45}):Play()
  a:Create(bi[2], TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
  a:Create(bi[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 20), Rotation = -45}):Play()
end
local function el()
  if not ej then
    return
  end
  ej = false
  a:Create(bb, at, {Size = UDim2.fromOffset(av, aw)}):Play()
  a:Create(bg, TweenInfo.new(0.22), {Position = UDim2.fromOffset(36, 0), Size = UDim2.new(1, -90, 0, 42)}):Play()
  a:Create(bi[1], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 15), Rotation = 0}):Play()
  a:Create(bi[2], TweenInfo.new(0.22), {BackgroundTransparency = 0}):Play()
  a:Create(bi[3], TweenInfo.new(0.22), {Position = UDim2.new(0.5, -7, 0, 23), Rotation = 0}):Play()
end
bh.MouseButton1Click:Connect(function()
  if ej then
    el()
  else
    ek()
  end
end)
task.spawn(function()
  while au.Parent do
    a:Create(be, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0.35}):Play()
    task.wait(0.8)
    a:Create(be, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {BackgroundTransparency = 0}):Play()
    task.wait(0.8)
  end
end)
print("[GHOSTS] Loaded")
