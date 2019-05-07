--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Krow Setup",
    desc      = "Sets Krows to land at 50% and 'fly' automatically",
    author    = "TheFatController",
    date      = "21 November 2008",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local CORCRW = UnitDefNames["corcrw"].id or nil

if not CORCRW then
  widgetHandler:RemoveWidget()  
end

local myTeamID
local GiveOrderToUnit = Spring.GiveOrderToUnit

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GameStart()
  myTeamID = Spring.GetMyTeamID()
end

function widget:UnitFinished(unitID, unitDefID, unitTeam)
  if (unitDefID == CORCRW) and (unitTeam == myTeamID) then
    GiveOrderToUnit(unitID, CMD.AUTOREPAIRLEVEL, { 2 }, { })
    GiveOrderToUnit(unitID, CMD.IDLEMODE, { 0 }, { })
  end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

