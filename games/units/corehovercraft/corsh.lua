return {
	corsh = {
		acceleration = 0.10226,
		brakerate = 0.10226,
		buildcostenergy = 1500,
		buildcostmetal = 75,
		buildpic = "CORSH.DDS",
		buildtime = 4079,
		canmove = true,
		category = "ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE EMPABLE",
		collisionvolumeoffsets = "0 1 0",
		collisionvolumescales = "24 16 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Fast Attack Hovercraft",
		energymake = 2.6,
		energyuse = 2.6,
		explodeas = "smallExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 230,
		maxslope = 16,
		maxvelocity = 3.65,
		maxwaterdepth = 0,
		movementclass = "HOVER3",
		name = "Scrubber",
		nochasecategory = "VTOL",
		objectname = "CORSH",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 509,
		stealth = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 2.8116,
		turnrate = 615,
		customparams = {
			model_author = "Beherith",
			subfolder = "corehovercraft",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "1.82556915283 -0.57393942627 -0.410171508789",
				collisionvolumescales = "20.8764801025 14.7368011475 29.8970336914",
				collisionvolumetype = "Box",
				damage = 162,
				description = "Scrubber Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 40,
				object = "CORSH_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 81,
				description = "Scrubber Heap",
				energy = 0,
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 16,
				object = "3X3A",
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
				[1] = "hovsmok2",
			},
			select = {
				[1] = "hovsmsl2",
			},
		},
		weapondefs = {
			armsh_weapon = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.1,
				burstrate = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				energypershot = 3,
				explosiongenerator = "custom:laserhit-small",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Laser",
				noselfdamage = true,
				range = 500,
				reloadtime = 0.6,
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfast",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				thickness = 1.25,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 450,
				damage = {
					default = 448,
					subs = 2,
					buildings = 260,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ARMSH_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
