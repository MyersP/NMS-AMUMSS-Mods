   --Original 1440000 which equals ~ 1k
NewStorageSize = 14400000       

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "BiggerRefinerSilo.pak",
    ["MOD_AUTHOR"]      = "Lowkie",
    ["NMS_VERSION"]     = "4.05",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",NewStorageSize},--Default 1440000
                            }
                        }, 
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_REFINE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",NewStorageSize},--Default 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER1"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",NewStorageSize},--Default 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER2"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",NewStorageSize},--Default 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BUILD_REFINER3"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Storage",NewStorageSize},--Default 0
                            }
                        },
                    },
                }
            },
        }
    }
}