NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Short Arrival Mesg No hazard screen overlay.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.38",
["MOD_DESCRIPTION"]			= "This mods reduces hang time when arriving at a new location, also Removes hazard screen overlay",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DiscoverPlanetTotalTime",	"7"}, -- original 10
								{"DiscoverPlanetMessageWait",	"1"},  -- original 1
								{"DiscoverPlanetMessageTime",	"3"},  --original 7
								{"FrontendConfirmTimeMouseMultiplier",	"6.0"},  --original 1
								{"FrontendConfirmTime",	"0.02"},  --original 0.7
								{"FrontendConfirmTimeSlow",	"0.7"},  --original 1.6
								{"FrontendCursorSize",	"14"},  --original 24
								{"FrontendCursorWidth",	"7"},  --original 9
							}
						},
                        {
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RefinerPadStartTime",	"0.01"}, --"E" time to process material
							}
						},
                        {--Removes hazard screen overlay
							["PRECEDING_KEY_WORDS"] = {"HazardTextures"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Value",""},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"HazardNormalMaps"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Value",""},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"HazardHeightmaps"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Value",""},
							},
						},
					}
				}
			}
		}
	}	
}