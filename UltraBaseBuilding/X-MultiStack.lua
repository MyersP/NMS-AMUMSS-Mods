Stack = 999999 		--change this value for stack multiplier general
SubProdMulti = 5000 		--change this value for stack multiplier of substances and products



NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "X-MultiStack.pak", 
  ["MOD_BATCHNAME"]	    = "Building Mods and MultiStack.pak",
  ["MOD_AUTHOR"]		= "Lowkie",
  ["LUA_AUTHOR"]		= "Lowkie",
  ["NMS_VERSION"]		= "3.3",
  ["MOD_DESCRIPTION"]	= "MultiStack",
  ["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",	-- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	SubProdMulti}	-- Original many Value
							}
						}
					}
				},						
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{ 			
							["REPLACE_TYPE"] 		= "ALL",							
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"StackMultiplier",	SubProdMulti}	-- Original many Value
							}
						}
					}
				},	
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
