NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "Hanger_Salvage_Terminal.pak",
	["MOD_DESCRIPTION"]	= "description",
	["MOD_AUTHOR"]		= "Lowkie",
	["NMS_VERSION"]		= "4.05",
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\SPACECRAFT\\COMMONPARTS\\HANGARINTERIORPARTS\\HANGAR.SCENE.MBIN",
						["EXML_CHANGE_TABLE"] = {
							{
								["SPECIAL_KEY_WORDS"]	= {"Name", "HangarA"},
                ["ADD_OPTION"] = "ADDafterSECTION",
								["ADD"]               = 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SalvageTerminalL" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-22.66539" />
        <Property name="TransY" value="-4.297458" />
        <Property name="TransZ" value="-25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SalvageTerminalR" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="22.66539" />
        <Property name="TransY" value="-4.297458" />
        <Property name="TransZ" value="-25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN" />
        </Property>
      </Property>
	    <Property name="Children" />
    </Property>
]]
							}
						}
					}
				}
			}		
		}
	}