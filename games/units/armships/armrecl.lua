return {
	armrecl = {
		acceleration = 0.05262,
		autoheal = 2,
		brakerate = 0.05262,
		buildcostenergy = 3000,
		buildcostmetal = 210,
		builddistance = 140,
		builder = true,
		buildpic = "ARMRECL.DDS",
		buildtime = 6187.5,
		canassist = false,
		canmove = true,
		canresurrect = true,
		category = "ALL UNDERWATER NOWEAPON NOTAIR NOTHOVER",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "38 17 50",
		collisionvolumetype = "box",
		description = "Ressurection Sub",
		explodeas = "smallexplosiongeneric-uw",
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 3,
		idletime = 300,
		maxdamage = 450,
		maxvelocity = 2.2,
		minwaterdepth = 15,
		movementclass = "UBOAT33X3",
		name = "Grim Reaper",
		objectname = "ARMRECL",
		reclaimspeed = 100,
		seismicsignature = 0,
		selfdestructas = "smallexplosiongenericSelfd-uw",
		sightdistance = 300,
		sonardistance = 50,
		terraformspeed = 2250,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 525,
		waterline = 17,
		workertime = 150,
		customparams = {
			model_author = "FireStorm",
			subfolder = "armships",
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "sucormov",
			},
			select = {
				[1] = "sucorsel",
			},
		},
	},
}
