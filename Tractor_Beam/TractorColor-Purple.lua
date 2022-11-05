NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "TractorColor-Purple.pak",
["MOD_AUTHOR"]    = "Lowkie",
["LUA_AUTHOR"]    = "Babscoole & Gumsk",
["NMS_VERSION"]   = "3.99",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
                {--
					["MBIN_FILE_SOURCE"] =
					{   
                        "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA_EXTERIOR\ENTRANCEGLOW_MAT.MATERIAL.MBIN",
                    --FAILED still blue
                        --Failed "MODELS\SPACE\SPACESTATION\MODULARPARTS\EXTERIOR\STATION_SPHERE\ENTRANCEMARKERVA_MAT.MATERIAL.MBIN",--Station settings...
                        --Failed "MODELS\SPACE\SPACESTATION\MODULARPARTS\EXTERIOR\STATION_SPHERE\ENTRANCEMARKERVA_MAT1.MATERIAL.MBIN", --Station settings...
                        --Failed "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\DOORSFRONT\ENTRANCEGLOW_MAT.MATERIAL.MBIN",          
                        --Failed "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\HANGARDOORWAY_FRONT\ENTRANCEGLOW_MAT1.MATERIAL.MBIN",
                        --Failed "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\BRIDGE\BRIDGE\ENTRANCEGLOW_MAT.MATERIAL.MBIN",                                  
                        "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\HANGARDOOR_ANIMATED\GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN"--Internal color
                        
                       --OLD    "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEBEAMPARTICLESMAT1.MATERIAL.MBIN",
                       -- OLD   "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEMARKERVA_MAT1.MATERIAL.MBIN", 
					},						
					["EXML_CHANGE_TABLE"] = 
					{
						{
                           ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                           ["VALUE_CHANGE_TABLE"] = 
							{
                                {"Map", "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM_PURPLE.DDS"},				
							},
                         },
					}
				},
                {-- Did not work leave in place 
                    --for now have no idea what this does its sure not the tractor beam. But the ENTRANCERUNWAY sure look like it in game              
					["MBIN_FILE_SOURCE"] =
					{	
                            
						"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\HANGERRUNWAY_ENTRANCERUNWAYLINESMAT.MATERIAL.MBIN",
						"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\HANGERRUNWAY_ENTRANCERUNWAYMAT.MATERIAL.MBIN",				
					},						
					["EXML_CHANGE_TABLE"] = 
					{
						{						
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/EFFECTS/SHIP/ENTRANCERUNWAY_PURPLE.DDS"},				
							},
                         },
					}
				}, 
			}
		},
	}	
}