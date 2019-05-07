local version = 0.2

function widget:GetInfo()
	return {
		name      = "Clever gathering point",
		desc      = "Units leaving the factory dont gather on one single place",
		author    = "PepeAmpere",
		date      = "11th November, 2012",
		license   = "BY-NC-SA",
		layer     = 0,
		enabled   = true, --  loaded by default?
		version   = version,
	}
end

--- SPEEDUPS ---
local spGetCommandQueue  	= Spring.GetCommandQueue
local spGiveOrderToUnit   	= Spring.GiveOrderToUnit
local CMD_MOVE				= CMD.MOVE
local mRandom           	= math.random
local mFloor                = math.floor

--- SETTINGS ---
local spread                = 250
local halfSpread            = mFloor(spread/2)
local smallSpread           = mFloor(spread/2)
local halfSmallSpread       = mFloor(spread/4)
local gettingPosition       = "advanced" --"simple" -- "advanced"
local xScale                = 6
local zScale                = 6
local sizeOfAdvFormation   

--- VARS ---
local factoryIDtoPosition   = {}
local swarmFormation        = {
	    [1]  = {0,0},		[2]  = {9,-1},		[3]  = {2,-8},		[4]  = {-5,-7},		[5]  = {-10,4},
		[6]  = {1,10},		[7]  = {12,9},		[8]  = {16,-2},		[9]  = {12,-11},	[10] = {1,-17},
		[11] = {-8,-16},	[12] = {-15,-3},	[13] = {-15,10},	[14] = {-5,18},		[15] = {8,19},
		[16] = {21,13},		[17] = {25,2},		[18] = {21,-10},	[19] = {6,-20},		[20] = {-4,-22},
		[21] = {-17,-7},	[22] = {-22,2},		[23] = {-15,20},	[24] = {3,26},		[25] = {18,23},
		[26] = {29,10},		[27] = {28,-7},		[28] = {21,-20},	[29] = {5,-27},		[30] = {-13,-24},
	}  --- swarm formation just copied from NOE formations (http://code.google.com/p/nota/source/browse/trunk/game/LuaRules/Configs/noe/noe_formations.lua)
local swarmFormationScaled  = {}
	
--- WIDGET ---
local function Rescaling(scaleX,scaleZ,limit)
	for i=1,limit do
	    swarmFormationScaled[i]    = {}
	    swarmFormationScaled[i][1] = swarmFormation[i][1] * scaleX
		swarmFormationScaled[i][2] = swarmFormation[i][2] * scaleZ
	end
end

local function NewLab(unitID,unitDefID,unitTeam)
    local ud = UnitDefs[unitDefID]
	if (ud and ud.isFactory) then
	    factoryIDtoPosition[tostring(unitID)] = {
			posIndex  = 1,
			posX      = 0,
			posZ      = 0,
			lastRandX = 0,
			lastRandZ = 0,
		}
	end
end

function widget:Initialize()
    sizeOfAdvFormation = #swarmFormation
    Rescaling(xScale,zScale,sizeOfAdvFormation)
end

function widget:UnitCreated(unitID, unitDefID, unitTeam)
    NewLab(unitID,unitDefID,unitTeam)
end

-- function widget:UnitGiven(unitID, unitDefID, unitTeam)
    -- NewLab(unitID,unitDefID,unitTeam)
-- end

-- function widget:UnitCaptured(unitID, unitDefID, unitTeam)
    -- NewLab(unitID,unitDefID,unitTeam)
-- end

function widget:UnitFromFactory(unitID, unitDefID, unitTeam, factID, factDefID, userOrders)
    local ud = UnitDefs[unitDefID]
    if (ud and not(ud.isBuilding)) then
		local listOfCommands   = spGetCommandQueue(unitID)
		local numberOfCommands = #listOfCommands
		--Spring.Echo(tostring(numberOfCommands))
		if (numberOfCommands > 1) then
			local lastCommand  = listOfCommands[numberOfCommands]
			local x,y,z        = lastCommand.params[1],lastCommand.params[2],lastCommand.params[3]
			
			--- now you can choose the simple or advanced randomization
			if ((gettingPosition == "simple") or (factoryIDtoPosition[factoryID] == nil)) then  --- or (numberOfCommands == 1)
			    --- SIMPLE ---
			    x              = x + mRandom(spread) - halfSpread
			    z 			   = z + mRandom(spread) - halfSpread
			    spGiveOrderToUnit(unitID, CMD_MOVE, { x,y,z }, {"shift"})
			else
			    --- ADVANCED ---
				local factoryID = tostring(factID)
				if ((factoryIDtoPosition[factoryID].posX ~= x) or (factoryIDtoPosition[factoryID].posZ ~= z)) then
				    factoryIDtoPosition[factoryID].posX      = x
					factoryIDtoPosition[factoryID].posZ      = z
					factoryIDtoPosition[factoryID].lastRandX = mRandom(smallSpread) - halfSmallSpread
					factoryIDtoPosition[factoryID].lastRandZ = mRandom(smallSpread) - halfSmallSpread
					factoryIDtoPosition[factoryID].posIndex  = 1
				end	
				local posIndex  = factoryIDtoPosition[factoryID].posIndex				
				local newX      = factoryIDtoPosition[factoryID].posX + swarmFormationScaled[posIndex][1] + factoryIDtoPosition[factoryID].lastRandX
				local newZ      = factoryIDtoPosition[factoryID].posZ + swarmFormationScaled[posIndex][2] + factoryIDtoPosition[factoryID].lastRandZ
			    spGiveOrderToUnit(unitID, CMD_MOVE, { newX,y,newZ }, {"shift"})
				if ((posIndex + 1) > sizeOfAdvFormation) then
				    factoryIDtoPosition[factoryID].posIndex  = 1
				else
				    factoryIDtoPosition[factoryID].posIndex  = posIndex + 1
					factoryIDtoPosition[factoryID].lastRandX = mRandom(smallSpread) - halfSmallSpread
					factoryIDtoPosition[factoryID].lastRandZ = mRandom(smallSpread) - halfSmallSpread
				end
			end
		end
	end
end