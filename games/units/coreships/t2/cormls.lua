return {
	cormls = {
		acceleration = 0.03446,
		brakerate = 0.03446,
		buildcostenergy = 3300,
		buildcostmetal = 200,
		builddistance = 136,
		builder = true,
		buildpic = "CORMLS.DDS",
		buildtime = 4816.80029,
		canmove = true,
		category = "ALL NOWEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "-2 -3 5",
		collisionvolumescales = "24 24 62",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Naval Engineer",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1438,
		maxvelocity = 1.925,
		minwaterdepth = 15,
		movementclass = "BOAT43X3",
		name = "Pathfinder",
		objectname = "CORMLS",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 260,
		terraformspeed = 2000,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 393,
		waterline = 0,
		workertime = 200,
		buildoptions = {
			[1] = "cortide",
			[2] = "coruwmex",
			[3] = "corfrad",
			[4] = "cornanotcplat",
			[5] = "corsy",
			[6] = "corcs",
			[7] = "cortl",
			[8] = "corfhlt",
			[9] = "corenaa",
			[10] = "corpt",
			[11] = "coresupp",
			[12] = "corroy",
			[13] = "corfmine3",
		},
		customparams = {
			area_mex_def = "coruwmex",
			model_author = "Beherith",
			subfolder = "coreships/t2",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.0500030517578 -0.0636029345703 -0.0",
				collisionvolumescales = "33.75 14.0462341309 88.0440979004",
				collisionvolumetype = "Box",
				damage = 1726,
				description = "Pathfinder Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 100,
				object = "CORMLS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 4032,
				description = "Pathfinder Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 50,
				object = "4X4A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			repair = "repair2",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
	},
}
