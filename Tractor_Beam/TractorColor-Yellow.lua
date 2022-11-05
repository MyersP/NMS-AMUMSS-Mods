NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "TractorColor-Yellow.pak",
["MOD_AUTHOR"]    = "Lowkie",
["LUA_AUTHOR"]    = "Babscoole & Gumsk & Lowkie",
["NMS_VERSION"]   = "3.99",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			--Change inner beam color
				{
					["MBIN_FILE_SOURCE"] =
					{					
						"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\ENTRANCEMARKERVA_MAT1.MATERIAL.MBIN",
						"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARPARTS\HANGARDOOR\HANGARDOOR_ANIMATED\GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN",					
					},						
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAMYELLOW.DDS"},				
							}
						},
					}
				},
			--Change outer beam color with combination of LUA and MEFTI material file
				-- {
					-- ["MBIN_FILE_SOURCE"] =
					-- {					
						-- "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN",
					-- },						
					-- ["EXML_CHANGE_TABLE"] = 
					-- {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name","SUB2EntranceGlowLarge","Name","MATERIAL"},
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"Value", "TEXTURES/SPACE/SPACESTATION/ENTRANCEMARKERVA_YELLOW.MATERIAL.MBIN"},
							-- }
						-- },
					-- }
				-- },
			--Change border around outer beam color
				-- {
					-- ["MBIN_FILE_SOURCE"] =
					-- {					
						-- "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\WARRIORLIGHTS_MAT5.MATERIAL.MBIN",
					-- },						
					-- ["EXML_CHANGE_TABLE"] = 
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Samplers"},
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"Map", "TEXTURES/SPACE/SPACESTATION/WARRIORLIGHTSYELLOW.DDS"},
							-- }
						-- },
					-- }
				-- },
			}
		},
	}	
}