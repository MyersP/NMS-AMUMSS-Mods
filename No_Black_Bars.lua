NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "No Black Bars.pak", 
["MOD_AUTHOR"]= "Lo2k",
["LUA_AUTHOR"]= "MrFisse",
["NMS_VERSION"]  = "3.96",
["MOD_DESCRIPTION"] = "No cutscene black bars",
["MODIFICATIONS"]= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"UI/COMPONENTS/INTERACTION/CINEMATICBARS.MBIN", 
											"UI/HUD/HUDBARS.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"IsHidden", "True"}
							},
						},
					}
				},
			}
		}
	}
}