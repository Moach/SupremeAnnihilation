local _, _, iAmSpec, _ = Spring.GetPlayerInfo(Spring.GetMyPlayerID())
--iAmSpec = false
--local teamTable = Spring.GetTeamList(Spring.GetMyAllyTeamID())
local teamTable = Spring.GetTeamList()
table.sort(teamTable,function (a,b)
  if a~= nil and b~=nil then
    local _,_,_,_,_,allyTeam1 = Spring.GetTeamInfo(a)
    local _,_,_,_,_,allyTeam2 = Spring.GetTeamInfo(b)
    
    return allyTeam1<allyTeam2
  else
    return true
  end
end)
local playerTable = Spring.GetPlayerList()
local isRealSpecPlayer = {}

local SpectatorCount = 0

for i,v in ipairs(playerTable) do
  local name,active,spec,teamID = Spring.GetPlayerInfo(v)
  if name ~= "Player" then
    isRealSpecPlayer[v] = spec
    if spec then
      SpectatorCount = SpectatorCount + 1
    end
  end
end

local function TeamName(teamID)
  local playerList = Spring.GetPlayerList(teamID)
  local teamName = ""
  if playerList == nil then
    return "Uknown Team Id"
  end
  for _,v in ipairs(playerList) do
    local name, active, spec = Spring.GetPlayerInfo(v)
    if not spec and name ~= "Player" then
      teamName = teamName .. (name or "nil") .. ", "
    end
  end
  if teamName == "" then
    if side == "spec" then
      teamName = teamName .. "a spectator"
    else
      teamName = teamName .. "an AI or a player who left"
    end
  else
      local _,_,_,_,_,allyTeam = Spring.GetTeamInfo(teamID)
      if allyTeam == nil then
        return "Team ally uknown"
      end
      teamName = string.sub(teamName, 0, -3).." | "..allyTeam
  end
  return teamName
end

local optionMiddleClickToShare = false

if iAmSpec then
  teamTable = Spring.GetTeamList()
  -- remove Gaia
  table.remove(teamTable, #teamTable)
  table.sort(teamTable, function(v1, v2)
    local ally1 = -1
    local ally2 = -1
    for _,allyTeam in ipairs(Spring.GetAllyTeamList()) do
      for _,team in ipairs(Spring.GetTeamList(allyTeam)) do
        if v1 == team then
          ally1 = allyTeam
        end
        if v2 == team then
          ally2 = allyTeam
        end
      end
    end
    return ally1 < ally2
  end)
end

local function NewTextRow(teamID, updateFunction)
  local returnFrames = frames:New("cols", {
    text:New({
      align = "right",
      text = "n/a"
    }),
    text:New({
      align = "right",
      text = "n/a"
    })
  })
  returnFrames.updateEvery = 50
  returnFrames.Update = updateFunction
  return returnFrames
end
local function NewNumberRow(teamID, updateFunction)
  local returnFrames = frames:New("cols", {
    number:New({}),
    number:New({})
  })
  returnFrames.updateEvery = 50
  returnFrames.Update = updateFunction
  return returnFrames
end

local function ResBar(teamID)
  local _, _, _, _, _, aTeam = Spring.GetTeamInfo(teamID)
  
  if not iAmSpec and aTeam ~= Spring.GetMyAllyTeamID() then  
    return text:New({
      align = "center",
      text = "--"
    })
  end
  
  local returnFrames = frames:New("rows", {
    frames:New("cols", {
      bar:New({}),
      border:New(
        color:New(Colors.green)
      )
    }, { -8, 8}),
    frames:New("cols", {
      bar:New({ color = Colors.yellow }),
      border:New(
        color:New(Colors.green)
      )
    }, { -8, 8})
  })
  if not iAmSpec and teamID ~= Spring.GetMyTeamID() then
    returnFrames[1][1]:AddCommand(command:New({
      OnRelease = function(self, x)
        local omlev, _, _, _, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "metal")
        Spring.ShareResources(teamID, "metal", math.floor(x*omlev+0.5))
      end,
      GetDescription = function(self, x)
        local omlev, _, _, _, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "metal")
        return "give "..TeamName(teamID).." "..YellowStr..math.floor(x*omlev+0.5)..WhiteStr.." metal"
      end
    }))
    returnFrames[2][1]:AddCommand(command:New({
      OnRelease = function(self, x)
        local oelev, _, _, _, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "energy")
        Spring.ShareResources(teamID, "energy", math.floor(x*oelev+0.5))
      end,
      GetDescription = function(self, x)
        local oelev, _, _, _, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "energy")
        return "give "..TeamName(teamID).." "..YellowStr..math.floor(x*oelev+0.5)..WhiteStr.." energy"
      end
    }))
  end
  returnFrames.updateEvery = 20
  function returnFrames:Update()
    local _,_,isDead = Spring.GetTeamInfo(teamID)
    if isDead then 
      self:SetSizes({0,0.99})
      self:SetContent(empty:New(),1)
      self:SetContent(text:New({text="\255\255\0\0dead",align="center"}),2)
    else
      local omlev, omstr, ompul, ominc, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "metal")
      local mlev, mstr, mpul, minc, _, _, _, _ = Spring.GetTeamResources(teamID, "metal")
      if minc then
        local rCol = math.min(math.max(2-((minc-mpul)/ominc+2)/2,0),1)
        local gCol = math.min(math.max(((minc-mpul)/ominc+2)/2,0),1)
        self[1][1]:SetValue(mlev/mstr)
        self[1][1].tooltip = TeamName(teamID).." currently has "..YellowStr..math.floor(mlev)..WhiteStr.." metal"..
                             " and can store "..YellowStr..math.floor(mstr).."."
        self[1][2].tooltip = TeamName(teamID).."s income is "..GreenStr..math.floor(minc)..WhiteStr..
                             " and his/her pull is "..RedStr..math.floor(mpul)..WhiteStr.." metal."
        self[1][2][1].color = { rCol, gCol, 0.0, 1.0 }
        local oelev, oestr, oepul, oeinc, _, _, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), "energy")
        local elev, estr, epul, einc, _, _, _, _ = Spring.GetTeamResources(teamID, "energy")
        local rCol = math.min(math.max(2-((einc-epul)/oeinc+2)/2,0),1)
        local gCol = math.min(math.max(((einc-epul)/oeinc+2)/2,0),1)
        self[2][1]:SetValue(elev/estr)
        self[2][1].tooltip = TeamName(teamID).." currently has "..YellowStr..math.floor(elev)..WhiteStr.." energy"..
                             " and can store "..YellowStr..math.floor(estr).."."
        self[2][2].tooltip = TeamName(teamID).."s income is "..GreenStr..math.floor(einc)..WhiteStr..
                             " and his/her pull is "..RedStr..math.floor(epul)..WhiteStr.." energy."
        self[2][2][1].color = { rCol, gCol, 0.0, 1.0 }
      end
    end
  end
  return returnFrames
end
local function MetalStats(teamID)
  local _, _, _, _, _, aTeam = Spring.GetTeamInfo(teamID)
  
  if not iAmSpec and aTeam ~= Spring.GetMyAllyTeamID() then
    return text:New({
      align = "center",
      text = "--"
    })
  else
    return NewNumberRow(teamID, function(self)
      local _,_,isDead = Spring.GetTeamInfo(teamID)
      if isDead==nil or isDead then 
        self:SetSizes({0,0.99})
        self:SetContent(empty:New(),1)
        self:SetContent(text:New({text="\255\255\0\0dead",align="center"}),2)
      else
        local _, _, mpul, minc, _, _, _, _ = Spring.GetTeamResources(teamID, "metal")
        self[1]:SetNumber(minc or 0)
        self[2]:SetNumber(-(mpul or 0))
      end
    end)
  end
end
local function EnergyStats(teamID)
  local _, _, _, _, _, aTeam = Spring.GetTeamInfo(teamID)
  
  if not iAmSpec and aTeam ~= Spring.GetMyAllyTeamID() then
    return text:New({
      align = "center",
      text = "--"
    })
  else
    return NewNumberRow(teamID, function(self)
      local _,_,isDead = Spring.GetTeamInfo(teamID)
      if isDead==nil or isDead then 
        self:SetSizes({0,0.99})
        self:SetContent(empty:New(),1)
        self:SetContent(text:New({text="\255\255\0\0dead",align="center"}),2)
      else
        local _, _, epul, einc, _, _, _, _ = Spring.GetTeamResources(teamID, "energy")
        self[1]:SetNumber(einc or 0)
        self[2]:SetNumber(-(epul or 0))
      end
    end)
  end
end
local function KillsLosses(teamID)
  local _, _, _, _, _, aTeam = Spring.GetTeamInfo(teamID)
  
  if not iAmSpec and aTeam ~= Spring.GetMyAllyTeamID() then
    return text:New({
      align = "center",
      text = "--"
    })
  else
    return NewTextRow(teamID, function(self)
      local killed, died, _, _, _, _ = Spring.GetTeamUnitStats(teamID)
      self[1]:SetText(killed or 0)
      self[2]:SetText(died or 0)
    end)
  end
end
local function CPU(teamID)
  return NewTextRow(teamID, function(self)
    local rawPlayerList = Spring.GetPlayerList(teamID)
    local playerList = {}
    if rawPlayerList == nil then
      self[1]:SetText(RedStr .. "Unknown")
      return 0
    end
    for i,v in ipairs(rawPlayerList) do
      local _,active = Spring.GetPlayerInfo(v)
      if not isRealSpecPlayer[v] and active then
        table.insert(playerList, v)
      end
    end
    if #playerList ~= 1 then
      self[1]:SetText(#playerList)
      self[2]:SetText("players")
    else
      local _, _, _, _, _, pingTime, cpuUsage = Spring.GetPlayerInfo(playerList[1])

      if pingTime == nil or cpuUsage == nil then
        self[1]:SetText(RedStr .. "Unknown player")
        return 0
      end

      local realPing = math.floor((pingTime or 0)*1000+.5)
      local pingColor = GreenStr
      pingColor = (realPing > 700) and YellowStr or pingColor
      pingColor = (realPing > 1500) and RedStr or pingColor

      local realCPU = math.floor((cpuUsage or 0)*100+.5)
      local cpuColor = GreenStr
      cpuColor = (realCPU > 30) and YellowStr or cpuColor
      cpuColor = (realCPU > 45) and RedStr or cpuColor

      self[1]:SetText(pingColor .. realPing)
      self[2]:SetText(cpuColor .. realCPU .. "%")
    end
  end)
end
local function SpecatorCPU(playerId)
  return NewTextRow(playerId, function(self)
      local _, active, _, _, _, pingTime, cpuUsage = Spring.GetPlayerInfo(playerId)
      
      if active ~= nil and active then
        local realPing = math.floor((pingTime or 0)*1000+.5)
        local pingColor = GreenStr
        pingColor = (realPing > 700) and YellowStr or pingColor
        pingColor = (realPing > 1500) and RedStr or pingColor

        local realCPU = math.floor((cpuUsage or 0)*100+.5)
        local cpuColor = GreenStr
        cpuColor = (realCPU > 30) and YellowStr or cpuColor
        cpuColor = (realCPU > 45) and RedStr or cpuColor
    
        self[1]:SetText(pingColor .. realPing)
        self[2]:SetText(cpuColor .. realCPU .. "%")
      else
        self[1]:SetText("\255\255\0\0n/a")
        self[2]:SetText("\255\255\0\0n/a")
      end
  end)
end

local function addPlayerCommands(a,teamID)
  a:AddCommand(command:New({
      button = 3,
      desc = "go to "..TeamName(teamID).."s commander",
      OnRelease = function()
        local units = Spring.GetTeamUnits(teamID)
        if units then
          for _,v in ipairs(units) do
            local unitDefID = Spring.GetUnitDefID(v)
            if UnitDefs[unitDefID].isCommander then
              Spring.SetCameraTarget(Spring.GetUnitPosition(v))
              return true
            end
          end
        end
        Spring.Echo("No Commander found!")
      end
  }))
  if iAmSpec then
    a:AddCommand(command:New({
      button = 2,
      requiresWidget = "ShareUnits",
      desc = "give selected units to "..TeamName(teamID),
      OnRelease = function ()
         Spring.SendCommands({"luaui shareunits "..teamID})
      end
    }))
    a:AddCommand(command:New({
      desc = "spec "..TeamName(teamID),
      OnRelease = function()
        Spring.SendCommands({"specteam "..teamID})
      end
    }))
  else
    a:AddCommand(command:New({
      button = 2,
      desc = "ally/unally with "..TeamName(teamID),
      OnRelease = function()
        Spring.SendCommands({"ally "..teamID})
      end
    }))
  end
  
  return a
end


local function Names(teamID)
  local r,g,b = Spring.GetTeamColor(teamID)
  local a = text:New({ text = "\255" .. string.char(math.floor(r*254),math.floor(g*254),math.floor(b*254)) ..TeamName(teamID), align = "right" })

  return addPlayerCommands(a,teamID)
end

local function SpecatorNames(playerId)
  local name = Spring.GetPlayerInfo(playerId)
  return text:New({
      align = "right",
      text = name
    })
end

local function NewRow(teamID, contentFunction)
  local returnContent = margin:New(
    contentFunction(teamID)
  )
  returnContent.teamID = teamID
  return returnContent
end

local height = 22 + (#teamTable + SpectatorCount)*16

local function NewContent(contentFunction,spectatorContentFunction)
  local contentTable = {}
  
  for i,v in ipairs(teamTable) do
    local _,_,isDead = Spring.GetTeamInfo(v)
    if not isDead then
      table.insert(contentTable, NewRow(v, contentFunction))
    end
  end
  -- spectator add
  for i,v in ipairs(playerTable) do
    local name,active,spec,teamID = Spring.GetPlayerInfo(v)
    if spec and name ~= "Player" then
      table.insert(contentTable, NewRow(v, spectatorContentFunction))
    end
  end
  
  local returnFrames = frames:New("rows", contentTable)
  return returnFrames
end

local function SpectatorLogo(playerId)
   return text:New({
        align = "right",
        text = "S"
      })
end

local function SpecatorNotAvailableInfo(playerId)
    return text:New({
      align = "center",
      text = ""
    })
end
local function Logos(teamID)
  local a = margin:New(frames:New("cols",{text:New({text = ""}),teamLogo:New(teamID)},{-20,20}))
	return addPlayerCommands(a,teamID)
end

local playerInfo = window:New(
  "Player Info",
  frames:New("cols", {
    tabs:New({
      NewContent(Names,SpecatorNames),
      NewContent(Logos,SpectatorLogo)
    },{"Names","Icons"},"TabName"),
    tabs:New({
      NewContent(CPU,SpecatorCPU),
      NewContent(ResBar,SpecatorNotAvailableInfo),
      NewContent(MetalStats,SpecatorNotAvailableInfo),
      NewContent(EnergyStats,SpecatorNotAvailableInfo),
      NewContent(KillsLosses,SpecatorNotAvailableInfo),
    }, { "Ping & CPU", "Resource Bars", "Metal Stats", "Energy Stats", "Kills & Losses" },"Tab2"),
    tabs:New({
      NewContent(CPU,SpecatorCPU),
      NewContent(ResBar,SpecatorNotAvailableInfo),
      NewContent(MetalStats,SpecatorNotAvailableInfo),
      NewContent(EnergyStats,SpecatorNotAvailableInfo),
      NewContent(KillsLosses,SpecatorNotAvailableInfo),
    }, { "Ping & CPU", "Resource Bars", "Metal Stats", "Energy Stats", "Kills & Losses" },"Tab3")

  },{-192,96,96}),
  { 600/1024, height }, { -165/1024, -height }
)

function playerInfo:Initialize()
  local lineHeight = profileManager:LoadValue('Window Positions', { 'Player Info' }, "lineHeight") or 16

  self:ResizeBy(0, #self[1][1][1].children*(lineHeight-self[1][1][1][1]:GetH()))
end
function playerInfo:Shutdown()
  profileManager:SaveValue('Window Positions', { 'Player Info' }, "lineHeight", self[1][1][1][1]:GetH())
end

playerInfo:ResizesItself(false, true)
