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
									<Property name="WeightedChanceEpic" value="10" />
									<Property name="WeightedChanceLegendary" value="10" />
									<Property name="ForceRelevant" value="False" />
									<Property name="ForceQualityRelevant" value="False" />
	]]
	return R_TableItem(item, 'GcRewardProcTechProduct.xml', exml)
end

local function R_ProcTechPirate(item)
	local exml = 
				[[ <Property name="Group" value="]]..item.id..[["/>
									<Property name="WeightedChanceNormal" value="10" />
									<Property name="WeightedChanceRare" value="10" />
									<Property name="WeightedChanceEpic" value="15" />
									<Property name="WeightedChanceLegendary" value="15" />
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

-- local function R_Alien(item)
-- 	return R_TableItem(item, 
-- 	'GcRewardStanding.xml',
-- 				[[<Property name="Race" value="GcAlienRace.xml">
-- 												<Property name="AlienRace" value="]]..item.id..[["/>
-- 									</Property>
-- 				]]
--     )
-- end
          
--[[ local E_ = {
	-- ProceduralProductCategoryEnum
	LOT='Loot',
	FRH='FreighterTechHyp',
	FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',
	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',
	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',
	DTC='DismantleTech',
	DDT='DismantleData',
	BIO='BioSample',
	BNS='Bones',
	FOS='Fossil',
	SLT='SeaLoot',
	SHR='SeaHorror',
	SPB='SpaceBones',
	SPH='SpaceHorror',
	SLV='Salvage',

	-- MultiItemRewardTypeEnum
	PDT='Product',	SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	-- RarityEnum
	C='Common',		U='Uncommon',		R='Rare',

	-- Money --Should set MONEY MONEY_S MONEY_M  MONEY_L  MONEY_XL
	UT='Units',		NN='Nanites',		HG='Specials', -- quicksilver
}
 ]]
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
--[[     
    {--- Squadron loot - easy level ---
		id			= 'SQUADRONLOOT_CB',
		choice		= 'GiveAll',--SelectAlways
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},		
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=500  ,x=1000, c=100,	f=R_Money},
			{id=E_.NN,				n=50,  x=100,	c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},
    {--- Squadron loot - normal level ---
		id			= 'SQUADRONLOOT_A',
		choice		= 'GiveAll',--SelectAlways
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=1000, x=2000, c=100,	f=R_Money},
			{id=E_.NN,				n=100,  x=200,  c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},
    {--- Squadron loot - hard level ---
		id			= 'SQUADRONLOOT_S',
		choice		= 'GiveAll',--SelectAlways
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=2000, x=3000, c=100,	f=R_Money},
			{id=E_.NN,				n=150,  x=300,  c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= 'GiveAll',--SelectAlways
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=40,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=40,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=40,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=1000  ,x=2000,c=100,	f=R_Money},
			{id=E_.NN,				n=50,    x=100, c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= 'GiveAll',--SelectAlways
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=30,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=30,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=30,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.R,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=6000,x=30000,c=100,	f=R_Money},
			{id=E_.NN,				n=200,	x=400,	c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - building raid -RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot or trader loot-
		id			= 'RAIDLOOT',
		choice		= 'GiveAll',--SelectAlways
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=30,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=30,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=30,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DBI,				r=E_.U,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=2500,x=3500,c=100,	f=R_Money},
			{id=E_.NN,				n=150,	x=300,	c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	}, 
    {--- Pirate Bounty 3 loot  SHOULD BE AN UPDATE NOT AN ADD---
		id			= 'PIRATE_BOUNTY3',
		choice		= 'GiveAll',--SelectAlways
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
			{id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=10000, x=25000, c=100,	f=R_Money},
			{id=E_.NN,				n=50,  x=100,  c=100,	f=R_Money},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	}, 
    {--- Pirate Bounty 1 loot   SHOULD BE AN UPDATE NOT AN ADD------
		id			= 'PIRATE_BOUNTY1',
		choice		= 'GiveAll',--SelectAlways
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
			--{id='GcRewardSalvageShip.xml',	        	x=1,	c=100,	f=R_SalvageItem},
			{id='SPACEGUNK3',		n=80,	x=150,	c=80,	f=R_Substance},
			{id=E_.SLV,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.HG,				n=10,  x=10,	c=100,	f=R_Money},
		}
	},]]
    {--- Trader loot    SHOULD BE AN UPDATE NOT AN ADD--TRADERLOOT Copy?-
		id			= 'KILLED_CIV',--Current is -1 standing
		replacement	= true,
		choice		= 'SelectAlways',--SelectAlways
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='WATER2',			n=150,	x=300,	c=40,	f=R_Substance},
			{id='SPACEGUNK3',		n=90,	x=299,	c=80,	f=R_Substance},
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=20,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	    		x=1,	c=150,	f=R_Product},
			{id='SCRAP_TECH',	    		x=1,	c=10,	f=R_Product},
			{id='SCRAP_WEAP',	    		x=1,	c=5,	f=R_Product},
			{id='TRA_ALLOY1',		n=15,	x=25,	c=100,	f=R_Product},
			{id='TRA_MINERALS1',	n=15,	x=25,	c=100,	f=R_Product},
			{id='TRA_COMMODITY2',	n=15,	x=25,	c=100,	f=R_Product},
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=30,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=20,	f=R_Product},
			{id='SHIPBLOB_NAME_L',					c=20,	f=R_ProcTechRange},
			{id='SHIPMINIGUN_NAME_L',				c=20,	f=R_ProcTechRange},
			{id='SHIPSHOTGUN_NAME_L',				c=20,	f=R_ProcTechRange},
			{id='SHIPGUN1_NAME_L',					c=20,	f=R_ProcTechRange},
			{id='ION1_NAME_L',						c=20,	f=R_ProcTechRange},
			{id='SHIPJUMP_NAME_L',					c=20,	f=R_ProcTechRange},
			{id='LAUNCHER_NAME_L',					c=20,	f=R_ProcTechRange},
			{id='SHIPSHIELD_NAME_L',				c=20,	f=R_ProcTechRange},
			{id='DismantleTech',	r='Uncommon',	c=20,	f=R_Procedural},
			{id='Salvage',			r='Uncommon',	c=100,	f=R_Procedural},
			{id='Specials',				n=10,  x=10, c=100,	f=R_Money},
			{id='Nanites',				n=20,  x=30, c=100,	f=R_Money},
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
			{id='DismantleTech',	r='Rare',		c=100,	f=R_Procedural},
			{id='Units',			n=90,   x=160,	c=100,	f=R_Money},
			{id='Nanites',			n=90,	x=160,  c=100,	f=R_Money},
			{id='Specials',			n=10,	x=10,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - normal level  SHOULD BE AN UPDATE NOT AN ADD ---
		id			= 'PIRATELOOT',
		choice 		= 'SelectAlways',--SelectAlways
		zeroseed 	= true,
		replacement	= false,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		    	x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=20,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=5,	f=R_Product},
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},
			{id='SCRAP_WEAP',	        	x=1,	c=15,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH5',	n=3,	x=8,	c=30,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=3,	c=20,	f=R_Product},			
			{id='WATER2',			n=260,	x=360,	c=50,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=50,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=50,	f=R_Substance},
			{id='SHIPBLOB_NAME_L',					c=50,	f=R_ProcTechPirate},
			{id='SHIPMINIGUN_NAME_L',				c=20,	f=R_ProcTechPirate},
			{id='SHIPSHOTGUN_NAME_L',				c=20,	f=R_ProcTechPirate},
			{id='SHIPGUN1_NAME_L',					c=20,	f=R_ProcTechPirate},
			{id='ION1_NAME_L',						c=20,	f=R_ProcTechPirate},
			{id='SHIPJUMP_NAME_L',					c=20,	f=R_ProcTechPirate},
			{id='LAUNCHER_NAME_L',					c=20,	f=R_ProcTechPirate},
			{id='SHIPSHIELD_NAME_L',				c=20,	f=R_ProcTechPirate},
			{id='Salvage',			r='Rare',		c=60,	f=R_Procedural},
			{id='DismantleTech',	r='Rare',		c=80,	f=R_Procedural},
			{id='Units',			n=1800,	x=3000,	c=100,	f=R_Money},
			{id='Nanites',			n=100,	x=200,	c=100,	f=R_Money},
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
        {
            MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
            EXML_CHANGE_TABLE	=
                    {            
                       --[[  {
							["SPECIAL_KEY_WORDS"]  = {"Id", "KILLED_CIV"},
							["REMOVE"] = "SECTION",
						}, ]]
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
            MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
            EXML_CHANGE_TABLE	= 
            {
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'2'},--MaX 8 unless added to
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_EASY'},
                    VALUE_CHANGE_TABLE	= 
                    {
                       {'RewardCount',		'3'},--Max 8
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_BUILDING'},
                    VALUE_CHANGE_TABLE	=  {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--Max 8
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_DOGFIGHT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--Max 8
                    }
                },
                {--Good
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE'},
                    VALUE_CHANGE_TABLE	= {
                        {'RewardCount',		'6'},--Max 8
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_HARD'},
                    VALUE_CHANGE_TABLE	= {
                        {'RewardCount',		'8'},--Max 8
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'POLICE'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'POLICELOOT'},
                        {'RewardCount',		'4'},--MaX 4 unless added to
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--MaX 8
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'8'},--Will need to add at least 10 when updating
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER_ESCORT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'4'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_C'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'4'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_B'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'5'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_A'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'6'},--Max 10
                    }                
                },
                {   --GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_S'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'KILLED_CIV'},--'TRADERLOOT'},
                        {'RewardCount',		'8'},--Max 10
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