return {
	chickenf2 = {
		acceleration = 1,
		airhoverfactor = 0,
		attackrunlength = 32,
		bmcode = "1",
		brakerate = 0.4,
		buildcostenergy = 50,
		buildcostmetal = 50,
		builder = false,
		buildpic = "chickens/chickenf2.dds",
		buildtime = 6000,
		canattack = true,
		canfly = true,
		canguard = true,
		canland = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		cansubmerge = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP NOTHOVER CHICKEN",
		collide = false,
		collisionvolumeoffsets = "0 8 -2",
		collisionvolumescales = "70 14 48",
		collisionvolumetype = "box",
		corpse = "chicken_egg",
		cruisealt = 325,
		defaultmissiontype = "Standby",
		description = "Flying Chicken Scout",
		explodeas = "TALON_DEATH",
		footprintx = 3,
		footprintz = 3,
		hidedamage = 1,
		idleautoheal = 15,
		idletime = 900,
		maneuverleashlength = "20000",
		mass = 227.5,
		maxacc = 0.5325,
		maxaileron = 0.01718,
		maxbank = 0.8,
		maxdamage = 1800,
		maxelevator = 0.01343,
		maxpitch = 0.625,
		maxrudder = 0.00893,
		maxvelocity = 4.6,
		moverate1 = "32",
		name = "Buzzard",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/chickenf1.s3o",
		radardistance = 500,
		script = "ChickenDefenseScripts/chickenf2.cob",
		seismicsignature = 0,
		selfdestructas = "TALON_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 500,
		smoothanim = true,
		speedtofront = 0.07,
		steeringmode = "2",
		tedclass = "VTOL",
		turninplace = true,
		turnradius = 64,
		turnrate = 1600,
		unitname = "chickenf2",
		usesmoothmesh = true,
		wingangle = 0.06593,
		wingdrag = 0.835,
		workertime = 0,
		customparams = {
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
			weapon = {
				accuracy = 300,
				areaofeffect = 200,
				avoidfeature = false,
				avoidfriendly = false,
				burst = 1,
				burstrate = 1,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:gundam_MISSILE_EXPLOSION",
				impulseboost = 1,
				impulsefactor = 1,
				interceptedbyshieldtype = 0,
				model = "ChickenDefenseModels/chickeneggred.s3o",
				mygravity = 0.5,
				name = "GooBombs",
				noselfdamage = true,
				range = 800,
				reloadtime = 30,
				soundhit = "chickens/junohit2edit",
				sprayangle = 400,
				weapontype = "AircraftBomb",
				damage = {
					default = 250,
				},
			},
		},
		weapons = {
			[1] = {
				def = "WEAPON",
			},
		},
	},
}