--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- mapinfo.lua
--

local mapinfo = {
	name        = "Quicksilver Remake",
	shortname   = "QSR",
	description = "Quicksilver V1 Remake | BAR Certified",
	author      = "IceXuick, original from Cheesecan",
	version     = "1.24",
	--mutator   = "deployment";
	mapfile     = "maps/QSR.smf", --// location of smf/sm3 file (optional)
	modtype     = 3, --// 1=primary, 0=hidden, 3=map
	depend      = {},
	replace     = {},

	--startpic   = "", --// deprecated
	--StartMusic = "", --// deprecated

	maphardness     = 100,
	notDeformable   = false,
	gravity         = 120,
	tidalStrength   = 10,
	maxMetal        = 1.30,
	extractorRadius = 120,
	voidWater       = false,
	autoShowMetal   = true,


	smf = {
		minheight = -80,
		maxheight = 325,
		smtFileName0 = "maps/QSR.smt",
		--smtFileName0 = "",
		--smtFileName1 = "",
		--smtFileName.. = "",
		--smtFileNameN = "",
	},

	sound = {
		--// Sets the _reverb_ preset (= echo parameters),
		--// passfilter (the direct sound) is unchanged.
		--//
		--// To get a list of all possible presets check:
		--//   https://github.com/spring/spring/blob/master/rts/System/Sound/EFXPresets.cpp
		--//
		--// Hint:
		--// You can change the preset at runtime via:
		--//   /tset UseEFX [1|0]
		--//   /tset snd_eaxpreset preset_name   (may change to a real cmd in the future)
		--//   /tset snd_filter %gainlf %gainhf  (may    "   "  "  "    "  "   "    "   )
		preset = "default",

		passfilter = {
			--// Note, you likely want to set these
			--// tags due to the fact that they are
			--// _not_ set by `preset`!
			--// So if you want to create a muffled
			--// sound you need to use them.
			gainlf = 1.0,
			gainhf = 1.0,
		},

		reverb = {
			--// Normally you just want use the `preset` tag
			--// but you can use handtweak a preset if wanted
			--// with the following tags.
			--// To know their function & ranges check the
			--// official OpenAL1.1 SDK document.
			
			--density
			--diffusion
			--gain
			--gainhf
			--gainlf
			--decaytime
			--decayhflimit
			--decayhfratio
			--decaylfratio
			--reflectionsgain
			--reflectionsdelay
			--reflectionspan
			--latereverbgain
			--latereverbdelay
			--latereverbpan
			--echotime
			--echodepth
			--modtime
			--moddepth
			--airabsorptiongainhf
			--hfreference
			--lfreference
			--roomrollofffactor
		},
	},

	resources = {
		detailTex = "detailtex.bmp",
		specularTex = "QSR_specular.png",
		splatDetailTex = "irrelevant.tga",
		splatDistrTex = "splat_distr.png",
		splatDetailNormalDiffuseAlpha = 1,
		splatDetailNormalTex1 = "icexuick_grass_1k.tga",
		splatDetailNormalTex2 = "sand_198_highpass_dnts.tga",
		splatDetailNormalTex3 = "earth_NORM.tga",
		splatDetailNormalTex4 = "crystal_245_highpass_dnts.tga",
		detailNormalTex = "normalmapxl.dds",
		--lightEmissionTex = "",
	},

	splats = {
		TexScales		=	{ 0.0022, 0.002, 0.002, 0.0018 },
		TexMults		=	{ 0.45, 0.2, 0.6, 0.5 },
	},

	atmosphere = {
    minWind = 3.0,
	maxWind = 17.0,
    fogEnd = 1.2,
    fogStart = 1,
    skyBox = "",
    cloudColor = {
      0.89999998,
      0.89999998,
      0.89999998,
    },
    fogColor = {
      0.80000001,
      0.80000001,
      0.5,
    },
    skyColor = {
      0.42879999,
      0.58016002,
      0.63999999,
    },
    sunColor = {
      1,
      0.92,
      0.78,
    },
  },


  lighting = {
    groundShadowDensity = 0.89999998,
    unitShadowDensity = 0.89999998,
    groundAmbientColor = {
      0.51999998,
      0.50959998,
      0.50959998,
    },
    groundDiffuseColor = {
      1,
      1,
      1,
    },
    groundSpecularColor = {
      0.6,
      0.5,
      0.5,
    },
    sunDir = {
      -1.3,
      0.95,
      -0.62,
    },
    --specularsuncolor = { 1.1, 0.95, 0.9  },
    unitAmbientColor = {
      0.56999999,
      0.56942999,
      0.56942999,
    },
    unitDiffuseColor = {
      1,
      0.98533332,
      0.92000002,
    },
    unitSpecularColor = {
      0.8,
      0.60000001,
      0.60000001,
    },
  },
	
	water = {
		damage =  0.0,

		repeatX = 0.0,
		repeatY = 0.0,

		absorb    = {0.004, 0.004, 0.002},
		baseColor = {0.4, 0.6, 0.8},
		minColor  = {0.1, 0.1, 0.23},

		ambientFactor  = 1.3,
		--diffuseFactor  = 0.3,
		specularFactor = 0.5,
		specularPower  = 2.0,

		--planeColor = {0.0, 0.0, 0.0},

		surfaceColor  = {0.65, 0.7, 0.75},
		surfaceAlpha  = 0.1,
		--diffuseColor  = {0.55, 0.4, 0.3},
		specularColor = {0.5, 0.5, 0.5},

		fresnelMin   = 0.3,
		fresnelMax   = 0.8,
		fresnelPower = 4.0,

		reflectionDistortion = 1.0,

		blurBase      = 2.0,
		blurExponent = 1.5,

		perlinStartFreq  =  8.0,
		perlinLacunarity = 3.0,
		perlinAmplitude  =  0.9,
		windSpeed = 1.0, --// does nothing yet

		shoreWaves = true,
		forceRendering = false,

		--// undefined == load them from resources.lua!
		--texture =       "",
		--foamTexture =   "",
		--normalTexture = "",
		--caustics = {
		--	"",
		--	"",
		--},
	},

	teams = {
		[0] = {startPos = {x = 2251, z = 5691}},
		[1] = {startPos = {x = 4631, z = 1477}},
		[2] = {startPos = {x = 2107, z = 2466}},
		[3] = {startPos = {x = 5648, z = 5175}},
	},
	
	terrainTypes = {
		[0] = {
			name = "Seabed",
			hardness = 2.5,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 0.8,
				kbot  = 0.8,
				hover = 0.9,
				ship  = 1.0,
			},
		},
		[100] = {
			name = "Sand",
			hardness = 1.5,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[175] = {
			name = "Grass",
			hardness = 1.8,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.05,
				kbot  = 1.05,
				hover = 1.05,
				ship  = 1.0,
			},
		},
		[255] = {
			name = "Rock",
			hardness = 4.5,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 0.7,
				kbot  = 0.7,
				hover = 0.8,
				ship  = 1.0,
			},
		},
	},

	custom = {
		fog = {
			color    = {0.71, 0.5, 0.34},
			height   = "40%", --// allows either absolue sizes or in percent of map's MaxHeight
			fogatten = 0.0075,
		},
		precipitation = {
			density   = 30000,
			size      = 1.5,
			speed     = 50,
			windscale = 1.2,
			texture   = 'LuaGaia/effects/snowflake.png',
		},
	},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Helper

local function lowerkeys(ta)
	local fix = {}
	for i,v in pairs(ta) do
		if (type(i) == "string") then
			if (i ~= i:lower()) then
				fix[#fix+1] = i
			end
		end
		if (type(v) == "table") then
			lowerkeys(v)
		end
	end
	
	for i=1,#fix do
		local idx = fix[i]
		ta[idx:lower()] = ta[idx]
		ta[idx] = nil
	end
end

lowerkeys(mapinfo)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Map Options

do
	local function tmerge(t1, t2)
		for i,v in pairs(t2) do
			if (type(v) == "table") then
				t1[i] = t1[i] or {}
				tmerge(t1[i], v)
			else
				t1[i] = v
			end
		end
	end

	getfenv()["mapinfo"] = mapinfo
		local files = VFS.DirList("mapconfig/mapinfo/", "*.lua")
		table.sort(files)
		for i=1,#files do
			local newcfg = VFS.Include(files[i])
			if newcfg then
				lowerkeys(newcfg)
				tmerge(mapinfo, newcfg)
			end
		end
	getfenv()["mapinfo"] = nil
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return mapinfo

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------