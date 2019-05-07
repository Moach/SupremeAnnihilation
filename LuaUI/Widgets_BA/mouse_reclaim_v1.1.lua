function widget:GetInfo()
    return {
        name      = "Mouse Reclaim/Patrol",
        desc      = "Use mousebuttons 4 and 5 for Reclaim/Patrol",
        author    = "Flash",
        version   = "v1.1",
        date      = "Dez, 2010",
        license   = "GNU GPL, v3 or later",
        layer     = 200,
        enabled   = true,
   }
end



function widget:MousePress(mx, my, button)
    local alt,ctrl,meta,shift = Spring.GetModKeyState()

    
    if (button == 4) then
        Spring.SetActiveCommand("Patrol");
        return true
    elseif (button == 5) then
        Spring.SetActiveCommand("Reclaim");
    local zahl1, zahl2, zahl3, aCommand      = Spring.GetActiveCommand() 
	if(aCommand == "Reclaim") then
            
        else
            Spring.SetActiveCommand("Attack");
        end
        return true
    end   
    return false
end
