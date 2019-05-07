--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Air Factory Fly by Default",
    desc      = "Sets new aircraft factories to have their units stay airborne once complete, instead of landing somewhere awkward - and sets land at 50%",
    author    = "Moach",
    date      = "Mar 20, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = false  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local unitSet = {}

local GiveOrderToUnit = Spring.GiveOrderToUnit

local unitArray = {
	"armap",
	"armaap",
	"armplat",
	"corap",
	"coraap",
	"corplat",
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
  for i, v in pairs(unitArray) do
    unitSet[v] = true
  end
end

function widget:GameStart()
  widget:PlayerChanged()
end

function widget:UnitCreated(unitID, unitDefID, unitTeam)
  local ud = UnitDefs[unitDefID]
   if ((ud ~= nil) and (unitTeam == Spring.GetMyTeamID())) then
    for i, v in pairs(unitSet) do
      if (unitSet[ud.name]) then
        GiveOrderToUnit(unitID, CMD.AUTOREPAIRLEVEL, { 2 }, { })
		GiveOrderToUnit(unitID, CMD.IDLEMODE, { 0 }, { })
      end
    end
  end
end

--------------------------------------------------------------------------------
