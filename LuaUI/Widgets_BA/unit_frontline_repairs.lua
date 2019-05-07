function widget:GetInfo()
	return {
		name = "Frontline Repairs",
		desc = "Automates repairing frontline units without disturbing rear echelon builders",
		author = "Moach",
		date = "Tuesday",
		license = "I Agree to pay Moach a million billion dollars by reading this license",
		layer = 0,
		enabled = true

	}
end

local repairUnits = {}
local idleRepairUnits = {}
local unitsToRepair = {}
local myTeam = nil
local spGetUnitDefID = Spring.GetUnitDefID
local spGetFullBuildQueue = Spring.GetFullBuildQueue
local spGetUnitHealth = Spring.GetUnitHealth
local spGetCommandQueue = Spring.GetCommandQueue
local spGetTeamUnits = Spring.GetTeamUnits
local spGiveOrderToUnit = Spring.GiveOrderToUnit
local spGetUnitPosition = Spring.GetUnitPosition

local frontlineRepairUnits = {
  "armrect",
  "cornecro",
  "armfark",
  "cormando",
  "corfast",
  "armconsul",
}




----------------------------------------------
------

local function isIdleRepairer(unitID)
	local udef = spGetUnitDefID(unitID)
	local ud = UnitDefs[udef] 
	
	if (frontlineRepairUnits[ud.name] == nil) then return false end -- whitelisted frontline repair units only! 
	
	if not ud.canRepair then
		return false
	end
	local bQueue = spGetFullBuildQueue(unitID)
	if bQueue[1] then
		return false
	end
	local _, _, _, _, buildProg = spGetUnitHealth(unitID)
	if buildProg < 1 then
		return false
	end
	local cQueue = spGetCommandQueue(unitID)
	for k,cmd in ipairs(cQueue) do
		if(cmd.id ~= CMD.WAIT and cmd.id ~= CMD.MOVE and cmd.id ~= CMD.IDLEMODE and cmd.id ~= CMD.SET_WANTED_MAX_SPEED and cmd.id ~= CMD.PATROL and cmd.id ~= CMD.ATTACK and cmd.id ~= CMD.FIGHT and cmd.id ~= CMD.REPEAT) then
			return false
		end
	end
	return true
end

local function findMyRepairUnits()
	local units = spGetTeamUnits(myTeam)
	local nRepairUnits = 0
	for k,unitID in pairs(units) do
		local ud = UnitDefs[spGetUnitDefID(unitID)]
		if(ud ~= nil and ud.canRepair) then
			repairUnits[unitID] = true
			if(isIdleRepairer(unitID)) then
				idleRepairUnits[unitID] = true
			end
			nRepairUnits = nRepairUnits + 1
		end
	end
end

local function findMyDamagedUnits()
	local units = spGetTeamUnits(myTeam)
	for k,unitID in pairs(units) do
		local hp, maxhp, paradam, cap, build = spGetUnitHealth(unitID)
		if((hp and maxhp) and hp < maxhp) then
			unitsToRepair[unitID] = true
		end
	end
end

local function repairNearestDamagedUnit(repairUnitID)
	-- find the nearest damaged unit
	local posx, posy, posz = spGetUnitPosition(repairUnitID)
	if not posx then
		return
	end
	local closestDist = nil
	local closestDamagedUnit = nil
	for damagedUnitID, val in pairs(unitsToRepair) do
		-- can't repair self
		if(repairUnitID ~= damagedUnitID) then
			-- check they're still damaged
			local hp, maxhp, paradam, cap, build = spGetUnitHealth(damagedUnitID)
			if((hp and maxhp) and hp >= maxhp) then
				unitsToRepair[damagedUnitID] = nil
			else
				local uposx, uposy, uposz = spGetUnitPosition(damagedUnitID)
				if(uposx) then
					-- get 2D distance between unit and repairUnit
					local dist = math.sqrt(math.pow(posx - uposx,2) + math.pow(posz - uposz,2))
					local ud = UnitDefs[spGetUnitDefID(repairUnitID)]
					if(dist < ud.buildDistance * 2.0 and (closestDist == nil or dist < closestDist)) then
						closestDist = dist
						closestDamagedUnit = damagedUnitID
					end
				end
			end
		end
	end
	if(closestDamagedUnit) then
		spGiveOrderToUnit(repairUnitID, CMD.INSERT, { 0, CMD.REPAIR, 0, closestDamagedUnit}, {"alt"} )
		idleRepairUnits[repairUnitID] = nil
	end
end

function widget:Initialize()
	if Spring.GetSpectatingState() or Spring.IsReplay() then
		widgetHandler:RemoveWidget()
		return true
	end
	myTeam = Spring.GetMyTeamID()
	-- find all repair units and add them to repairUnits
	findMyRepairUnits()
	findMyDamagedUnits()
end

function widget:UnitCreated(unitID, unitDefID, unitTeam)
	local ud = UnitDefs[unitDefID]
	if(ud ~= nil and ud.canRepair) then
		repairUnits[unitID] = true
	end
end

function widget:UnitDestroyed(unitID, unitDefID, unitTeam)
	if(repairUnits[unitID])	then
		repairUnits[unitID] = nil
	end
	if(unitsToRepair[unitID]) then
		unitsToRepair[unitID] = nil
	end
end


function widget:GameFrame(frame)
	for unitID, f in pairs(idleRepairUnits) do
		repairNearestDamagedUnit(unitID)
	end
end

function widget:UnitCmdDone(unitID, unitDefID, unitTeam, cmdID, cmdTag)
	if(repairUnits[unitID] == nil) then
		return true
	end
	if(isIdleRepairer(unitID)) then
		idleRepairUnits[unitID] = true
	else
		idleRepairUnits[unitID] = nil
	end
	return true
end

function widget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer)
	if(paralyzer) then
		-- can't repair paralyzer damage...
		return
	end
	if(unitTeam ~= myTeam) then
		-- don't care about other team's units
		return
	end
	local hp, maxhp = spGetUnitHealth(unitID)
	if(hp and maxhp and hp < maxhp) then 
		unitsToRepair[unitID] = true
	end
end
