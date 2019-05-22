return {
	armsam = {
		acceleration = 0.0236,
		airsightdistance = 900,
		brakerate = 0.0472,
		buildcostenergy = 2100,
		buildcostmetal = 150,
		buildpic = "ARMSAM.DDS",
		buildtime = 3415,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "34 25 41",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Missile Truck",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 735,
		maxslope = 16,
		maxvelocity = 1.4,
		maxwaterdepth = 8,
		movementclass = "TANK3",
		name = "Samson",
		objectname = "ARMSAM",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 620,
		trackoffset = -6,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 32,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.056,
		turnrate = 370,
		customparams = {
			arm_tank = "1",
			description_long = "Samsons are long range light missile trucks. They can outrange most T1 defensive units and deal constant damage to it. They can also serve as basic anti-air defense. Very ineffective in close combat, so always try to keep them at full distance by using FIGHT command. In larger packs Samsons can even take down Heavy Laser Turrets. Combine with janus/stumpies and repairing units for a devastating frontline push! Move them in line, because they can't shoot over each other.",
			model_author = "Beherith",
			subfolder = "armvehicles",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "1.01370239258 -1.0546875e-05 -0.0623321533203",
				collisionvolumescales = "34.0520019531 26.7133789063 42.7676696777",
				collisionvolumetype = "Box",
				damage = 639,
				description = "Samson Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 97,
				object = "ARMSAM_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 320,
				description = "Samson Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 45,
				object = "3X3D",
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
				[1] = "varmmove",
			},
			select = {
				[1] = "varmsel",
			},
		},
		weapondefs = {
			armtruck_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				burst = 2,
				burstrate = 0.33,
				cegtag = "missiletrailtiny",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-tiny",
				firestarter = 70,
				flighttime = 2,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "missile",
				name = "Light g2g/g2a missile launcher",
				noselfdamage = true,
				range = 600,
				reloadtime = 3.34,
				smoketrail = false,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rockhvy2",
				soundtrigger = true,
				startvelocity = 420,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 110,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 670,
				customparams = {
					bar_model = "cormissile.s3o",
				},
				damage = {
					bombers = 300,
					commanders = 22,
					default = 400,
					fighters = 300,
					subs = 5,
					vtol = 460,
					buildings = 10,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LITEINF",
				def = "ARMTRUCK_MISSILE",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
