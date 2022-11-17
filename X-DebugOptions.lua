NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-DebugOptions.pak", 
["MOD_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "3.21",
["MOD_DESCRIPTION"]			= "This mods makes save game slots standing still along with other stuff...",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"DisableContinuousSaving",         	"True"},
								{"DisableSaveSlotSorting", 				"True"},	--Default False
								{"SkipAbandonedFreighterUnlocking",	 	"True"},	--Default False
								{"SkipIntro", 							"True"},	--Default False
								{"SkipLogos", 							"True"},	--Default False
								{"AlwaysAllowFreighterInventoryAccess", "True"},	--Default False
								{"BootLogoFadeRate",					"0.5"},	--Default 2.5
								--{"UnlockAllStories", 					"True"},	--Default False
                                {"SkipTutorial",                    	"True"},--Default False
                                {"DisableBaseBuildingLimits",    		"True"},
								{"BaseDownloadTimeout",          		"120"}, --ORIGINAL 40
                                --{"OverrideServerSeasonNumber", "2"},--DID NOT WORK
                               -- {"OverrideServerSeasonEndTime", "1669795200"},--DID NOT WORK
                                --{"ForceScanEventsToGoPrime",         	"True"},--Default False
                                --{"",                    "True"},--Default False
                                --dont work{"UnlockAllSeasonRewards",          "True"},--Default False
                                --dont work{"UnlockAllTwitchRewards",          "True"},--Default False
                                --dont work{"UnlockAllStories",                "True"},--Default False
								--{"DisableBasePowerRequirements", "True"},		
                               --dont work{"SkipPlanetDiscoverOnBoot",        "True"},--Default False
                                --dont work{"EverythingIsKnown",               "True"},--Default False
                                
							}
						}
					}
				}	
			}
		}
	}	
}