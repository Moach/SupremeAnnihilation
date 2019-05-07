function widget:GetInfo()
	return {
	name      = "Advanced Control Hotkeys",
	desc      = "Sets up controls for SquadWait, Move-Gather stops and other goodly handies",
	author    = "Moach",
	date      = "2788 (I'm from the future)",
	license   = "GNU GPL, v2 or a lot later",
	layer     = 0,
	enabled   = true, --enabled by default
	}
end


local SquadWaitUnits = 8;

function widget:Initialize()
	
	bind            meta+w  GatherWait
	bind            meta+Shift+w  GatherWait queued
	bind            meta+ctrl+w SquadWait SquadWaitUnits
    bind            alt+meta+w  select AllMap+_InPrevSel_Waiting+_ClearSelection_SelectAll+	
	
    bind             meta+b  select AllMap+_Builder_Idle+_ClearSelection_SelectAll+
	bind             alt+meta+b  select AllMap+_Builder+_ClearSelection_SelectAll+
    bind             alt+meta+r  select AllMap+_Radar+_ClearSelection_SelectAll+
    bind             alt+meta+a  select AllMap+_Not_Builder_Not_Commander_Weapons+_ClearSelection_SelectAll+
    bind             alt+meta+g  select AllMap+_Not_Aircraft_Weapons+_ClearSelection_SelectAll+
	bind             alt+meta+v  select AllMap+_Aircraft_Weapons+_ClearSelection_SelectAll+
	bind 			 meta+t      select AllMap+_Transport_Idle+_ClearSelection_SelectOne+
	bind 			 alt+meta+t  select AllMap+_Transport_Idle+_ClearSelection_SelectAll+
	bind 			 ctrl+alt+meta+t  select AllMap+_Transport+_ClearSelection_SelectAll+
end