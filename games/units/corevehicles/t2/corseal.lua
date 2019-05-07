return {
	corseal = {
		acceleration = 0.05125,
		activatewhenbuilt = true,
		brakerate = 0.1025,
		buildcostenergy = 9100,
		buildcostmetal = 480,
		buildpic = "CORSEAL.DDS",
		buildtime = 12051,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "31 31 31",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Medium Amphibious Tank",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "smallexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 2340,
		maxslope = 12,
		maxvelocity = 2.31,
		maxwaterdepth = 255,
		movementclass = "ATANK3",
		name = "Croc",
		nochasecategory = "VTOL",
		objectname = "CORSEAL",
		script = "BASICTANKSCRIPT.LUA",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 399,
		sonardistance = 299.25,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.7457,
		turnrate = 487,
		customparams = {
			bar_trackoffset = 6,
			bar_trackstrength = 5,
			bar_tracktype = "corwidetracks",
			bar_trackwidth = 30,
			basename = "base",
			cannon1name = "barrel1",
			cannon2name = "barrel2",
			driftratio = "0.2",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			flare2name = "flare2",
			kickback = "-2.4",
			model_author = "Mr Bob",
			restoretime = "3000",
			rockstrength = "4.5",
			sleevename = "sleeves",
			subfolder = "corevehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "45",
			wpn1turrety = "75",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.710494995117 -1.1132812503e-06 0.9375",
				collisionvolumescales = "31.2236328125 16.1107177734 37.8449707031",
				collisionvolumetype = "Box",
				damage = 2000,
				description = "Croc Wreckage",
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 236,
				object = "CORSEAL_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 1500,
				description = "Croc Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 118,
				object = "2X2E",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
				[2] = "custom:DUST_CLOUD",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			core_croc = {
				areaofeffect = 64,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "PlasmaCannon",
				noselfdamage = true,
				range = 440,
				reloadtime = 0.9,
				soundhit = "xplomed4",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannon2",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 260,
				damage = {
					bombers = 29,
					default = 116,
					fighters = 29,
					subs = 5,
					vtol = 29,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_CROC",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}