return {
	chickens1 = {
		acceleration = 1.725,
		bmcode = "1",
		brakerate = 1.4375,
		buildcostenergy = 174,
		buildcostmetal = 174,
		builder = false,
		buildpic = "chickens/chickens1.dds",
		buildtime = 3750,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "21 30 46",
		collisionvolumetype = "box",
		corpse = "chicken_egg",
		defaultmissiontype = "Standby",
		description = "Spike Spitter",
		explodeas = "BUG_DEATH",
		floater = false,
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 18,
		idletime = 20,
		leavetracks = true,
		maneuverleashlength = "750",
		mass = 900,
		maxdamage = 820,
		maxslope = 18,
		maxvelocity = 5,
		maxwaterdepth = 15,
		movementclass = "CHICKENHKBOT2",
		name = "Spiker",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/chickens.s3o",
		script = "ChickenDefenseScripts/chickens1.cob",
		seismicsignature = 0,
		selfdestructas = "BUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 390,
		smoothanim = true,
		sonardistance = 720,
		steeringmode = "2",
		tedclass = "AKBOT2",
		trackoffset = 6,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 28,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "chickens1",
		upright = false,
		workertime = 0,
		customparams = {
			maxrange = "375",
			subfolder = "other/chickens",
		},
		featuredefs = {
			dead = {},
			heap = {},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
		},
		weapondefs = {
			waterweapon = {
				areaofeffect = 16,
				avoidfriendly = 0,
				burnblow = 1,
				collidefriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				firesubmersed = true,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptedbyshieldtype = 0,
				model = "ChickenDefenseModels/spike.s3o",
				name = "Sea Spike",
				noselfdamage = 1,
				range = 690,
				reloadtime = 9,
				startvelocity = 150,
				tolerance = 32767,
				tracks = 1,
				turnrate = 1600,
				turret = 1,
				waterweapon = true,
				weaponacceleration = 25,
				weapontimer = 4,
				weaponvelocity = 220,
				damage = {
					default = 775,
				},
			},
			weapon = {
				areaofeffect = 16,
				avoidfeature = 0,
				avoidfriendly = 0,
				burnblow = true,
				collidefeature = true,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 0,
				model = "ChickenDefenseModels/spike.s3o",
				name = "Spike",
				noselfdamage = true,
				range = 375,
				reloadtime = 2,
				startvelocity = 300,
				submissile = 1,
				targetmoveerror = 0.5,
				turret = true,
				waterweapon = false,
				weaponacceleration = 70,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 325,
				damage = {
					default = 325,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
			},
			[2] = {
				def = "WATERWEAPON",
				maindir = "0 0 1",
				maxangledif = 160,
			},
		},
	},
}