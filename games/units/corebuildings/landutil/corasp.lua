return {
	corasp = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 0,
		buildcostenergy = 4400,
		buildcostmetal = 400,
		builddistance = 136,
		builder = true,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 12,
		buildinggrounddecalsizey = 12,
		buildinggrounddecaltype = "decals/corasp_aoplane.dds",
		buildpic = "CORASP.DDS",
		buildtime = 9315,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -9 0",
		collisionvolumescales = "135 27 135",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Automatically Repairs Aircraft",
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 9,
		footprintz = 9,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		isairbase = true,
		mass = 200000,
		maxdamage = 1600,
		maxslope = 10,
		maxwaterdepth = 1,
		name = "Air Repair Pad",
		objectname = "CORASP",
		onoffable = true,
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 357.5,
		terraformspeed = 5000,
		usebuildinggrounddecal = true,
		workertime = 1000,
		yardmap = "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
		customparams = {
			model_author = "Mr Bob",
			removestop = true,
			removewait = true,
			subfolder = "corebuildings/landutil",
			techlevel = 1,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "135 20 135",
				collisionvolumetype = "Box",
				damage = 1143,
				description = "Air Repair Pad Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 377,
				object = "CORASP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 572,
				description = "Air Repair Pad Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 131,
				object = "4X4C",
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
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pairactv",
			},
		},
	},
}
