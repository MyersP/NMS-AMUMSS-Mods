NMS_MOD_DEFINITION_CONTAINER=
{
  ["MOD_FILENAME"]="No Cost Portals.pak",
  ["MODIFICATIONS"]=
  {
    {
      ["MBIN_CHANGE_TABLE"]=
        {
          {
            ["MBIN_FILE_SOURCE"]="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
            ["EXML_CHANGE_TABLE"]=
              {
                {
                  ["REPLACE_TYPE"]       = "ALL",	-- make all 16 buttons no-cost
                  ["VALUE_CHANGE_TABLE"] = 
                  {
                    {"CompletionRequirement", "NoRequirement"}, --"FullyChargedAndRepaired" 
                  }
                }
              }
          }
        }
    }
  }
}