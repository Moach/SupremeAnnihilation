--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_retreat.lua
--  brief:   Allow units to reatreat to a home position
--  author:  Lital Natan (smackware)
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Retreat",
    desc      = "Implement a retreat function",
    author    = "smackware",
    date      = "May 30, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = false  --  loaded by default?
  }
end

-- Needed for Spring.GiveOrder
include("spring.h.lua")

-- Store a retreat home position for each unit
local retreatPoints = {}

-- Enable by command
function widget:TextCommand(command)
  if (command == "retreat") then
	retreat()
  end
  if (command == "sethome") then
	setHome()
  end
  return false
end

-- Enable by key press
function widget:KeyRelease(key, mods)
  if key == 121 then
	retreat()
  end
  if key == 117 then
	setHome()
  end
  return false
end


-- Register creation point for finished units
function widget:UnitFinished(unitID, unitDefID, unitTeam)
 if (unitTeam == Spring.GetMyTeamID()) then
   local x, y, z = Spring.GetUnitPosition(unitID)
   retreatPoints[unitID] = {}
   retreatPoints[unitID][0] = x + (math.random(100,200)*((math.random(0,2)-1))) 
   retreatPoints[unitID][1] = y + (math.random(100,200)*((math.random(0,2)-1)))
   retreatPoints[unitID][2] = z
 end
end

-- Retreat selected units
function retreat() 
  local selUnits = Spring.GetSelectedUnits()
  for _,uid in ipairs(selUnits) do 
   -- Verify unit has retreat point
   if retreatPoints[uid] ~= nil then
    local x = retreatPoints[uid][0]
    local y = retreatPoints[uid][1]
    local z = retreatPoints[uid][2]
    Spring.GiveOrderToUnit(uid,CMD_MOVE, { x, y, z } , {})
   end
  end
end

-- Re set home point
function setHome() 
  local selUnits = Spring.GetSelectedUnits()
  for _,uid in ipairs(selUnits) do 
   local x, y, z = Spring.GetUnitPosition(uid)
   retreatPoints[uid] = {}
   retreatPoints[uid][0] = x
   retreatPoints[uid][1] = y
   retreatPoints[uid][2] = z
  end
end

-- Clear retreat point on unit destroy
function widget:UnitDestroyed(unitID, unitDefID, unitTeam)
  retreatPoints[unitID] = nil
end

-- Clear retreat point on unit destroy
function widget:UnitTaken(unitID, unitDefID, unitTeam)
  widget:UnitDestroyed(unitID, unitDefID)
end

-- Clear retreat point on unit destroy
function widget:UnitGiven(unitID, unitDefID, unitTeam)
  widget:UnitFinished(unitID, unitDefID, unitTeam)
end