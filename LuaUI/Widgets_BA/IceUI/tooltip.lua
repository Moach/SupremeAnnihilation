local function readFile(name)
  local fileContents = {}
  local content = VFS.LoadFile(name)
  if content then
    local chunk, err = loadstring(content)
    if chunk ~= nil then
      local tmp = {}
      setfenv(chunk, tmp)
      fileContents = chunk()
    else
      return {}
    end
  else
    return {}
  end
  return fileContents
end
local function compareIgnoringType(v1, v2)
  if type(v1) == 'boolean' then
    return not v1 == (v2 == "0" or v2 == 0 or v2 == false)
  end
  if type(v2) == 'boolean' then
    return not v2 == (v1 == "0" or v1 == 0 or v1 == false)
  end
  if type(v1) == 'number' or type(v2) == 'number' then
    return tonumber(v1) == tonumber(v2)
  end
  return v1 == v2
end
local function checkNonDefaultOptions(name, result)
  local options = readFile(name)
  for _,option in ipairs(options) do
    if option.def ~= nil and option.type ~= "string" then
      local value = Spring.GetModOptions()[string.lower(option.key)]
      if value ~= nil and not compareIgnoringType(option.def, value) then
        if option.type == 'bool' then
          value = value == "0" and "No" or "Yes"
        end
        result[option.name] = value
        if type(option.items) == 'table' then
          for _,item in ipairs(option.items) do
            if compareIgnoringType(item.key, value) then
              result[option.name] = item.name
            end
          end
        end
      end
    end
  end
  return result
end
local nonDefault = checkNonDefaultOptions('modoptions.lua', checkNonDefaultOptions('engineoptions.lua', {}))

local newWin = window:New(
  "Tooltip",
  layers:New({
    text:New({ lines=5 }),
    margin:New(
      frames:New("rows", {
        frames:New("cols", {
          text:New({ text = "UNIT NAME" })
        }, {0.99}),
        frames:New("cols", {
          teamLogo:New(),
          text:New({ text = "OWNER" }),
          text:New({ text = "Metal", align = "center" }),
          text:New({ text = "Energy", align = "center" })
        }, {17/304, 211/304,1/8, 1/8 }),
        frames:New("cols", {
          text:New({ text = "HEALTH" }),
          margin:New(
            healthbar:New({}),
            { 0, 0, 0, 0 }
          ),
          number:New({}),
          number:New({})
        }, { 1/3, 5/12, 1/8, 1/8 }),
        frames:New("cols", {
          text:New({ text = "EXPERIENCE" }),
          text:New({ text = "0%" }),
          number:New({}),
          number:New({})
        }, { 1/3,5/12, 1/8, 1/8})
      }, {13/48, 11/48, 12/48, 12/48 }),
      { 2, 2, 2, 2 }
    )
  }),
  {310/1024, 54/768}, {1, 1-55/768}
)

local _, _, iAmSpec, _ = Spring.GetPlayerInfo(Spring.GetMyPlayerID())

local function TeamName(teamID)
  local playerList = Spring.GetPlayerList(teamID)
  local teamName = ""
  for _,v in ipairs(playerList) do
    local name, _, spec = Spring.GetPlayerInfo(v)
    if not spec and name ~= "Player" then
      teamName = teamName .. (name or "nil") .. ", "
    end
  end
  if teamName == "" then
    if side == "spec" then
      teamName = teamName .. "SPEC, "
    else
      teamName = teamName .. "AI, "
    end
  end
  return string.sub(teamName, 0, -3)
end

function newWin:Update()
  local tooltip = string.gsub(Spring.GetCurrentTooltip(), ' %- %- ', ' - ')
  local selectionCount = #Spring.GetSelectedUnits()
  local selectionCountString = selectionCount>1 and " ("..selectionCount.." units selected)" or ""

  if string.find(tooltip, "Speeds T/K/H/S") ~= nil then
    if self.options.showGameInfo.value and Spring.GetGameSeconds() <= 10 then
      tooltip = ''
      for i,v in pairs(nonDefault) do
        if not string.find(i, "game speed") and i ~= 'Max units' then
          tooltip = tooltip .. GreenStr .. i .. ": " .. WhiteStr .. v .. "\n"
        end
      end
      tooltip = tooltip .. GreenStr .. "Wind: " .. WhiteStr .. Game.windMin .. " to " .. Game.windMax
    elseif self.options.hideGroundTooltip.value then
      self[1][1]:SetVisibility(false)
      self[1][2]:SetVisibility(false)
      return
    end
  end
  if self.options.useUnitTooltip.value and string.find(tooltip, "Experience") ~= nil then
    self[1][1]:SetVisibility(false)
    self[1][2]:SetVisibility(true)
    local x,y = Spring.GetMouseState()
    local what, which = Spring.TraceScreenRay(x, y)
    local unitOwner = ""
    if what == "unit" then
      logoTeam = Spring.GetUnitTeam(which)
      unitOwner = TeamName(logoTeam)
    else
      logoTeam = Spring.GetMyTeamID()
    end
    
    local selUnits = Spring.GetSelectedUnits()
      
    if what == "ground" and table.getn(selUnits) > 0 then
      logoTeam = Spring.GetUnitTeam(selUnits[1])
      unitOwner = TeamName(logoTeam)
    end
    
    self[1][2][1][2][2]:SetText(unitOwner .. selectionCountString)
    
    -- draw name and player icon
    for nameStr in string.gmatch(tooltip, "(.*)Health") do
      local _, _, trimmedNameStr = string.find(nameStr, "([^-]*)")
      self[1][2][1][1][1]:SetText(nameStr)
    end
    if logoTeam ~= nil then
      self[1][2][1][2][1]:SetVisibility(true)
      self[1][2][1][2][1]:SetTeamID(logoTeam)
    else
      self[1][2][1][2][1]:SetVisibility(false)
    end

    -- draw health
    for hLevel in string.gmatch(tooltip, "Health ([0-9]+)/") do
      hLvl = hLevel
    end
    for hTotal in string.gmatch(tooltip, "Health [0-9]+/([0-9]+)") do
      hTtl = hTotal
    end
    self[1][2][1][3][2][1]:SetValue(hLvl, hTtl)

    -- draw metal
    for metalInc in string.gmatch(tooltip, "Metal: (.*)/.*En") do
      metalInc = string.sub(metalInc, 5, -5)
      self[1][2][1][3][3]:SetNumber(tonumber(metalInc) or 0)
    end
    for metalExp in string.gmatch(tooltip, "Metal: .*-([0-9\.]*).*En") do
      self[1][2][1][4][3]:SetNumber(-tonumber(metalExp) or 0)
    end
    
    --draw energy
    for energyInc in string.gmatch(tooltip, "Energy: (.*)/.*") do
      energyInc = string.sub(energyInc, 5, -5)
      self[1][2][1][3][4]:SetNumber(tonumber(energyInc) or 0)
    end
    for energyExp in string.gmatch(tooltip, "Energy: .*-([0-9]+\.[0-9]+)") do
      self[1][2][1][4][4]:SetNumber(-tonumber(energyExp) or 0)
    end

    --draw experience
    for experience in string.gmatch(tooltip, "Experience ([0-9]+\.[0-9]+)") do
      self[1][2][1][4][2]:SetText(math.floor(experience*100+0.5).."%")
    end
  else
    self[1][1]:SetVisibility(true)
    self[1][2]:SetVisibility(false)
    self[1][1]:SetText(tooltip .. WhiteStr .. selectionCountString)
  end
end

newWin[1][1]:SetVisibility(false)
newWin:AddCommand(command:New({
  desc = "switch between mouse or help tooltip",
  OnPress=function(self)
    windowManager.helpTooltip = not windowManager.helpTooltip
  end
}))
newWin:AddCommand(command:New({
  button = 2,
  desc = "go to the last point",
  OnPress = function()
    Spring.SendCommands({"LastMsgPos"})
  end
}))
newWin.options = {
  clickThrough = {
    name  = "Click through the window",
    desc  = "Clicking on the tooltip window usually does some things. Enable this to be able to click through it.",
    type  = "bool",
    value = false,
    OnChange = function(self)
      newWin:SetClickthrough(self.value)
    end
  },
  useUnitTooltip = {
    name  = "Special unit tooltip",
    desc  = "Use special tooltip for units.",
    type  = "bool",
    value = true
  },
  showGameInfo = {
    name  = "Show game mode information at start",
    desc  = "Replace the ground tooltip by information about game mode, dgun limit and wind speed while chosing start positions.",
    type  = "bool",
    value = true
  },
  hideGroundTooltip = {
    name  = "Hide ground tooltip",
    desc  = "Hide the tooltip shown when the cursor is over ground.",
    type  = "bool",
    value = false
  }
}

newWin:SetClickthrough(newWin.options.clickThrough.value)
local buildPic = window:New(
  "Tooltip Buildpic",
  buildpic:New(),
  {40/1024, 40/768}, {312/1024, 1-41/768}
)

buildPic.updateEvery = 10
function buildPic:Update()
  local x,y = Spring.GetMouseState()
  local what, which = Spring.TraceScreenRay(x, y)
  if what == "unit" then
    self[1]:SetUnitID(which)
  end
end
