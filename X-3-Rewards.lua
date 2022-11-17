NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "R.pak",
["MOD_AUTHOR"]				= "Lowkie",
["LUA_AUTHOR"]				= "Lowkie",
["MOD_BATCHNAME"]			= "X-Signal Booster Pirate Rewards",
["NMS_VERSION"]				= "3.99",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "8"},
								{"AmountMax", "16"}								
							}
                        },							
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE", "Id","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", "6"},
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "4"},
								{"AmountMax", "12"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "5"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMax", "18"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "FUEL2"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST1"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}						
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "OXYGEN"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "200"}						
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "AMMO"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "40"},
								{"AmountMax", "140"}						
							}
                        },
					}
				}
            }
        }
    }
}