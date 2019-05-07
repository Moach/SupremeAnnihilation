--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    cmd_assis_units_maneuver.lua
--  brief:   Sets new assists units to maneuver
--  author:  Moach
--
--  Copyright (C) 2497. (yes, I'm from the future)
--  Licensed under the terms of the GNU GPL, v2 or quite a lot later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Assist Units Maneuver",
    desc      = "Sets new frontline repait units to Maneuver regardless of factory setting",
    author    = "Moach",
    date      = "What day is it again?",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local unitSet = {}

local unitArray = {
  "armrect",
  "cornecro",
  "armfark",
  "cormando",
  "corfast",
  "armconsul",
}


----------------------------------------------
------------------------------------------

function widget:PlayerChanged(playerID)
  if Spring.GetSpectatingState() then
    widgetHandler:RemoveWidget(self)
  end
end

function widget:Initialize()
  if Spring.IsReplay() or Spring.GetGameFrame() > 0 then
    widget:PlayerChanged()
  end
end

function widget:GameStart()
  widget:PlayerChanged()
end

function widget:UnitCreated(unitID, unitDefID, unitTeam)
    local ud = UnitDefs[unitDefID]
    if ( (ud ~= nil) and (unitTeam == Spring.GetMyTeamID()) ) then
		if (unitArray[ud.name] ~= nil) then
			Spring.GiveOrderToUnit(unitID, CMD.MOVE_STATE, { 1 }, {}) -- does not work! why does it not work?!  ... meh, prob'ly the factory setting applies after the 'created' event (dammit)
		end
    end
end

--------------------------------------------------------------------------------
