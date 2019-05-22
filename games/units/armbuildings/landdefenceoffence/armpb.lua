return {
	armpb = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 14000,
		buildcostmetal = 680,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "decals/armpb_aoplane.dds",
		buildpic = "ARMPB.DDS",
		buildtime = 5961,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		cloakcost = 16,
		corpse = "DEAD",
		damagemodifier = 0.5,
		description = "Pop-up Gauss Cannon",
		energystorage = 25,
		explodeas = "smallBuildingExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2531,
		maxslope = 10,
		maxwaterdepth = 0,
		mincloakdistance = 55,
		name = "Pit Bull",
		nochasecategory = "MOBILE",
		objectname = "ARMPB",
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 598,
		usebuildinggrounddecal = true,
		yardmap = "ooooooooo",
		customparams = {
			model_author = "Beherith",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.5039062502e-06 -0.0",
				collisionvolumescales = "33.0 12.8524169922 33.0",
				collisionvolumetype = "Box",
				damage = 1519,
				description = "Pit Bull Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 15,
				hitdensity = 100,
				metal = 350,
				object = "ARMPB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "55.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 760,
				description = "Pit Bull Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 140,
				object = "3X3D",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twrturn3",
			},
			select = {
				[1] = "twrturn3",
			},
		},
		weapondefs = {
			armpb_weapon = {
				areaofeffect = 24,
				avoidfeature = false,
				burnblow = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Pop-up heavy g2g gauss cannon",
				noselfdamage = true,
				range = 800,
				reloadtime = 1.625,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				targetmoveerror = 0.2,
				tolerance = 8000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 800,
				damage = {
					bombers = 500,
					default = 675,
					fighters = 260,
					hvyboats = 472.5,
					subs = 5,
					vtol = 626,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "ARMPB_WEAPON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
