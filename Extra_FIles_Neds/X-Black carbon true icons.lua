SUN_ATTENUATION = 0.8

--50 WARNINGS raised
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_zBlack Carbon True Icons.pak", 
["MOD_AUTHOR"]				= "Personal",
["NMS_VERSION"]				= "2.33",
["MOD_DESCRIPTION"]			= "This mod makes Carbon black",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"TopColour"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.03"},
								{"G",	"0.03"},
								{"B",	"0.03"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"MidColour"},
							["REPLACE_TYPE"] 	= "ALL",  
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.01"},
								{"G",	"0.01"},
								{"B",	"0.01"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColour"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"TopColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.03"},
								{"G",	"0.03"},
								{"B",	"0.03"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"MidColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.01"},
								{"G",	"0.01"},
								{"B",	"0.01"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},		
						{
							["PRECEDING_KEY_WORDS"]  = {"CloudColour"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.1"},
								{"G",	"0.1"},
								{"B",	"0.1"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour1"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.0"},
								{"G",	"0.0"},
								{"B",	"0.0"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour2"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.0"},
								{"G",	"0.0"},
								{"B",	"0.0"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour3"},
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.0"},
								{"G",	"0.0"},
								{"B",	"0.0"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"LightColour"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 	= "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	SUN_ATTENUATION},
								{"G",	SUN_ATTENUATION},
								{"B",	SUN_ATTENUATION},
							},
						},	
						
					}
				},
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
                    {
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "5000.000000"},  --ORG "10000.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.800000"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.500000"},  --ORG "0.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.0"},  --ORG "0.031298"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS\GEMTHINGS_MINERALMAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS"}}
                            --ORG MINERAL1.BASE.DDS                            
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.400000"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.15"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\CRYSTAL_LARGE.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/LARGECRYSTAL2.RED.DDS"}}
                            --ORG LARGECRYSTAL.RED.DDS                          
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.800000"},  --ORG "1.000000"  
                            },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {
                                {"Value", "0.5"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ICEFORMATION_MAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers", "TkMaterialSampler.xml"},
                            ["VALUE_CHANGE_TABLE"] 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL2.RED.DDS"}}
                            --ORG MEDIUMCRYSTAL.RED.DDS                          
						},
                    },
                },
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED 
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE