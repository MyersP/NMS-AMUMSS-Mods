ADD_BLANK =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcExternalObjectList">
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects" />
    <Property name="Landmarks" />
    <Property name="Objects" />
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
  </Property>
</Data>
]]	

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "X-ImmersiveGen.pak",
["MOD_AUTHOR"]				= "cruzdroid",
["LUA_AUTHOR"]				= "Babscoole Customized by Lowkie",
["NMS_VERSION"]				= "3.93",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\PLACEMENTVALUES\\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VALUABLE_STUFF"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1250"},--default 250 was 550 --150 way to many spawns
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WORDSTONE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Active", "False"},
								{"PatchSize", "99999999"},--default 200 Set to max 99999999
								{"RegionScale", "20"},--default 1
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRATES"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"Active", "False"},
								{"PatchSize", "99999999"}, --default 110 was 610 --10 way to many spawns
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "DEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "12500"},--default 125 was 425 --25 way to many spawns
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FUELCRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1000"},--default 140 was 400--70 way to many spawns
								{"RegionScale", "20"},--default 20 was 15
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "150"},--default 150
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1000"},--default 110
								{"RegionScale", ".45"},--default .1 --.45 way to many spawns
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL2"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1000"},--default 100 was 250
								{"RegionScale", ".5"},--default .1 as .2
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL3"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1000"},--default 250 was 90
								{"RegionScale", ".6"},--default .2 was .25
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RARE_BONES"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "500"},--default 375
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SCRAPHEAP"},
							["INTEGER_TO_FLOAT"] = "FORCE",	
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "1000"},--default 185 was 685
								{"RegionScale", "1"},--default .54
							}
                        },
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\OBJECTS\\CRYSTALS\\FULL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "6"}, --default 6 WAS 10
							}
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml",},
                            ["REMOVE"] = "SECTION"
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", "QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "6"},--default 6 was 10
							}
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", "GcObjectSpawnData.xml", },
							["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "2"},--default 2 was 20
							}
                        },						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\OBJECTS\\LEVELONEOBJECTS\\FULL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeDensity", "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
                        },
                        { --from no crates machines and tech
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] 	= "SECTION"
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"Placement", "UNDERGROUND",},--No Buried Tech In The Wild 1.3.pak
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage", "0"},
							},
						},                        
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\OBJECTS\\LEVELONEOBJECTS\\FULLSAFE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeDensity", "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0.02"},
								{"FlatDensity", "0.05"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "0.01"},
								{"MaxRegionRadius", "0"},
							}
                        },	
                        {--from no crates machines and tech
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] 	= "SECTION"
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"Placement", "UNDERGROUND",},--No Buried Tech In The Wild 1.3.pak
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage", "0"},
							},
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SOLARSYSTEM\\BIOMES\\OBJECTS\\RARE\\PROCSALVAGE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale", "10"},
								{"MaxScale", "40"},
								{"Coverage", "0"},
							}
                        },					
					}
				},
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
	}
}