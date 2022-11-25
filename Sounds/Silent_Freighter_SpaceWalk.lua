
NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]		= "Freighter_SpaceWalk.pak", 
    ["MOD_AUTHOR"]		= "t",
    ["LUA_AUTHOR"]		= "Lowkie",
    ["NMS_VERSION"]		= "4.06",
    ["MOD_DESCRIPTION"]	= "",
    ["MODIFICATIONS"]		= 
    {
      {
        ["MBIN_CHANGE_TABLE"] 	= 
        { 
          {--TEXTURES\\PLANETS\\BIOMES\\ALIEN\\MEDIUMPLANT\\MEDIUMPLANT01.TEXTURE.MBIN
            ["MBIN_FILE_SOURCE"]  = "TEXTURES\\PLANETS\\BIOMES\\ALIEN\\MEDIUMPLANT\\MEDIUMPLANT01.TEXTURE.MBIN",
            ["EXML_CHANGE_TABLE"] = 
            {  
              {
                ["SPECIAL_KEY_WORDS"]   = {"Name","MOSS", "Palette", "TkPaletteTexture.xml"},
                ["VALUE_MATCH"] = "Plant",
                ["VALUE_CHANGE_TABLE"]  =
                {
                  {"Palette",	"Leaf"},--default Plant
                }
              },  
              {
                ["SPECIAL_KEY_WORDS"]   = {"Name","MOSS", "Palette", "TkPaletteTexture.xml"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                  {"ColourAlt",	"Primary"}--default Alternative1 
                }
              },
            }, 			
          },
      }
    }
  }	
}