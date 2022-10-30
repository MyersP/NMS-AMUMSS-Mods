NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "No Refiner shake.pak",
["MOD_DESCRIPTION"]	= "Gets rid of the screen shake near mineral extractors",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "310",
["MODIFICATIONS"]	= 
{
    {
        ["MBIN_CHANGE_TABLE"] = 
        {
            {
                ["MBIN_FILE_SOURCE"] = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_PUMPS\ENTITIES\MINERALEXTRACTOR.ENTITY.MBIN"},
                ["EXML_CHANGE_TABLE"] = 
                {

                    {
                        ["SPECIAL_KEY_WORDS"] = {"Shake","EXTRACTOR"},
                        ["VALUE_CHANGE_TABLE"] = 
                        {
                            {"Shake",""}
                        }
                    }
                },
            }
        },
    }
}
}