return {
	correap = {
		acceleration = 0.0362,
		brakerate = 0.0724,
		buildcostenergy = 10000,
		buildcostmetal = 665,
		buildpic = "CORREAP.DDS",
		buildtime = 11501,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "34 34 38",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Heavy Assault Tank",
		energymake = 0.8,
		energyuse = 0.8,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 4800,
		maxslope = 12,
		maxvelocity = 2.29,
		maxwaterdepth = 100,
		movementclass = "HTANK3",
		name = "Reaper",
		nochasecategory = "VTOL",
		objectname = "CORREAP",
		script = "BASICTANKSCRIPT.LUA",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 462,
		trackoffset = 8,
		trackstrength = 8,
		tracktype = "StdTank",
		trackwidth = 33,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.72656,
		turnrate = 347,
		customparams = {
			bar_trackoffset = 8,
			bar_trackstrength = 8,
			bar_tracktype = "corwidetracks",
			bar_trackwidth = 33,
			basename = "base",
			cannon1name = "barrel1",
			cannon2name = "barrel2",
			core_tank = "1",
			driftratio = "0.25",
			firingceg = "barrelshot-medium",
			flare1name = "flare1",
			flare2name = "flare2",
			kickback = "-2.4",
			model_author = "Mr Bob",
			restoretime = "3000",
			rockstrength = "3.5",
			sleevename = "sleeves",
			subfolder = "corevehicles/t2",
			techlevel = 2,
			turretname = "turret",
			wpn1turretx = "65",
			wpn1turrety = "105",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.042236328125 -0.00674871826172 -0.122863769531",
				collisionvolumescales = "37.7348022461 25.9745025635 40.3383178711",
				collisionvolumetype = "Box",
				damage = 3000,
				description = "Reaper Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 350,
				object = "CORREAP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 2500,
				description = "Reaper Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 150,
				object = "3X3C",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			core_reap = {
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
				range = 620,
				reloadtime = 0.7,
				soundhit = "xplomed2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannon3",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 380,
				damage = {
					bombers = 35,
					default = 249,
					fighters = 35,
					subs = 5,
					vtol = 35,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_REAP",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
