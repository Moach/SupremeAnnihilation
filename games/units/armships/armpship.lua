return {
	armpship = {
		acceleration = 0.04771,
		airsightdistance = 470,
		autoheal = 1.5,
		blocking = true,
		brakerate = 0.04771,
		buildcostenergy = 2600,
		buildcostmetal = 390,
		buildpic = "ARMPSHIP.DDS",
		buildtime = 4350,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -4 1",
		collisionvolumescales = "26 26 76",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Assault Frigate",
		energymake = 0.2,
		energyuse = 0.2,
		explodeas = "mediumExplosionGeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 2,
		idletime = 900,
		maxdamage = 1940,
		maxvelocity = 2.45,
		minwaterdepth = 6,
		movementclass = "BOAT44X4",
		name = "Ellysaw",
		nochasecategory = "VTOL UNDERWATER",
		objectname = "ARMPSHIP",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 700,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 427.5,
		waterline = 0,
		customparams = {
			subfolder = "armships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.255500793457 0.0 -1.26264953613",
				collisionvolumescales = "20.0704803467 16.0 67.0992736816",
				collisionvolumetype = "Box",
				damage = 500,
				description = "Ellysaw Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 1,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 195,
				object = "ARMPSHIP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1032,
				description = "Ellysaw Heap",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 97.5,
				object = "3X3A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			plasma = {
				areaofeffect = 36,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Light long-range plasma cannon",
				noselfdamage = true,
				predictboost = 0.4,
				range = 900,
				reloadtime = 1.82,
				size = 2,
				soundhit = "xplomed3",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannon1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 290,
				damage = {
					bombers = 37,
					default = 500,
					fighters = 37,
					subs = 7,
					vtol = 37,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "LIGHTAIRSCOUT UNDERWATER",
				def = "PLASMA",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				badtargetcategory = "LIGHTAIRSCOUT UNDERWATER",
				def = "PLASMA",
				maindir = "0 0 1",
				maxangledif = 270,
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
