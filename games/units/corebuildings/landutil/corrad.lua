return {
	corrad = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16000,
		buildcostenergy = 640,
		buildcostmetal = 58,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 4,
		buildinggrounddecalsizey = 4,
		buildinggrounddecaltype = "decals/corrad_aoplane.dds",
		buildpic = "CORRAD.DDS",
		buildtime = 1137,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "30 99 30",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Early Warning System",
		energymake = 0,
		energyuse = 40,
		explodeas = "smallBuildingexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		losemitheight = 72,
		maxdamage = 81,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Radar Tower",
		objectname = "CORRAD",
		onoffable = true,
		radardistance = 3000,
		radaremitheight = 72,
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 180,
		usebuildinggrounddecal = true,
		yardmap = "oooo",
		customparams = {
			bar_collisionvolumeoffsets = "0 -12 0",
			bar_collisionvolumescales = "32 99 32",
			model_author = "Mr Bob",
			removestop = true,
			removewait = true,
			subfolder = "corebuildings/landutil",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.353988647461 -0.0323567626953 1.37395477295",
				collisionvolumescales = "34.8413696289 57.1648864746 30.8629608154",
				collisionvolumetype = "Box",
				damage = 49,
				description = "Radar Tower Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 36,
				object = "CORRAD_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 25,
				description = "Radar Tower Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 14,
				object = "2X2D",
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
			},
		},
		sounds = {
			activate = "radar1",
			canceldestruct = "cancel2",
			deactivate = "radarde1",
			underattack = "warning1",
			working = "radar2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "radar2",
			},
		},
	},
}
