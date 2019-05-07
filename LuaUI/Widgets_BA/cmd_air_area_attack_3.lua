local version = "1.01"

function widget:GetInfo()
	return {
		name 		= "Air ground area attack",
		desc 		= "Each non-bomber antiground plane gets own target",
		author 		= "PepeAmpere",
		date 		= "28th May, 2014",
		license 	= "notAlicense",  		-- ~ CC BY-NC-SA, more on NOTA websites
		layer 		= 0,
		enabled 	= true, 				--  loaded by default?
		version 	= version,
	}
end

local SpGetSelectedUnitsCount	= Spring.GetSelectedUnitsCount
local SpGetSelectedUnits		= Spring.GetSelectedUnits
local SpGetUnitDefID			= Spring.GetUnitDefID
local SpGetUnitsInSphere		= Spring.GetUnitsInSphere
local SpGiveOrderToUnit			= Spring.GiveOrderToUnit
local SpIsUnitAllied			= Spring.IsUnitAllied
local SpGetPressedKeys			= Spring.GetPressedKeys

local minUnitsInGroup			= 4
local CMD_AREA_ATTACK			= CMD.AREA_ATTACK
local CMD_ATTACK				= CMD.ATTACK

-- CUSTOM PARAMETERS --
-- NOTA planes joining this show
local listOfPlanes 				= {
	["armhell"] = true,
	["corevashp"] = true,
	["armtoad"] = true,
	["armwing"] = true,
	["corerb"] = true,
	["armbrawl"] = true,	["corrape"] = true,
	
	-- ["armthund"] = true,	["corshad"] = true,
	-- ["armpnix"] = true,	["corhurc"] = true,
	-- ["corsbomb"] = true,
}

function widget:CommandNotify(id, params, options)
	local numberOfUnits 	= SpGetSelectedUnitsCount()
	-- Spring.Echo(id, params[1],params[2],params[3],params[4], options, numberOfUnits)
	
	-- if not enough planes and if not area attack, stop
	if (numberOfUnits < minUnitsInGroup) then
		return
	end
	if (id ~= CMD_ATTACK) then
		return
	end
	
	local planes			= false
	local numberOfPlanes 	= 0
	local listOfUnits 		= SpGetSelectedUnits()
	for i=1,numberOfUnits do
		local unitDefID 	= SpGetUnitDefID(listOfUnits[i])
		if (listOfPlanes[UnitDefs[unitDefID].name]) then
			numberOfPlanes = numberOfPlanes + 1
		end
	end
	
	-- if all units choosen planes
	if (numberOfPlanes == numberOfUnits and params[2]) then
		-- our widget
		local listOfTargets 			= SpGetUnitsInSphere(params[1],params[2],params[3],params[4])
		local cleanListOfTargets 		= {}
		local targetsCount 				= 0
		for i=1,#listOfTargets do
			local thisDef = UnitDefs[SpGetUnitDefID(listOfTargets[i])]
			if (not SpIsUnitAllied(listOfTargets[i]) and ((thisDef == nil) or (not thisDef.canFly))) then  -- ignore flying units and attack unknown
				targetsCount	= targetsCount + 1
				cleanListOfTargets[targetsCount] = listOfTargets[i]
			end
		end
		
		-- if enough targets
		if (targetsCount < 2) then
			return
		end
		local attackerNumber  			= 1
		
		-- more attackers on one target?
		local balance					= numberOfUnits/targetsCount
		local flooredBalance			= math.floor(numberOfUnits/targetsCount)
		local attackersMultiplicator 	= flooredBalance
		if (balance - flooredBalance > 0.5) then 
			attackersMultiplicator		= flooredBalance + 1
		end
		if (attackersMultiplicator < 1) then
			attackersMultiplicator = 1
		end
		
		-- shift or not?
		local keys 		= SpGetPressedKeys()
		local option	= {}
		if (keys[304]) then 
			option = {"shift"}
		end
		
		-- add new orders
		for i=1,targetsCount do
			for j=1,attackersMultiplicator do
				SpGiveOrderToUnit(listOfUnits[attackerNumber], CMD_ATTACK, {cleanListOfTargets[i]}, option)
				attackerNumber = attackerNumber + 1
				if (attackerNumber >= numberOfUnits) then
					attackerNumber = 1
					option		   = {"shift"}
				end
			end
		end
		return true
	end
end