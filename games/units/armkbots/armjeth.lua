return {
	armjeth = {
		acceleration = 0.138,
		airsightdistance = 800,
		brakerate = 0.6486,
		buildcostenergy = 1100,
		buildcostmetal = 125,
		buildpic = "ARMJETH.DDS",
		buildtime = 1831,
		canmove = true,
		category = "KBOT MOBILE LITEINF WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 2",
		collisionvolumescales = "22.337184906006 33.337184906006 17.337184906006",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Amphibious Anti-air Kbot",
		energymake = 0.4,
		energyuse = 0.4,
		explodeas = "smallExplosionGeneric-phib",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 570,
		maxslope = 15,
		maxvelocity = 1.875,
		movementclass = "AKBOT2",
		name = "Jethro",
		nochasecategory = "NOTAIR",
		objectname = "ARMJETH",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 377,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.2375,
		turnrate = 1285.69995,
		upright = true,
		stealth = true,
		customparams = {
			description_long = "Jethro is a cheap mobile anti air (AA) Kbot, that can easily take down light aircrafts, like scouts, or transporters. Always send a few with your army to protect it from EMP drones/gunships or commander drop tactics. Remember that it has no land-to-land weapons, so it is not able to defend itself. In bigger numbers it can even prevent bombing runs. It is able to walk underwater - combine it with amphibious units!",
			model_author = "Kaiser",
			prioritytarget = "air",
			subfolder = "armkbots",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "5.17987060547 -4.3375112793 -4.29997253418",
				collisionvolumescales = "29.3736572266 14.4243774414 27.4587402344",
				collisionvolumetype = "Box",
				damage = 442,
				description = "Jethro Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 40,
				hitdensity = 100,
				metal = 75,
				object = "ARMJETH_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 271,
				description = "Jethro Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 30,
				object = "2X2C",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:rocketflare",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			armkbot_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = true,
				cegtag = "missiletrailaa",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-tiny-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "missile",
				name = "Light g2a missile launcher",
				noselfdamage = true,
				range = 760,
				reloadtime = 2,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				startvelocity = 650,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 141,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				customparams = {
					bar_model = "cormissile.s3o",
					expl_light_color = "1 0.4 0.5",
					expl_light_mult = 0.4,
					expl_light_radius_mult = 0.66,
					light_color = "1 0.5 0.6",
					light_skip = true,
				},
				damage = {
					default = 100,
					bombers = 360,
					fighters = 420,
					vtol = 385,
					buildings = 1,
				},
			},
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				startvelocity = 550,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[3] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMKBOT_MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
