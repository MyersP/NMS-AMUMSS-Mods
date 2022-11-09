NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-InventoryStoreBalance.pak", 
["MOD_AUTHOR"]				= "Lowkie",
["NMS_VERSION"]				= "4.05",
["MOD_DESCRIPTION"]			= "Inventory updates (GDEFAULTINVENTORYBALANCE.MBIN)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\GAMESTATE\\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "DeconstructRefundPercentage",        "1.0" }, --Default 0.5  
                                {"PlayerPersonalInventoryTechWidth",     "10" }, --Default "10"
                                {"PlayerPersonalInventoryTechHeight",    "6" }, --Default "5" 
                                {"PlayerPersonalInventoryCargoWidth",    "10" }, --Default "8" 
                                {"PlayerPersonalInventoryCargoHeight",   "8" }, --Default "6"
                      
							}
						},                        
					}	
				},
			},
		}
	}
}








