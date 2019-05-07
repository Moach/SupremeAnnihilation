local versionNumber = "v1.36"

function widget:GetInfo()
	return {
		name      = 'Losses Counter ',
		desc      = versionNumber .. ' Count Unit Death',
		author    = 'xponen',
		date      = 'November 2012',
		license   = 'GNU GPL v2',
		layer     = 0,
		enabled   = true,
	}
end
--------------------------------------------------------------------------------
-- How it work
--------------------------------------------------------------------------------
		-- This widget count allied death from "widget:UnitDestroyed"
		-- It count enemy death from wreckage count. 

--------------------------------------------------------------------------------
-- Source/Reference
--------------------------------------------------------------------------------
		-- widget	 = gui_energy_conversion.lua (BA 7.50)
		-- name      = Energy Conversion Info,
		-- author    = Niobium,
		-- date      = May 2011,
		-- license   = GNU GPL v2,

		-- "Spring Lua Scripting Guide" Jan 2010 -SpliFF
		
		-- widget 	= gui_flat2DView.lua
		-- name 	= flat 2d Units widget
		-- author 	= xponen , July 2011, GNU GPL v2,
		
		-- http://springrts.com/wiki/Lua_SyncedRead
--------------------------------------------------------------------------------
-- Variables
--------------------------------------------------------------------------------
--gui variables
local px, py = 500, 100
local sx, sy = 128, 54
local boxLeft, boxBottom, boxRight,boxTop = 118 - 4, 45-4, 118 + 4, 45+4

--counting variables:
local ownedUnitDeathCount=0
local alliesUnitDeathCount=0
local enemiesUnitDeathCount=0
local myTeamID=-1
local allyTeamID=-1
local buttonState=0
local previousCorpseCount=0
local latestEnemyCorpseCount=0

--variables:
local wreckageIndexTable={}

--control variable
local updatePeriod = 0.7 -- a second
local elapsedSecond = 0

--------------------------------------------------------------------------------
-- Speedups
--------------------------------------------------------------------------------
local format = string.format

local glColor = gl.Color
local glRect = gl.Rect
local glPushMatrix = gl.PushMatrix
local glPopMatrix = gl.PopMatrix
local glTranslate = gl.Translate
local glBeginText = gl.BeginText
local glEndText = gl.EndText
local glText = gl.Text

local spGetMyTeamID = Spring.GetMyTeamID
local spGetTeamRulesParam = Spring.GetTeamRulesParam
local spSendLuaRulesMsg = Spring.SendLuaRulesMsg
local spGetSpectatingState = Spring.GetSpectatingState
local spGetMyAllyTeamID	= Spring.GetMyAllyTeamID
local spGetUnitAllyTeam	= Spring.GetUnitAllyTeam
local spGetAllFeatures = Spring.GetAllFeatures	
local spGetFeatureAllyTeam = Spring.GetFeatureAllyTeam
local spGetFeatureTeam = Spring.GetFeatureTeam
local spGetGameSeconds = Spring.GetGameSeconds
local spGetFeatureDefID =Spring.GetFeatureDefID
local spGetFeaturePosition = Spring.GetFeaturePosition
local spGetUnitPosition = Spring.GetUnitPosition
local spGetUnitsInRectangle = Spring.GetUnitsInRectangle

--------------------------------------------------------------------------------
-- Functions/Methods
--------------------------------------------------------------------------------

function widget:Initialize()
	myTeamID = spGetMyTeamID() --get the ID of current player
	allyTeamID = spGetMyAllyTeamID() --get the ally ID of current player
	
	local features = spGetAllFeatures() --get all existing feature. Estimate current death toll so far.
	if (features~=nil) then
		for i = 1, #features do
			local featureID =  features[i]
			local coordX, _, coordZ = spGetFeaturePosition(featureID)
			wreckageIndexTable[featureID]= {x=coordX, z=coordZ}
			local featureDefID= spGetFeatureDefID(featureID)
			if (featureDefID~=nil) then
				local featureDef= FeatureDefs[featureDefID]
				local debris = "ebris"
				local wreck = "reckage"
				local egg = "Egg"
				local yesThereIsUnitWreck = (string.match(featureDef["tooltip"], debris)~=nil) or (string.match(featureDef["tooltip"], wreck)~=nil) or (string.match(featureDef["tooltip"], egg)~=nil)
				if yesThereIsUnitWreck then
					local featuresAllyTeamID = spGetFeatureAllyTeam(featureID)
					if (featuresAllyTeamID ~= allyTeamID) then
						enemiesUnitDeathCount=enemiesUnitDeathCount+1
					elseif spGetFeatureTeam(featureID) == myTeamID then
						ownedUnitDeathCount=ownedUnitDeathCount+1
					else
						alliesUnitDeathCount=alliesUnitDeathCount+1
					end
				end
			end
		end
	end 
end

function widget:UnitDestroyed(unitID, unitDefID, teamID)
	local x,_, z = spGetUnitPosition(unitID)
	local unitCheck = spGetUnitsInRectangle(x-1, z-1, x+1, z+1) -- ( number xmin, number zmin, number xmax, number zmax [,number teamID] ). Reference: unit_marker.lua
	for i=1,#unitCheck do
		if unitCheck[i]==unitID then --UnitDestroyed is also called when morphing, but when unit died the unitID in the rectangle is equal to the dying unit.
			if (teamID == myTeamID) then --count death of owned unit
				ownedUnitDeathCount=ownedUnitDeathCount+1	
			elseif (spGetUnitAllyTeam(unitID) == allyTeamID) then --count death of allied unit
				alliesUnitDeathCount=alliesUnitDeathCount+1
			else	--count death of enemy unit 
				--enemiesUnitDeathCount=enemiesUnitDeathCount+1
			end
			break
		end
	end
end

function widget:Update(dt)
	elapsedSecond = elapsedSecond + dt
	if (elapsedSecond < updatePeriod) then 	-- skip updates if they are too close together
		return -- skip the update
	end
	elapsedSecond = 0
	
	--local spec, _, _ = spGetSpectatingState()
	if not spec then -- to prevent spec from receiving wreckage count (spec should receive  more accurate report from "widget:UnitDestroyed")
		local latestEnemyCorpseCount = 0
		local features = spGetAllFeatures()
		if (features~=nil) then -- to skip identification and counting process when there is no world feature available
			for i=1, #features do
				local featureID = features[i]
				local coordX, _, coordZ = spGetFeaturePosition(featureID)
				local sameWreck = false
				if (wreckageIndexTable[featureID]==nil) then 
					wreckageIndexTable[featureID]={x=coordX, z=coordZ}
				else
					sameWreck = (coordX== wreckageIndexTable[featureID]["x"] and coordZ==wreckageIndexTable[featureID]["z"])
					wreckageIndexTable[featureID]["x"]=coordX
					wreckageIndexTable[featureID]["z"]=coordZ
				end
				if not sameWreck then -- to prevent same world feature from being counted twice
					local featureDefID= spGetFeatureDefID(featureID)
					if (featureDefID~=nil) then -- to identify and count unit wreckage among world features
						local featureDef= FeatureDefs[featureDefID]
						local debris = "ebris"
						local wreck = "reckage"
						local egg = "Egg"
						local yesThereIsUnitWreck = (string.match(featureDef["tooltip"], debris)~=nil) or (string.match(featureDef["tooltip"], wreck)~=nil) or (string.match(featureDef["tooltip"], egg)~=nil)
						if yesThereIsUnitWreck then
							local featuresAllyTeamID = spGetFeatureAllyTeam(featureID)
							if (featuresAllyTeamID ~= allyTeamID) then
								latestEnemyCorpseCount = latestEnemyCorpseCount + 1
							end
						end
					end
				end
			end
		end
		enemiesUnitDeathCount = enemiesUnitDeathCount + latestEnemyCorpseCount -- to associate the wreckage count with the increase in unit death
	end
end
------ -- -

function widget:DrawScreen()
    
    -- Var
	--empty
	--
    
    -- Positioning
    glPushMatrix()
        glTranslate(px, py, 0)
        
        -- Panel
        glColor(0, 0, 0, 0.5)
        glRect(0, 0, sx, sy)
        
        -- Text
        glColor(1, 1, 1, 1)
        glBeginText()
            glText('Losses Counter', 64, 37, 12, 'cd')
            glText('Ally/Enemy:', 5, 21, 12, 'd')
			glText(format('%i / %i', alliesUnitDeathCount, enemiesUnitDeathCount), 123, 21, 12, 'dr')
            glText('Your Army:', 5, 5, 12, 'd')
            glText(format('%i', ownedUnitDeathCount), 123, 5, 12, 'dr')
        glEndText()
        
        -- Bar
        --empty
		--
		
        -- Slider
        --empty
		--
		
		-- Button
		if buttonState==1 then
			glColor(0.25, 0.5, 0.25, 0.75)
			buttonState=0
		else
			glColor(0.0, 0.5, 0, 0.75)
		end
        glRect(boxLeft, boxBottom, boxRight,boxTop)
        
    glPopMatrix()
end

function widget:MousePress(mx, my, mButton)
    if mx >= px and my >= py and mx < px + sx and my < py + sy then
		-- to make reset button work
 		if mx>=px+boxLeft and my >=py+boxBottom and mx< px+boxRight and my <py+boxTop then --press the reset button
			myTeamID = spGetMyTeamID() --get the ID of current player
			allyTeamID = spGetMyAllyTeamID() --get the ally ID of current player
			ownedUnitDeathCount=0
			alliesUnitDeathCount=0
			enemiesUnitDeathCount=0
			buttonState=1
		end
        return true
    end
end

function widget:MouseMove(mx, my, dx, dy, mButton)
    -- Dragging
        px = px + dx
        py = py + dy
end

function widget:GetConfigData()
	local vsx, vsy = gl.GetViewSizes()
	return {px / vsx, py / vsy}
end

function widget:SetConfigData(data)
	local vsx, vsy = gl.GetViewSizes()
	px = math.floor(math.max(0, vsx * math.min(data[1] or 0, 0.95)))
	py = math.floor(math.max(0, vsy * math.min(data[2] or 0, 0.95)))
end
