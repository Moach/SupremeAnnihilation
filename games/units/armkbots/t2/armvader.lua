return {
	armvader = {
		acceleration = 0.1518,
		activatewhenbuilt = true,
		brakerate = 0.5589,
		buildcostenergy = 6800,
		buildcostmetal = 65,
		buildpic = "ARMVADER.DDS",
		buildtime = 1201,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 2 0",
		collisionvolumescales = "17 13 17",
		collisionvolumetype = "box",
		corpse = "CORPSE",
		description = "Amphibious Crawling Bomb",
		energymake = 0.1,
		energyuse = 0.1,
		explodeas = "crawl_blastsml",
		firestate = 2,
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		mass = 1500,
		maxdamage = 400,
		maxslope = 32,
		maxvelocity = 2.8,
		maxwaterdepth = 112,
		movementclass = "AKBOTBOMB2",
		name = "Invader",
		nochasecategory = "VTOL",
		objectname = "ARMVADER",
		seismicsignature = 0,
		selfdestructas = "crawl_blast",
		selfdestructcountdown = 0,
		sightdistance = 273,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.848,
		turnrate = 1771,
		customparams = {
			model_author = "FireStorm",
			subfolder = "armkbots/t2",
			techlevel = 2,
		},
		featuredefs = {
			corpse = {
				blocking = true,
				category = "corpses",
				damage = 300,
				description = "Invader Wreckage",
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 1,
				height = 20,
				hitdensity = 100,
				metal = 49,
				object = "ARMVADER_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "21.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 200,
				description = "Invader Heap",
				footprintx = 1,
				footprintz = 1,
				height = 4,
				hitdensity = 100,
				metal = 12,
				object = "1X1B",
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
				[1] = "servsml5",
			},
			select = {
				[1] = "servsml5",
			},
		},
		weapondefs = {
			crawl_detonator = {
				areaofeffect = 5,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Self-destruction",
				range = 1,
				reloadtime = 0.1,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				weapontype = "Cannon",
				weaponvelocity = 1000,
				damage = {
					crawlingbombs = 1000,
					default = 1000,
				},
			},
			crawl_dummy = {
				areaofeffect = 0,
				avoidfeature = false,
				avoidground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Crawlingbomb Dummy Weapon",
				range = 80,
				reloadtime = 0.1,
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				tolerance = 100000,
				waterweapon = true,
				weapontype = "Melee",
				weaponvelocity = 100000,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CRAWL_DUMMY",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "CRAWL_DETONATOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
