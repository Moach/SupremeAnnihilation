-- Widget Custom data and order, order = 0 disabled widget
return {
	allowUserWidgets = true,
	data = {
		AdvPlayersList = {
			alwaysHideSpecs = false,
			collapsable = false,
			cpuText = false,
			customScale = 1,
			expandDown = false,
			expandLeft = true,
			gameFrame = 138254,
			lockcameraHideEnemies = true,
			lockcameraLos = true,
			m_pointActive = true,
			m_seespecActive = true,
			m_takeActive = true,
			specListShow = false,
			transitionTime = 0.72999996,
			vsx = 1366,
			vsy = 768,
			widgetPosX = 1166.75,
			widgetPosY = 0,
			widgetRelRight = 0,
			widgetRight = 1359.63123,
			widgetTop = 102.511276,
			lastSystemData = {
				[0] = "CPU:   Intel i5-3210M @ 2.50GHz\
CPU cores:  2 / 4\
RAM:  16276MB\
GPU:  Intel HD Graphics 4000\
1366x768\
OS:  Windows 8",
			},
			m_active_Table = {
				ally = true,
				chat = false,
				country = true,
				cpuping = true,
				id = false,
				indent = true,
				name = true,
				rank = true,
				resources = true,
				share = true,
				side = false,
				sizedn = true,
				sizeup = true,
				skill = true,
			},
		},
		["Ally Selected Units"] = {
			maxAlpha = 0.44999999,
			selectPlayerUnits = true,
			version = 1.10000002,
			xRelPos = 0.83499998,
			yRelPos = 0.88,
		},
		AllyCursors = {
			showPlayerName = true,
			showSpectatorName = true,
		},
		["Anti Ranges"] = {
			fadeOnCloseup = true,
			showLineGlow2 = false,
		},
		["Anti-Comnap v1.2"] = {
			buttonXA = 1186,
			buttonXB = 1366,
			buttonYA = 376,
			buttonYB = 392,
		},
		["Auto Group"] = {
			version = "3.031",
			config = {
				immediate = {
					value = true,
				},
			},
			groups = {
				[1] = {
					[1] = "corak",
					[2] = 1,
				},
				[2] = {
					[1] = "corthud",
					[2] = 1,
				},
				[3] = {
					[1] = "corstorm",
					[2] = 1,
				},
			},
			options = {
				addall = {
					desc = "Existing units will be added to group# when setting autogroup#.",
					name = "Add All",
					type = "bool",
					value = true,
				},
				cleargroups = {
					name = "Clear Auto Groups",
					type = "button",
				},
				groupnumbers = {
					name = "Display Group Numbers",
					type = "bool",
					value = true,
				},
				immediate = {
					desc = "Units built/resurrected/received are added to autogroups immediately instead of waiting them to be idle.",
					name = "Immediate Mode",
					type = "bool",
					value = true,
				},
				loadgroups = {
					desc = "Preserve auto groupings for next game. Unchecking this clears the groups!",
					name = "Preserve Auto Groups",
					type = "bool",
					value = true,
				},
				verbose = {
					name = "Verbose Mode",
					type = "bool",
					value = true,
				},
			},
		},
		["BA LOS colors"] = {
			colorProfile = "greyscale",
			losWithRadarEnabled = false,
		},
		["Bloom Shader"] = {
			basicAlpha = 0.15000001,
			globalBlursizeMult = 1,
			qualityPreset = 1,
		},
		["Bloom Shader Deferred"] = {
			globalBlursizeMult = 1,
			glowAmplifier = 0.75,
			qualityPreset = 1,
		},
		BuildBar = {
			align = 1,
			autoclose = true,
			iconSizeBase = 28,
			offset = 0,
			oldUnitpics = false,
			openByClick = false,
			side = 1,
		},
		["Camera Remember"] = {
			name = "spring",
		},
		["Comblast & Dgun Range"] = {
			hideOnDistantEnemy = true,
		},
		["Commander Name Tags"] = {
			nameScaling = true,
		},
		["Commands FX"] = {
			filterAIteams = false,
			opacity = 1,
		},
		Cursors = {
			cursorSet = "old",
			defaultCursorSet = "bar",
		},
		CustomFormations2 = {
			maxHungarianUnits = 48,
		},
		["Darken map"] = {
			darkenFeatures = false,
			maps = {
				["quicksilver 1.1"] = 0,
				talus = 0,
				therockfinal = 0.12,
			},
		},
		["Defense Range"] = {
			enabled = {
				ally = {
					air = false,
					ground = false,
					nuke = false,
					radar = false,
				},
				enemy = {
					air = true,
					ground = true,
					nuke = true,
					radar = false,
				},
			},
		},
		Ecostats = {
			removeDeadOn = false,
			resTextOn = false,
			right = true,
			xRelPos = 1,
			yRelPos = 1,
		},
		EnemySpotter = {
			drawPlatter = true,
			highlightOpacity = 2.29999995,
			renderAllTeamsAsPlayer = false,
			renderAllTeamsAsSpec = false,
			spotterOpacity = 0.19,
			useXrayHighlight = false,
		},
		["FactoryQ Manager"] = {},
		["Fancy Selected Units"] = {
			baseOpacity = 0.25,
			currentOption = 2,
			showSecondLine = false,
			spotterOpacity = 0.94999999,
			teamcolorOpacity = 0.69999999,
		},
		["First launch setup"] = {
			firsttimesetupDone = true,
		},
		["GUI-Shader"] = {
			allowScreenBlur = false,
			blurIntensity = 0.0007,
		},
		["Health Bars"] = {
			alwaysDrawBarPercentageForComs = true,
			barScale = 0.69999999,
			currentOption = 2,
			drawBarPercentage = 0,
		},
		["Highlight Selected Units"] = {
			highlightAlpha = 0.2,
			useHighlightShader = true,
			useTeamcolor = false,
		},
		["Idle Builders"] = {
			max_icons = 10,
			position_x = 0.48535869,
			position_y = 0.92838544,
		},
		["Ignore List API"] = {},
		["Initial Queue"] = {
			bgheight = 291.620392,
			bgwidth = 209.704559,
			oldUnitpics = false,
			wl = 50,
			wt = 384,
			buildQueue = {},
		},
		["LOS View"] = {
			lastMapDrawMode = "metal",
		},
		["Light Effects"] = {
			enableDeferred = false,
			enableHeatDistortion = false,
			enableNanolaser = false,
			enableThrusters = false,
			globalLifeMult = 0.40000001,
			globalLightMult = 0.80000001,
			globalLightMultLaser = 0.40000001,
			globalRadiusMult = 1,
			globalRadiusMultLaser = 0.5,
			resetted = 1.39999998,
		},
		["Losses Counter "] = {
			[1] = 0.71083456,
			[2] = 0.93098956,
		},
		["Map Info"] = {
			stickToFloor = false,
		},
		["Music Player"] = {
			playing = true,
		},
		Options = {
			cameraTransitionTime = 0.23999999,
			currentGroupTab = "gfx",
			maxNanoParticles = 500,
			customPresets = {},
			savedConfig = {
				advmapshading = {
					[1] = "AdvMapShading",
					[2] = 0,
				},
				advmodelshading = {
					[1] = "AdvModelShading",
					[2] = 0,
				},
				advsky = {
					[1] = "AdvSky",
					[2] = 0,
				},
				camera = {
					[1] = "CamMode",
					[2] = 2,
				},
				decals = {
					[1] = "GroundDecals",
					[2] = 5,
				},
				disticon = {
					[1] = "UnitIconDist",
					[2] = 210,
				},
				grassdetail = {
					[1] = "GrassDetail",
					[2] = 0,
				},
				grounddetail = {
					[1] = "GroundDetail",
					[2] = 150,
				},
				guiopacity = {
					[1] = "ui_opacity",
					[2] = 0.20999999,
				},
				hwcursor = {
					[1] = "HardwareCursor",
					[2] = 1,
				},
				normalmapping = {
					[1] = "NormalMapping",
					[2] = 0,
				},
				particles = {
					[1] = "MaxParticles",
					[2] = 10000,
				},
				shadows = {
					[1] = "Shadows",
					[2] = 1,
				},
				sndvolbattle = {
					[1] = "snd_volbattle",
					[2] = 100,
				},
				sndvolmaster = {
					[1] = "snd_volmaster",
					[2] = 60,
				},
				sndvolmusic = {
					[1] = "snd_volmusic",
					[2] = 20,
				},
				sndvolunitreply = {
					[1] = "snd_volunitreply",
					[2] = 100,
				},
				treewind = {
					[1] = "TreeWind",
					[2] = 0,
				},
				vsync = {
					[1] = "VSync",
					[2] = 0,
				},
				water = {
					[1] = "Water",
					[2] = 1,
				},
			},
		},
		Outline = {
			customSize = 0.80000001,
			maxOutlineUnits = 750,
		},
		["Passive builders"] = {
			passiveCons = true,
			passiveLabs = true,
			passiveNanos = true,
		},
		["Persistent Build Spacing"] = {
			buildSpacing = {
				armack = 1,
				armadvsol = 1,
				armamb = 2,
				armatlas = 3,
				armca = 0,
				armck = 2,
				armclaw = 0,
				armcv = 0,
				armdfly = 2,
				armdrag = 1,
				armestor = 1,
				armfboy = 3,
				armfdrag = 2,
				armfflak = 46,
				armfhlt = 39,
				armfido = 4,
				armflak = 27,
				armfmine3 = 14,
				armfmkr = 2,
				armfrt = 48,
				armfus = 2,
				armgeo = 0,
				armguard = 3,
				armhlt = 36,
				armlab = 0,
				armllt = 0,
				armmakr = 2,
				armmex = 10,
				armmine1 = 7,
				armmine2 = 6,
				armmine3 = 8,
				armmlv = 0,
				armmmkr = 3,
				armmoho = 1,
				armmstor = 2,
				armnanotc = 0,
				armpacko = 16,
				armpb = 18,
				armpeep = 2,
				armpt = 3,
				armpw = 1,
				armrl = 37,
				armsolar = 1,
				armspy = 3,
				armtide = 3,
				armtl = 21,
				armuwadves = 3,
				armuwadvms = 3,
				armuwes = 4,
				armuwms = 4,
				armwin = 2,
				coradvsol = 2,
				corak = 4,
				corck = 1,
				cordrag = 2,
				corestor = 2,
				corfav = 3,
				corfink = 4,
				corflak = 20,
				corfort = 3,
				corfus = 1,
				corhrk = 2,
				corlab = 1,
				cormakr = 2,
				cormine1 = 13,
				cormine2 = 6,
				cormine3 = 12,
				cormine4 = 4,
				cormstor = 1,
				corpun = 13,
				corsolar = 1,
				corsumo = 3,
				corvalk = 7,
				corwin = 2,
			},
		},
		["Player Color Palette"] = {
			randomize = false,
			useSameTeamColors = false,
		},
		["Player-TV"] = {
			playerChangeDelay = 40,
			toggled = false,
		},
		["Red Build/Order Menu"] = {
			drawBigTooltip = false,
			drawPrice = true,
			drawRadaricon = true,
			drawTooltip = true,
			iconScaling = false,
			largePrice = true,
			largeUnitIcons = false,
			oldUnitpics = false,
			playSounds = true,
			shortcutsInfo = true,
			Config = {
				buildmenu = {
					fadetime = 0.14,
					fadetimeOut = 0.09240001,
					iconhoverscale = 0.91000003,
					iconscale = 0.91000003,
					ispreadx = 0,
					ispready = 0,
					isx = 41,
					isy = 41,
					ix = 5,
					iy = 8,
					margin = 5,
					menuname = "buildmenu",
					padding = 3.4196353,
					px = -0.0955715,
					py = 313.265625,
					roundedPercentage = 0.2,
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.20999999,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					cbuttonbackground = {
						[1] = 0.1,
						[2] = 0.1,
						[3] = 0.1,
						[4] = 1,
					},
					color2 = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 0.0084,
					},
					ctext = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					dragbutton = {
						[1] = 2,
						[2] = 3,
					},
					tooltip = {
						background = "In CTRL+F11 mode: Hold ���middle mouse button���� to drag the buildmenu.",
					},
				},
				ordermenu = {
					fadetime = 0.14,
					fadetimeOut = 0.09240001,
					iconhoverscale = 0.93000001,
					iconscale = 0.93000001,
					ispreadx = 0,
					ispready = 0,
					isx = 41,
					isy = 33,
					ix = 5,
					iy = 4,
					margin = 5,
					menuname = "ordermenu",
					padding = 3.4196353,
					px = -0.0955715,
					py = 173.044266,
					roundedPercentage = 0.2,
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.20999999,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 1,
					},
					cbuttonbackground = {
						[1] = 0.1,
						[2] = 0.1,
						[3] = 0.1,
						[4] = 1,
					},
					color2 = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 0.025,
					},
					ctext = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					dragbutton = {
						[1] = 2,
						[2] = 3,
					},
					tooltip = {
						background = "In CTRL+F11 mode: Hold ���middle mouse button���� to drag the ordermenu.",
					},
				},
			},
		},
		["Red Console (Battle and autohosts)"] = {
			Config = {
				console = {
					fadedistance = 1.262272,
					fadetime = 0.25,
					filterduplicates = true,
					fontsize = 12.6227198,
					margin = 8.83590412,
					maxage = 30,
					maxlines = 3,
					maxlinesScrollmode = 3,
					minlines = 3,
					noblur = true,
					px = 409.800018,
					py = 38.4000015,
					sx = 546.400024,
					callytext = {
						[1] = 0,
						[2] = 1,
						[3] = 0,
						[4] = 1,
					},
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0,
					},
					cgametext = {
						[1] = 0.40000001,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					cmisctext = {
						[1] = 0.77999997,
						[2] = 0.77999997,
						[3] = 0.77999997,
						[4] = 1,
					},
					cotherallytext = {
						[1] = 1,
						[2] = 0.5,
						[3] = 0.5,
						[4] = 1,
					},
					cothertext = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					cspectext = {
						[1] = 1,
						[2] = 1,
						[3] = 0,
						[4] = 1,
					},
					dragbutton = {
						[1] = 2,
						[2] = 3,
					},
					tooltip = {
						background = "In CTRL+F11 mode:  Hold ���middle mouse button���� to drag the console.\
- Press ���CTRL���� while mouse is above the \
console to activate chatlog viewing.\
- Use mousewheel (+hold ���SHIFT���� for speedup)\
 to scroll through the chatlog.",
					},
				},
			},
		},
		["Red Console (In-game chat only)"] = {
			fontsizeMultiplier = 0.90000004,
			showBackground2 = true,
			Config = {
				console = {
					fadedistance = 1.262272,
					fadetime = 0.25,
					filterduplicates = true,
					fontsize = 13.0645161,
					margin = 8.83590412,
					maxage = 60,
					maxlines = 6,
					maxlinesScrollmode = 10,
					minlines = 2,
					noblur = true,
					px = 409.800018,
					py = 80.6399994,
					sx = 546.400024,
					callytext = {
						[1] = 0,
						[2] = 1,
						[3] = 0,
						[4] = 1,
					},
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.19,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0,
					},
					cgametext = {
						[1] = 0.40000001,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					cmisctext = {
						[1] = 0.77999997,
						[2] = 0.77999997,
						[3] = 0.77999997,
						[4] = 1,
					},
					cotherallytext = {
						[1] = 1,
						[2] = 0.5,
						[3] = 0.5,
						[4] = 1,
					},
					cothertext = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					cspectext = {
						[1] = 1,
						[2] = 1,
						[3] = 0,
						[4] = 1,
					},
					dragbutton = {
						[1] = 2,
						[2] = 3,
					},
					tooltip = {
						background = "In CTRL+F11 mode:  Hold ���middle mouse button���� to drag the console.\
- Press ���CTRL���� while mouse is above the \
console to activate chatlog viewing.\
- Use mousewheel (+hold ���SHIFT���� for speedup)\
 to scroll through the chatlog.",
					},
				},
			},
		},
		["Red Console (old)"] = {
			fontsizeMultiplier = 0.90000004,
		},
		["Red Minimap"] = {
			Config = {
				minimap = {
					bsx = 15,
					bsy = 15,
					cbordersize = 2.56472635,
					fadedistance = 100,
					fadetime = 0.25,
					px = 0,
					py = 0,
					sx = 211.968002,
					sy = 176.639999,
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.20999999,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0,
					},
					cmovebackground = {
						[1] = 0,
						[2] = 1,
						[3] = 0,
						[4] = 0.5,
					},
					cmovecolor = {
						[1] = 0.89999998,
						[2] = 0.89999998,
						[3] = 0.89999998,
						[4] = 0.80000001,
					},
					cresizebackground = {
						[1] = 0.89999998,
						[2] = 0.89999998,
						[3] = 0.89999998,
						[4] = 0.5,
					},
					cresizecolor = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 1,
					},
					dragbutton = {
						[1] = 1,
					},
					tooltip = {},
				},
			},
		},
		["Red Tooltip"] = {
			Config = {
				tooltip = {
					fontsize = 10.5,
					margin = 11,
					padding = 3.4196353,
					px = -0.5,
					py = 659,
					sx = 270,
					sy = 75,
					unitCounterEnabled = true,
					cbackground = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.20999999,
					},
					cborder = {
						[1] = 0,
						[2] = 0,
						[3] = 0,
						[4] = 0.2,
					},
					color2 = {
						[1] = 1,
						[2] = 1,
						[3] = 1,
						[4] = 0.0084,
					},
					dragbutton = {
						[1] = 2,
						[2] = 3,
					},
					tooltip = {
						background = "In CTRL+F11 mode: Hold ���middle mouse button���� to drag this element.",
					},
				},
			},
		},
		["Selected Units Buttons"] = {
			oldUnitpics = false,
		},
		["Shadow Quality Manager"] = {
			averageFps = 9,
			disableFps = 30,
			maxQuality = 8192,
			minQuality = 2048,
			previousQuality = 8192,
			previousQualityFps = 30,
		},
		SmartSelect = {
			includeBuilders = false,
			includeNanosAsMobile = true,
			selectBuildingsWithMobile = false,
		},
		Snow = {
			autoReduce = false,
			averageFps = 60,
			customParticleMultiplier = 0.2,
			gameframe = 7576,
			particleStep = 10,
			snowMaps = {
				sacrifice_v1 = false,
				thecoldplace = false,
				xenolithic_v4 = false,
			},
		},
		["Stockpiler (dynamic)"] = {
			MaxStockpile = 10,
		},
		TeamStats = {
			sortAscending = false,
			sortVar = "damageDealt",
			guiData = {
				mainPanel = {
					draggingBorderSize = 7,
					visible = false,
					absSizes = {
						x = {
							length = 669.340027,
							max = 1047.17566,
							min = 318.687805,
						},
						y = {
							length = 460.800018,
							max = 583.679993,
							min = 517.581787,
						},
					},
					relSizes = {
						x = {
							length = 0.49000001,
							max = 0.76660001,
							min = 0.2333,
						},
						y = {
							length = 0.60000002,
							max = 0.75999999,
							min = 0.22,
						},
					},
				},
			},
		},
		Tombstones = {
			gameframe = 47674,
			tombstones = {},
		},
		["Top Bar"] = {
			resourcebarBgTint = false,
		},
		["Under construction gfx"] = {
			highlightAlpha = 0.40000001,
			useHighlightShader = true,
		},
		["Voice Notifs"] = {
			playTrackedPlayerNotifs = true,
			volume = 0.65000004,
			soundList = {
				GamePause = true,
				GameStarted = true,
				IdleBuilder = true,
				NukeLaunched = true,
				PlayerLeft = true,
				UnitLost = true,
				UnitsReceived = true,
				aCommLost = true,
				eCommDestroyed = true,
			},
		},
		["Widget Selector"] = {
			curMaxEntries = 26,
			show = false,
			startEntry = 165,
		},
	},
	order = {
		["*Intro Music*"] = 81,
		["*MCamera Constraints*1.0"] = 14,
		AdvPlayersList = 0,
		["AdvPlayersList info"] = 0,
		["AdvPlayersList mascotte"] = 0,
		["Air Factory Fly by Default"] = 0,
		["Air ground area attack"] = 53,
		["Ally Selected Units"] = 0,
		AllyCursors = 0,
		["Alternate Chat Keys"] = 21,
		["Anti Ranges"] = 95,
		["Anti-Comnap v1.2"] = 18,
		["Area Mex"] = 22,
		["Area unload"] = 23,
		["Assist Units Maneuver"] = 0,
		["Attack AoE"] = 87,
		["Attack and Move Notification"] = 78,
		["Attack no ally"] = 25,
		["Auto Cloak Popups"] = 0,
		["Auto First Build Facing"] = 26,
		["Auto Group"] = 0,
		["Auto Reclaim/Heal/Assist"] = 0,
		["Auto Skirm"] = 55,
		["AutoRepair v0.6"] = 0,
		Autoquit = 0,
		["BA Hotkeys"] = 82,
		["BA Hotkeys -- swap YZ"] = 0,
		["BA LOS colors"] = 52,
		["BA cmdcolors"] = 12,
		["Blast Radius"] = 27,
		["Bloom Shader"] = 0,
		["Bloom Shader Deferred"] = 12345,
		["Bomber control"] = 98,
		["Build Split"] = 0,
		BuildBar = 61,
		BuildETA = 17,
		["Camera Remember"] = 28,
		CameraFlip = 29,
		CameraShake = 43,
		["Cattle and Loveplay: Sand Build Command Helper"] = 66,
		["Cattle and Loveplay: Sand Worm Debug Visualizations"] = 67,
		["Cattle and Loveplay: Sand Worm Radar"] = 68,
		["Cattle and Loveplay: Start Alerts"] = 86,
		["Changelog Info"] = 0,
		["Chicken Stats Panel"] = 0,
		["Chicken Team Colour"] = 0,
		["Clearmapmarks button"] = 19,
		["Clever gathering point"] = 67,
		["Cloak Fire State 2"] = 20,
		CloseFight = 71,
		["Com DontBreakCloak"] = 60,
		["Comblast & Dgun Range"] = 62,
		["Combo Overhead/Free Camera (experimental)"] = 0,
		CommandInsert = 97,
		["Commander Hurt Vignette"] = 102,
		["Commander Name Tags"] = 88,
		["Commands FX"] = 0,
		["Commands info"] = 7,
		["Constructor locater"] = 0,
		["Context Build"] = 86,
		Cursors = 83,
		CustomFormations2 = 107,
		["DGun Stall Assist"] = 69,
		["DGun no ally"] = 50,
		["DGun no ground enemies"] = 46,
		["Darken map"] = 0,
		["Default Group Recall Fix"] = 106,
		["Defense Range"] = 0,
		["Deferred rendering"] = 0,
		["Depth of Field"] = 0,
		["Disable Bad Widgets"] = 1,
		["Discord icon"] = 0,
		["Display DPS"] = 0,
		DontMove = 74,
		["Dynamic Avoidance System"] = 87,
		["EMP + decloak range"] = 30,
		["Easy Facing"] = 76,
		Ecostats = 84,
		EnemySpotter = 0,
		["Faction Change"] = 0,
		["Factory Auto-Repeat"] = 0,
		["Factory KickStart"] = 0,
		["Factory hold position"] = 80,
		FactoryGuard = 0,
		["FactoryQ Manager"] = 9,
		["Fancy Selected Units"] = 13,
		["First launch setup"] = 12345,
		["Frontline Repairs"] = 24,
		["Funks EndGame Graph"] = 0,
		["GUI-Shader"] = 0,
		["Game info"] = 89,
		GameTypeInfo = 83,
		["Ghost Radar"] = 0,
		["Ghost Site"] = 0,
		["Given Units"] = 0,
		Grabinput = 0,
		["Group Label"] = 56,
		["Health Bars"] = 16,
		["Highlight Geos"] = 45,
		["Highlight Selected Units"] = 0,
		["Highlight Unit"] = 93,
		["Holdfire Fix"] = 72,
		IceUI = 96,
		["Idle Builders"] = 70,
		["Ignore List API"] = 31,
		ImmobileBuilder = 73,
		["Initial Queue"] = 21,
		["Keybind/Mouse Info"] = 8,
		["Krow Setup"] = 47,
		["LOS View"] = 63,
		["Light Effects"] = 0,
		["Load Own Moving"] = 64,
		["Local Mexes"] = 0,
		["Loop Select"] = 32,
		["Losses Counter "] = 0,
		["Lua GeoVents V1.0"] = 85,
		["Lua Metal Spots V4.1"] = 92,
		["Lua Metal Spots V4.2"] = 109,
		["Lua Metal Spots V4.2-multi"] = 90,
		["Lua UiKeys loader"] = 54,
		Lups = 105,
		LupsManager = 0,
		["Map Draw Blocker"] = 0,
		["Map Edge Extension"] = 0,
		["Map External VR Grid"] = 0,
		["Map Info"] = 15,
		["Mapmarks FX"] = 0,
		["Metalspot Finder"] = 12345,
		["Mex Snap"] = 0,
		["MexUpg Helper"] = 0,
		MoreSounds = 70,
		["Mouse Buildspacing"] = 103,
		["Mouse FX"] = 90,
		["Mouse Reclaim/Patrol"] = 104,
		["Mouse to Mexes"] = 0,
		["Move Window Position"] = 0,
		["Music Player"] = 18,
		NoDuplicateOrders = 79,
		["Obedient constructors v5"] = 99,
		OnlyFightersPatrol = 0,
		Options = 108,
		Outline = 0,
		["Passive builders"] = 77,
		["Pause Screen"] = 10,
		["Pause/Unpause sounds"] = 44,
		["Persistent Build Spacing"] = 33,
		["Player Color Palette"] = 0,
		["Player-TV"] = 0,
		["Point Tracker"] = 0,
		Prospector = 85,
		["Quick Unload"] = 92,
		["Rank Icons"] = 91,
		["Receive Units Indicator"] = 0,
		ReclaimInfo = 34,
		["Red Build/Order Menu"] = 51,
		["Red Console (Battle and autohosts)"] = 0,
		["Red Console (In-game chat only)"] = 58,
		["Red Minimap"] = 14,
		["Red Tooltip"] = 11,
		Red_Drawing = 109,
		Red_UI_Framework = 5,
		RelativeMinimap = 49,
		["Resurrection Halos"] = 0,
		["Select n Center!"] = 102,
		["Selected Units Buttons"] = 35,
		["Self-Destruct icons"] = 0,
		["Set fighters on Fly mode"] = 99,
		["Set target default"] = 2,
		["Shadow Quality Manager"] = 0,
		["Share Tracker"] = 0,
		["Show Builder Queue"] = 101,
		["Show Orders"] = 36,
		["Smart Area Reclaim"] = 66,
		SmartNanos = 59,
		SmartSelect = 40,
		SmoothScroll = 0,
		Snow = 0,
		["Specific Unit Loader"] = 65,
		["Specific Unit Reclaimer"] = 0,
		["Spectate Selected"] = 0,
		["Spy move/reclaim defaults"] = 3,
		["State Prefs"] = 0,
		["State Remover"] = 0,
		["State Reverse Toggle"] = 37,
		["Statistics Collection"] = 0,
		["Stockpiler (dynamic)"] = 68,
		["Stop means Stop"] = 38,
		["Take Proxy"] = 39,
		TeamPlatter = 0,
		TeamStats = 0,
		Tombstones = 0,
		Tooltip = 4,
		["Top Bar"] = 6,
		["Transport AI"] = 0,
		["Transporter 2"] = 81,
		Transporting = 48,
		["Under construction gfx"] = 100,
		["Unit Finished Sounds"] = 41,
		["Unit Marker"] = 75,
		["Unit Mover"] = 0,
		["Unit Stats"] = 0,
		["Voice Notifs"] = 0,
		["Volume OSD"] = 42,
		["Vote interface"] = 0,
		["Waypoint Dragger"] = 94,
		["Widget Profiler"] = 0,
		["Widget Selector"] = 1,
		XrayShader = 0,
		["Z Selector"] = 0,
		gui_transport_weight_limit = 57,
		["replay buttons"] = 79,
	},
}