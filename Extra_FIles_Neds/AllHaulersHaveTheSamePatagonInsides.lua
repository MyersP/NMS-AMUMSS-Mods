NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "_All Haulers Have the same Patagon Insides.pak",
	["MOD_AUTHOR"]				= "Lowkie",
	["NMS_VERSION"]				= "3.22",
	["MOD_DESCRIPTION"]			= "Make all haulers have a Patagon interior",
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{					
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--Make the extra files active "ModExtraFilesToInclude hauler cockpit change"
                            --B:\nomanssky\AMUMSS
						},
					},
				},
			},
			
		},
		
	},
}											
					