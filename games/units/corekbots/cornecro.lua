return {
	cornecro = {
		acceleration = 0.23,
		brakerate = 0.8625,
		buildcostenergy = 1400,
		buildcostmetal = 110,
		builddistance = 96,
		builder = true,
		buildpic = "CORNECRO.DDS",
		buildtime = 2400,
		canassist = false,
		canmove = true,
		canresurrect = true,
		category = "KBOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -2 1",
		collisionvolumescales = "30.5 36 30.5",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Frontline Engineer",
		energymake = 1.75,
		energyuse = 1.75,
		explodeas = "smallbuilder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 60,
		maxdamage = 200,
		maxslope = 14,
		maxvelocity = 2.6,
		maxwaterdepth = 22,
		movementclass = "KBOT2",
		moveState = 1,
		name = "Sapper",
		objectname = "CORNECRO",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "smallbuilderSelfd",
		sightdistance = 430,
		stealth = true,
		terraformspeed = 1000,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.716,
		turnrate = 1285.69995,
		upright = true,
		workertime = 200,
		buildoptions = {
			[1] = "cordrag",
			[2] = "cormine1",
			[3] = "corllt",
			[4] = "coreyes",
		},
		customparams = {
			description_long = "Sappers are support units dedicated to keeping your troops fit and ready for combat. They can also lay mines and set up basic defenses to consolidate key positions. They are also capable of restoring usable wrecks back to service.",
			model_author = "Beherith",
			subfolder = "corekbots",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.248977661133 -1.21184884033 0.586555480957",
				collisionvolumescales = "33.9485473633 23.5305023193 36.0355987549",
				collisionvolumetype = "Box",
				damage = 794,
				description = "Necro Wreckage",
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 72,
				object = "CORNECRO_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 394,
				description = "Necro Heap",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 26,
				object = "2X2D",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg3-builder",
				[2] = "deathceg2-builder",
				[3] = "deathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "necrok2",
			},
			select = {
				[1] = "necrsel2",
			},
		},
	},
}
