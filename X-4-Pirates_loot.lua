--[[ --------------------------------------------------------------------------
local desc = "re-Write Replace space pirates, raid, and civilian loot with a more varied selection"
]]----------------------------------------------------------------------
local function bool(b)
	return (b == true) and 'True' or 'False'
end

local function R_TableItem(item, reward, data)
	local function Amount()
		if not item.x then return '' end
						return [[
								<Property name="AmountMin" value="]]..(item.n or item.x)..[["/>
										<Property name="AmountMax" value="]]..item.x..[["/>]]
					end
					return [[
		<Property value="GcRewardTableItem.xml">
								<Property name="PercentageChance" value="]]..item.c..[["/>
								<Property name="Reward" value="]]..reward..[[">
										]]  ..data..Amount()..[[
								</Property>
							</Property>
					]]
end

local function R_ProcTechRange(item)
	local exml = 
				[[<Property name="Group" value="]]..item.id..[["/>
									<Property name="WeightedChanceNormal" value="10" />
									<Property name="WeightedChanceRare" value="10" />
									<Property name="WeightedChanceEpic" value="5" />
									<Property name="WeightedChanceLegendary" value="0" />
									<Property name="ForceRelevant" value="False" />
									<Property name="ForceQualityRelevant" value="False" />
	]]
	return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
end

local function R_ProcTechPirate(item)
	local exml = 
				[[ <Property name="Group" value="]]..item.id..[["/>
									<Property name="WeightedChanceNormal" value="5" />
									<Property name="WeightedChanceRare" value="10" />
									<Property name="WeightedChanceEpic" value="5" />
									<Property name="WeightedChanceLegendary" value="5" />
									<Property name="ForceRelevant" value="False" />
									<Property name="ForceQualityRelevant" value="False" />
	]]
	return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
end

local function R_Procedural(item)
	return R_TableItem(
		item,
		'GcRewardProceduralProduct.xml',
				[[<Property name="Type" value="GcProceduralProductCategory.xml">
									<Property name="ProceduralProductCategory" value="]]..item.id..[["/>
									</Property>
									<Property name="Rarity" value="GcRarity.xml">
										<Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
									</Property>
					]]
	)
end

local function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
				[[<Property name="ID" value="]]..item.id..[["/>
										<Property name="Silent" value="]]..bool(item.s)..[["/>
				]]
	)
end

local function R_Substance(item)
	return R_TableItem(
		item,
	'GcRewardSpecificSubstance.xml',
				[[<Property name="ID" value="]]..item.id..[["/>
										<Property name="Silent" value="]]..bool(item.s)..[["/>
					]]
	)
end
local function R_Money(item)
	return R_TableItem(
	item,
	'GcRewardMoney.xml',
				[[<Property name="Currency" value="GcCurrency.xml">
												<Property name="Currency" value="]]..item.id..[["/>
										</Property>
					]]
	)
end

--  local function R_test(item)
-- 	return 
-- 		[[<Property value="GcRewardTableItem.xml">
-- 				<Property name="PercentageChance" value="50"/>
-- 					<Property name="Reward" value="GcRewardSpecificProductRecipeFromList.xml">
-- 					<Property name="ProductList">
-- 					<Property value="NMSString0x10.xml">
-- 						<Property name="Value" value="SCRAP_GOODS" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SCRAP_TECH" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SCRAP_WEAP" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="TRA_ALLOY1" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="TRA_MINERALS1" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="TRA_COMMODITY2" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SALVAGE_TECH1" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SALVAGE_TECH2" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SALVAGE_TECH3" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SALVAGE_TECH4" />
--                 	</Property>
-- 					<Property value="NMSString0x10.xml">
--                   		<Property name="Value" value="SALVAGE_TECH5" />
--                 	</Property>
-- 					<Property name="AmountMin" value="4" />
-- 					<Property name="AmountMax" value="8" />
-- 					<Property name="ForceSpecialMessage" value="False" />
-- 					<Property name="ProductListRewardOrder" value="TryAllRandom" />
-- 				</Property>
-- 				<Property name="LabelID" value="" />
-- 			</Property>	
-- 			</Property>		
-- 			]]	
-- end 

local new_reward = { 
--[[     --UI_SALVAGE_TECH 
    --SALVAGE_TECH1  = Once Useful springs     1k UT
    --SALVAGE_TECH2  = Handful of Cogs        10k UT
    --SALVAGE_TECH3  = Reinforced Piping      50k UT
    --SALVAGE_TECH4  = Thermal Pannels       100k UT
    --SALVAGE_TECH5  = Tank of Coolant       200k UT
    --SALVAGE_TECH6  = Spool of Nano Cable   400k UT
    --SALVAGE_TECH7  = Recycled Circuity     600k UT
    --SALVAGE_TECH8  = Subatomic Regulator   800k UT
    --SALVAGE_TECH9  = Compressed Iridum     3mil UT
    --SALVAGE_TECH10 = AI Valves            50mil UT ]]
    {--- pirate loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= 'GiveAll',--SelectAlways
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		    	x=1,	c=30,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=12,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=12,	f=R_Product},
 			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},
			{id='SCRAP_WEAP',	        	x=1,	c=3,	f=R_Product},
			{id='SALVAGE_TECH3',	n=5,	x=15,	c=15,	f=R_Product},
			{id='SALVAGE_TECH4',	n=5,	x=15,	c=15,	f=R_Product},
			{id='SALVAGE_TECH5',	n=4,	x=10,	c=15,	f=R_Product},
			{id='SALVAGE_TECH6',	n=4,	x=10,	c=15,	f=R_Product},
			{id='SALVAGE_TECH7',	n=2,	x=3,	c=11,	f=R_Product},	
			{id='SALVAGE_TECH8',	n=1,	x=1,	c=5,	f=R_Product},
			{id='SHIPMINIGUN_NAME_L',				c=5,	f=R_ProcTechPirate},
			{id='SHIPSHOTGUN_NAME_L',				c=5,	f=R_ProcTechPirate},
			{id='SHIPGUN1_NAME_L',					c=5,	f=R_ProcTechPirate},
			{id='SHIPSHIELD_NAME_L',				c=5,	f=R_ProcTechPirate},
			{id='Salvage',			r='Rare',		c=8,	f=R_Procedural},
			{id='DismantleTech',	r='Rare',		c=15,	f=R_Procedural},
			{id='Specials',			n=10,	x=10,	c=100,	f=R_Money},
		}
	},
    {--- Trader loot    SHOULD BE AN UPDATE NOT AN ADD--TRADERLOOT Copy?-
		id			= 'TRADERLOOT',--Current is -1 standing
		replacement	= true,
		choice		= 'GiveAll',---By limited in amount used by the caller this works good.
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			--{id='WATER2',			n=150,	x=300,	c=20,	f=R_Substance},
			--{id='SPACEGUNK3',		n=90,	x=299,	c=40,	f=R_Substance},
			{id='SHIPCHARGE',				x=1,	c=35,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=8,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=5,	f=R_Product},
			{id='SCRAP_GOODS',	    		x=1,	c=10,	f=R_Product},
			{id='SCRAP_TECH',	    		x=1,	c=10,	f=R_Product},
			{id='SCRAP_WEAP',	    		x=1,	c=2,	f=R_Product},
			{id='TRA_ALLOY1',		n=15,	x=25,	c=15,	f=R_Product},
			{id='TRA_MINERALS1',	n=15,	x=25,	c=15,	f=R_Product},--I dislike these hard to sell, then sell red still ++
			{id='TRA_COMMODITY2',	n=15,	x=25,	c=15,	f=R_Product},
            {id='SALVAGE_TECH1',	n=8,	x=15,	c=10,	f=R_Product},
			{id='SALVAGE_TECH2',	n=6,	x=12,	c=10,	f=R_Product},
			{id='SALVAGE_TECH3',	n=5,	x=10,	c=10,	f=R_Product},
			{id='SALVAGE_TECH4',	n=4,	x=8,	c=8,	f=R_Product},
			{id='SALVAGE_TECH5',	n=2,	x=5,	c=8,	f=R_Product},
			{id='ION1_NAME_L',						c=1,	f=R_ProcTechRange},
			{id='SHIPJUMP_NAME_L',					c=2,	f=R_ProcTechRange},
			{id='SHIPSHIELD_NAME_L',				c=2,	f=R_ProcTechRange},
			{id='DismantleTech',	r='Uncommon',	c=5,	f=R_Procedural},
			{id='Salvage',			r='Uncommon',	c=15,	f=R_Procedural},
			{id='Specials',				n=10,  x=10, c=100,	f=R_Money},
		}
	},   
    {--- Police loot    SHOULD BE AN UPDATE NOT AN ADD---
		id			= 'POLICELOOT',
		choice		= 'SelectAlways',--SelectAlways
		replacement	= true,
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SALVAGE_TECH5',	n=1,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=8,	c=50,	f=R_Product},
			{id='SENTINEL_LOOT',	n=1,	x=1,	c=45,	f=R_Product},
			{id='ROBOT1',	        n=60,	x=80,	c=80,	f=R_Substance},
			{id='DismantleTech',	r='Rare',		c=50,	f=R_Procedural},
			{id='Nanites',			n=90,	x=160,  c=100,	f=R_Money},
			{id='Specials',			n=10,	x=10,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - normal level  SHOULD BE AN UPDATE NOT AN ADD ---
		id			= 'PIRATELOOT',
		choice 		= 'GiveAll',--By limited in amount used by the caller this works good.
		zeroseed 	= true,
		replacement	= false,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		    	x=1,	c=35,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=5,	f=R_Product},
 			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},
			{id='SCRAP_WEAP',	        	x=1,	c=3,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=15,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=10,	c=15,	f=R_Product},
			{id='SALVAGE_TECH5',	n=4,	x=10,	c=15,	f=R_Product},
			{id='SALVAGE_TECH6',	n=3,	x=5,	c=15,	f=R_Product},
			{id='SHIPBLOB_NAME_L',					c=3,	f=R_ProcTechPirate},
			{id='SHIPMINIGUN_NAME_L',				c=3,	f=R_ProcTechPirate},
			{id='SHIPSHOTGUN_NAME_L',				c=3,	f=R_ProcTechPirate},
			{id='SHIPGUN1_NAME_L',					c=3,	f=R_ProcTechPirate},
			{id='SHIPSHIELD_NAME_L',				c=4,	f=R_ProcTechPirate},
			{id='Salvage',			r='Rare',		c=10,	f=R_Procedural},
			{id='DismantleTech',	r='Rare',		c=15,	f=R_Procedural},
			{id='Specials',			n=10,	x=10,	c=100,	f=R_Money},
		}
	},
}

function new_reward:AddTableEntry(rte)
	local function getRewardsList(list)
		local exml = {}
		table.insert(exml, '<Property name="List">')
		for _,rwd in pairs(list) do
			table.insert(exml, rwd.f(rwd))
		end
		table.insert(exml, '</Property>')
		return table.concat(exml)
	end
	return [[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..rte.id..[["/>
				<Property name="List" value="GcRewardTableItemList.xml">
					<Property name="RewardChoice" value="]]..rte.choice..[["/>
					<Property name="OverrideZeroSeed" value="]]..bool(rte.zeroseed)..[["/>
						]]..getRewardsList(rte.rewardlist)..[[
				</Property>
        </Property>
	]]
end

local function AddNewRewardsToChangeTable()
	local T = {}
	T[1] = { FSKWG={}, REMOVE='Section' }
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		-- collect exisitng rewards to be removed in FSKWG
		if rwd.replacement then
			table.insert(T[1].FSKWG, {'Id', rwd.id})
		end
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		OFFSET = 0,
		ADD					= rewards
	})
	return T
end
EASY = "3" --"2"
HARD = "5" --"4"
EXTRA="6"
--Six="6"
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'X-Pirates loot.pak',
	MOD_AUTHOR			= 'Lowkie',
    MOD_BATCHNAME	    = "X-Signal Booster Pirate Rewards",
	NMS_VERSION			= 4.00,
	MOD_DESCRIPTION		= "replace link to loot table from AI spaceship attack data",
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {        
        {
            MBIN_FILE_SOURCE 	= "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN",
            EXML_CHANGE_TABLE 	= AddNewRewardsToChangeTable()
        },
        {--Remove faction loss should be behind flag, 
            MBIN_FILE_SOURCE	= 'METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN',
            EXML_CHANGE_TABLE	=
                    {            
                        {--Killed_Civ is triggered when the traders, 
						--all non pirate or police ships are killed. 
						--This is in conjuction to the below loot list change
						--Use as a way to diversify the loot using two lists, when no faction loss wanted?
							["SPECIAL_KEY_WORDS"]  = {"Id", "KILLED_CIV"},
							["REMOVE"] = "SECTION",
						}, 
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_EXP"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_TRA"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_WAR"},
							["REMOVE"] = "SECTION",
						},
                    }
        }, 
        {
            MBIN_FILE_SOURCE	= 'METADATA\\SIMULATION\\SPACE\\AISPACESHIPATTACKDATATABLE.MBIN',
            EXML_CHANGE_TABLE	= 
            {
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		EASY},--2  seemed ok
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_EASY'},
                    VALUE_CHANGE_TABLE	= 
                    {
                       {'RewardCount',		EASY},--2 seemed ok
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_BUILDING'},
                    VALUE_CHANGE_TABLE	=  {
                        {'Reward',		'PIRATELOOT_HARD'},
                        {'RewardCount',		HARD},
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_DOGFIGHT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		HARD}, 
                    }
                },
                {--Good
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE'},
                    VALUE_CHANGE_TABLE	= {
                        {'RewardCount',		EASY},
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_HARD'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT_HARD'},
                        {'RewardCount',		HARD},
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'POLICE'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'POLICELOOT'},
                        {'RewardCount',		HARD},--4
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},--'TRADERLOOT'},
                        {'RewardCount',		EXTRA},--5
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER_ESCORT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},--'TRADERLOOT'},
                        {'RewardCount',		EASY},--3
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_C'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},--'TRADERLOOT'},
                        {'RewardCount',		EASY},--2
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_B'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},--'TRADERLOOT'},
                        {'RewardCount',		EASY},--50 Max ~20
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_A'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT_HARD'},
                        {'RewardCount',		HARD},--6 Max ~20
                    }                
                },
                {   --GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_S'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT_HARD'},
                        {'RewardCount',		EXTRA},--8 Max ~20
                    }
                },
            }
        }
    }
}}
}

-- local function R_ProcTechNormal(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="100" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
-- end
-- local function R_ProcTechRare(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="100" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
-- end
-- local function R_ProcTechEpic(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="100" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
-- end
-- local function R_ProcTechLegendary(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="100" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
-- end