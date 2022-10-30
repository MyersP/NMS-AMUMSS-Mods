Apply_Paint_To =
{--just comment out any you do not want to change the color for
    "Player", 
    "Vehicle", 
    "Vehicle_Bike", 
    "Vehicle_Truck",
    "Vehicle_WheeledBike", 
    "Vehicle_Hovercraft", 
    "Vehicle_Submarine", 
    "Vehicle_Mech", 
    "Freighter", 
    "Pet"
}

New_color_values =
{ 
    --R, G, B
    {"0.639", "0.216", "0.204"},
    {"0.827", "0.408", "0.086"},   
    {"0.914", "0.827", "0.114"},
    {"0.388", "0.678", "0.294"},
    {"0.325", "0.718", "0.718"},
    {"0.235", "0.565", "0.871"},
    {"0.584", "0.478", "0.800"},
    {"0.827", "0.608", "0.859"},
    {"1",   "1",   "1"},--not updated but need extra offset so add this making no change
    {"0.1",   "0.1",   "0.1"},
    {"0.373", "0.118", "0.133"},
    {"0.333", "0.247", "0.176"},
    {"0.835", "0.576", "0.086"},  
    {"0.204", "0.439", "0.224"},
    {"0.145", "0.451", "0.498"},
    {"0.114", "0.243", "0.522"},  
    {"0.302", "0.212", "0.482"},
    {"0.639", "0.365", "0.569"},
    {"0.5",   "0.5",   "0.5"},
    {"-1",    "-1",    "-1"},
}  

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ColorChangeCustom.pak",
["MOD_AUTHOR"]				= "",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] 	= 
                    {
                    },
                },
            },
        },
    }
}

--Create a shortcut to the EXML_CHANGE_TABLE table that is inside the NMS_MOD_DEFINITION_CONTAINER
local Array_Of_Change_Tables = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for v = 1, #Apply_Paint_To, 1 do
OFFSET = 0
    for i = 1,#New_color_values, 1 do
        local temp_table =
        {
            ["SPECIAL_KEY_WORDS"] = {Apply_Paint_To[v],"GcPaletteData.xml"},
            ["PRECEDING_KEY_WORDS"] = {"Colours"},  
            ["INTEGER_TO_FLOAT"] = "FORCE",
            ["LINE_OFFSET"] = OFFSET,       
            ["VALUE_CHANGE_TABLE"]  =   
            {
                {"R", New_color_values[i][1]},
                {"G", New_color_values[i][2]},
                {"B", New_color_values[i][3]}
            },  
        }

        Array_Of_Change_Tables[#Array_Of_Change_Tables + 1] = temp_table
        OFFSET = OFFSET + 6
    end  
end