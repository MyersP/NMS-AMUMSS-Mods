NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "Solar Ship No Sails.pak",
["MOD_AUTHOR"]    = "Mjstral and JJHookah and Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Anim","LOWALTITUDE"},
							["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Anim","TURNRIGHT"},
							-- ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Anim","TURNLEFT"},
							-- ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
						-- },
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","_Sails_A"},
							["REMOVE"] = "SECTION",	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","_Sails_B"},
							["REMOVE"] = "SECTION",	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","_Sails_C"},
							["REMOVE"] = "SECTION",	
						},
					}
				},
                -- {
					-- ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_TAKEOFF.SCENE.MBIN",--,"MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_TUCKIN.ANIM.EXML",
					-- ["EXML_CHANGE_TABLE"] = 
					-- {		
                    
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "WingRootJNT"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "WingsShared"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage101"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage102"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage106"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage110"},
							-- ["REMOVE"] = "SECTION",	
						-- },  
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage111"},
							-- ["REMOVE"] = "SECTION",	
						-- },  
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage112"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage114"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage135"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage136"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage137"},
							-- ["REMOVE"] = "SECTION",	
						-- },                    
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage201"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage202"},
							-- ["REMOVE"] = "SECTION",	
						-- },                         
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage206"},
							-- ["REMOVE"] = "SECTION",	
						-- },                       
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage210"},
							-- ["REMOVE"] = "SECTION",	
						-- },                       
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage211"},
							-- ["REMOVE"] = "SECTION",	
						-- },                      
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage212"},
							-- ["REMOVE"] = "SECTION",	
						-- },                       
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage214"},
							-- ["REMOVE"] = "SECTION",	
						-- },                      
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage263"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage266"},
							-- ["REMOVE"] = "SECTION",	
						-- },   
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage267"},
							-- ["REMOVE"] = "SECTION",	
						-- }, 
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage268"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage2066"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage106306"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage2112"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage1112"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage212L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage112L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage1L23"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage2L23"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage141"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage142L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage264L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage142"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage264"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage214L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage114L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"]  = {"Name", "Stage114L"},
							-- ["REMOVE"] = "SECTION",	
						-- },
                        
					
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "RWingArmSupport01_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- }, {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "LWingArmSupport01_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },  
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "RWingArmSupport02_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },   
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "LWingArmSupport02_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },                  
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "RWingArmSupport03_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },                
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "LWingArmSupport03_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "SharedWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },					
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "SharedWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },					
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "AWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","AWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "BWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","BWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "CWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","CWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "DWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","DWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "EWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","EWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
                        -- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node", "FWingsL_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
						-- -- {
							-- -- ["SPECIAL_KEY_WORDS"] = {"Node","FWingsR_JNT"},
							-- -- ["REMOVE"] = "SECTION",	
						-- -- },
					-- }
				-- },				
			}
		}
	}	
}