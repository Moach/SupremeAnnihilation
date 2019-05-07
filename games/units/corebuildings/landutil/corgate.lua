return {
	corgate = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 2048,
		buildcostenergy = 55000,
		buildcostmetal = 3200,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "decals/corgate_aoplane.dds",
		buildpic = "CORGATE.DDS",
		buildtime = 15000,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -4 1",
		collisionvolumescales = "57 38 57",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Plasma Deflector",
		energystorage = 1500,
		explodeas = "hugeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3200,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Overseer",
		noautofire = true,
		objectname = "CORGATE",
		onoffable = false,
		seismicsignature = 0,
		selfdestructas = "hugeBuildingExplosionGenericSelfd",
		sightdistance = 273,
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooo",
		customparams = {
			model_author = "Mr Bob",
			removestop = true,
			removewait = true,
			shield_color_mult = 0.8,
			shield_power = 3250,
			shield_radius = 550,
			subfolder = "corebuildings/landutil",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -0.00271934814453 -1.05072021484",
				collisionvolumescales = "65.7474060059 27.1259613037 55.6685791016",
				collisionvolumetype = "Box",
				damage = 1900,
				description = "Overseer Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 2000,
				object = "CORGATE_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 960,
				description = "Overseer Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 800,
				object = "2X2E",
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
				[1] = "drone1",
			},
			select = {
				[1] = "drone1",
			},
		},
		weapondefs = {
			repulsor = {
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				name = "PlasmaRepulsor",
				range = 550,
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				weapontype = "Shield",
				damage = {
					default = 100,
				},
				shield = {
					alpha = 0.17,
					armortype = "shields",
					energyuse = 0,
					force = 2.5,
					intercepttype = 1,
					power = 3250,
					powerregen = 52,
					powerregenenergy = 562.5,
					radius = 550,
					repulser = true,
					smart = true,
					startingpower = 1100,
					visiblerepulse = true,
					badcolor = {
						[1] = 1,
						[2] = 0.2,
						[3] = 0.2,
						[4] = 0.2,
					},
					goodcolor = {
						[1] = 0.2,
						[2] = 1,
						[3] = 0.2,
						[4] = 0.17,
					},
				},
			},
		},
		weapons = {
			[1] = {
				def = "REPULSOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
