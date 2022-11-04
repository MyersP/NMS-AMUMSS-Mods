Version= "1.0.2"

	-- 1.0.2 only ShipMinigun does NOT makes sound


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Silent_Ship_Gun_"..Version..".pak", 
["MOD_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "Limits this gun sound",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\PROJECTILES\\PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{--Infraknife
							["SPECIAL_KEY_WORDS"]  = {"Id", "SHIPMINIGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},
							["VALUE_CHANGE_TABLE"] 	= {
                                {"AkEvent", "INVALID_EVENT"}
                            }
						},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "SHIPPLASMAGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "SHIPSHOTGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "SHIPGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "TRADERGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id","POLICEGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "AISHIPGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id","PIRATERAIDGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "SQUADGUN", "FireAudioEvent", "GcAudioWwiseEvents.xml"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
                    -- {
					--	["SPECIAL_KEY_WORDS"]  = {"Id", "PLAYER_SHIP"},	
					--	["VALUE_CHANGE_TABLE"] 	= {
                    --         {"AkEvent", "INVALID_EVENT"}
                    --     }
					--},
					}
				}	
			}
		}
	}		
}