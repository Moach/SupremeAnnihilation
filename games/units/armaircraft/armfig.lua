return {
	armfig = {
		acceleration = 0.3,
		airsightdistance = 950,
		blocking = false,
		brakerate = 0.075,
		buildcostenergy = 2900,
		buildcostmetal = 73,
		buildpic = "ARMFIG.DDS",
		buildtime = 3500,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTSUB NOTLAND VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 125,
		description = "Fighter",
		explodeas = "smallExplosionGenericAir",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxacc = 0.1825,
		maxaileron = 0.0144,
		maxbank = 0.8,
		maxdamage = 500,
		maxelevator = 0.01065,
		maxpitch = 0.625,
		maxrudder = 0.00615,
		maxslope = 10,
		maxvelocity = 9.64,
		maxwaterdepth = 0,
		name = "Freedom Fighter",
		nochasecategory = "NOTAIR",
		objectname = "ARMFIG",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericAir",
		sightdistance = 500,
		speedtofront = 0.06417,
		turnradius = 64,
		turnrate = 850,
		usesmoothmesh = true,
		wingangle = 0.06315,
		wingdrag = 0.185,
		customparams = {
			description_long = "The Freedom Fighter is a fast moving fighter jet that is designed for eliminating air units. It is the most effective form of T1 air defense that can access all parts of the map to get rid of any air threats. In large packs, it is also able to destroy weak land-based structures, like nano towers. Always put your fighters on patrol in front of your base, so they attack any aircraft moving in the vicinity. Send fighters with your bombing runs to disable opponent's fighter wall before your bombers come to deliver the final blow.",
			model_author = "FireStorm",
			subfolder = "armaircraft",
			wingsurface = 0.5,
		},
		sfxtypes = {
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
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			armvtol_missile = {
				areaofeffect = 100,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailfighter",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-tiny-air",
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "Light a2a missile launcher",
				noselfdamage = true,
				range = 680,
				reloadtime = 0.9,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "Rocklit3",
				startvelocity = 450,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 12000,
				tracks = true,
				turnrate = 20000,
				weaponacceleration = 400,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				customparams = {
					bar_model = "cormissile.s3o",
					light_skip = true,
				},
				damage = {
					bombers = 1000,
					commanders = 4,
					default = 500,
					fighters = 520,
					subs = 4,
					vtol = 225,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "ARMVTOL_MISSILE",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}