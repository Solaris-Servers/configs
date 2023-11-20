//Squirrel

printl("Loaded Mannequin Horror script for Vertigo.");

local hTable = {};
local hEntity = null;

//========================================================================================================================
//Props
//========================================================================================================================

hTable =
{
	targetname = "horror_mann_base1"
	model = "models/props_mall/mall_mannequin_base.mdl"
	origin = "6122.000000, 8001.000000, 5760.000000"
	angles = "0.000000, 20.500000, 0.000000"
	disableshadows = "1"
	solid = "6"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso1a"
	model = "models/props_mall/mall_mannequin_torso1.mdl"
	origin = "6122.000000, 8000.000000, 5803.000000"
	angles = "0.000000, 28.000000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_arm_r1"
	model = "models/props_mall/mall_mannequin_rarm1.mdl"
	origin = "6124.000000, 7992.100000, 5817.000000"
	angles = "-3.333690, 28.320601, 100.658997"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_arm_l1"
	model = "models/props_mall/mall_mannequin_larm1.mdl"
	origin = "6116.200195, 8007.000000, 5817.000000"
	angles = "1.134690, 26.977900, -99.727798"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_hand_r1"
	model = "models/props_mall/mall_mannequin_rhand.mdl"
	origin = "6126.799805, 7989.200195, 5798.500000"
	angles = "-18.683300, 37.016300, 179.613007"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso1b"
	model = "models/props_mall/mall_mannequin_torso2.mdl"
	origin = "6122.000000, 8000.000000, 5803.000000"
	angles = "0.000000, 28.000000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
	targetname = "horror_mann_base2"
	model = "models/props_mall/mall_mannequin_female_base.mdl"
	origin = "6209.089844, 8164.359863, 5760.000000"
	angles = "0.000000, 260.500000, 0.000000"
	disableshadows = "1"
	solid = "6"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso2a"
	model = "models/props_mall/mall_mannequin_female_torso3.mdl"
	origin = "6210.000000, 8168.000000, 5807.500000"
	angles = "0.000000, 113.000000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso2b"
	model = "models/props_mall/mall_mannequin_female_torso1.mdl"
	origin = "6209.089844, 8164.359863, 5807.500000"
	angles = "0.000000, 260.500000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");
EntFire(hTable.targetname, "SetParent", "horror_mann_base2");

hTable =
{
	targetname = "horror_mann_arm_r2"
	model = "models/props_mall/mall_mannequin_female_rarm1.mdl"
	origin = "6203.569824, 8169.450195, 5821.000000"
	angles = "-70.764801, 267.665985, 81.497803"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");
EntFire(hTable.targetname, "SetParent", "horror_mann_base2");

hTable =
{
	targetname = "horror_mann_arm_l2"
	model = "models/props_mall/mall_mannequin_female_larm1.mdl"
	origin = "6216.160156, 8167.490234, 5821.000000"
	angles = "-87.263298, 89.367500, 81.525703"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");
EntFire(hTable.targetname, "SetParent", "horror_mann_base2");

//============================================================
//============================================================

hTable =
{
	targetname = "horror_mann_torso3a"
	model = "models/props_mall/mall_mannequin_female_torso2.mdl"
	origin = "6226.000000, 7984.000000, 5798.000000"
	angles = "0.000000, 89.000000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso3b"
	model = "models/props_mall/mall_mannequin_female_torso1.mdl"
	origin = "6226.000000, 7984.000000, 5798.000000"
	angles = "0.000000, 89.000000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
	targetname = "horror_mann_torso4a"
	model = "models/props_mall/mall_mannequin_torso2.mdl"
	origin = "6249.000000, 7988.000000, 5798.000000"
	angles = "0.000000, 151.500000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso4b"
	model = "models/props_mall/mall_mannequin_torso1.mdl"
	origin = "6249.000000, 7988.000000, 5798.000000"
	angles = "0.000000, 151.500000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
	targetname = "horror_mann_base3"
	model = "models/props_mall/mall_mannequin_base.mdl"
	origin = "6624.640137, 8373.109375, 5760.979980"
	angles = "0.000000, 297.500000, 0.000000"
	disableshadows = "1"
	solid = "6"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_leg1"
	model = "models/props_mall/mall_mannequin_lleg.mdl"
	origin = "6627.500000, 8374.000000, 5793.000000"
	angles = "0.000000, 284.000000, -180.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso5a"
	model = "models/props_mall/mall_mannequin_torso1.mdl"
	origin = "6623.439941, 8372.690430, 5803.979980"
	angles = "0.000000, 117.500000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
	targetname = "horror_mann_torso5b"
	model = "models/props_mall/mall_mannequin_torso1.mdl"
	origin = "6624.000000, 8373.000000, 5804.000000"
	angles = "0.000000, 300.500000, 0.000000"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);
EntFire(hTable.targetname, "TurnOff");

hTable =
{
	targetname = "horror_mann_arm_l3"
	model = "models/props_mall/mall_mannequin_larm1.mdl"
	origin = "6617.000000, 8367.000000, 5818.000000"
	angles = "-34.759102, 119.057999, -103.663002"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_physics", hTable);
EntFire(hTable.targetname, "Sleep");

hTable =
{
	targetname = "horror_mann_arm_r3"
	model = "models/props_mall/mall_mannequin_rarm1.mdl"
	origin = "6631.000000, 8375.000000, 5819.000000"
	angles = "-3.333690, 129.320999, 100.658997"
	disableshadows = "1"
	solid = "0"
}
SpawnEntityFromTable("prop_physics", hTable);
EntFire(hTable.targetname, "Sleep");

//========================================================================================================================
//Triggers
//========================================================================================================================

hTable =
{
	targetname = "trigger_horror_area1"
	origin = "6188.0, 8045.0, 5760.0"
	spawnflags = "1"
	vscripts = "vertigo_scripts/vs_precache.nut"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouchAll", "Func_Mannequin_Input");
hEntity.ConnectOutput("OnEndTouchAll", "Func_Mannequin_Output");
hTable.rawdelete("vscripts");
hEntity = SpawnEntityFromTable("trigger_once", hTable);
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouchAll", "Func_Mannequin_Attack");
EntFire(hTable.targetname, "AddOutput", "maxs 32 32 128");
EntFire(hTable.targetname, "AddOutput", "mins -32 -32 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");

hTable =
{
	targetname = "trigger_horror_area2"
	origin = "6590.077148, 8295.390625, 5760.031250"
	spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_once", hTable);
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouchAll", "Func_Mannequin_Attack");
EntFire(hTable.targetname, "AddOutput", "maxs 64 32 128");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
EntFire(hTable.targetname, "AddOutput", "OnStartTouchAll horror_mann_torso5a:Kill");
EntFire(hTable.targetname, "AddOutput", "OnStartTouchAll horror_mann_torso5b:TurnOn");
EntFire(hTable.targetname, "AddOutput", "OnStartTouchAll horror_mann_arm_r3:Wake");
EntFire(hTable.targetname, "AddOutput", "OnStartTouchAll horror_mann_arm_l3:Wake");

hTable =
{
	targetname = "trigger_horror_area3"
	origin = "6323.166992, 8362.630859, 5760.031250"
	spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_once", hTable);
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouchAll", "Func_Mannequin_Attack");
EntFire(hTable.targetname, "AddOutput", "maxs 128 32 128");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");

//============================================================
//============================================================

::Func_Mannequin_Input <- function()
{
	EntFire("horror_mann_torso1a", "TurnOff");
	EntFire("horror_mann_torso1b", "TurnOn");
	EntFire("horror_mann_torso3a", "TurnOff");
	EntFire("horror_mann_torso3b", "TurnOn");
	EntFire("horror_mann_torso4a", "TurnOff");
	EntFire("horror_mann_torso4b", "TurnOn");
}

::Func_Mannequin_Output <- function()
{
	EntFire("horror_mann_torso1a", "TurnOn");
	EntFire("horror_mann_torso1b", "TurnOff");
	EntFire("horror_mann_torso3a", "TurnOn");
	EntFire("horror_mann_torso3b", "TurnOff");
	EntFire("horror_mann_torso4a", "TurnOn");
	EntFire("horror_mann_torso4b", "TurnOff");
}

::Func_Mannequin_Attack <- function()
{
	if (activator != null)
	{
		local sName = caller.GetName();
		if (sName == "trigger_horror_area1")
		{
			EntFire("horror_mann_arm_l2", "TurnOn");
			EntFire("horror_mann_arm_r2", "TurnOn");
			EntFire("horror_mann_torso2a", "Kill");
			EntFire("horror_mann_torso2b", "TurnOn");
			hEntity = Ent("horror_mann_base2");
			if (hEntity != null)
			{
				hEntity.SetOrigin(hEntity.GetOrigin() - Vector(0, 50, 0));
				EmitSoundOn(format("ambient/creatures/town_scared_sob%d.wav", RandomInt(1, 2)), hEntity);
				activator.TakeDamage(RandomFloat(0.0, activator.GetHealth()) - 1.0, 256, hEntity);
				DoEntFire("!self", "RunScriptCode", format("Func_AmbientSoundTimer(%d, 2)", activator.GetEntityIndex()), RandomFloat(3.0, 8.0), null, activator);
			}
		}
		else if (sName == "trigger_horror_area2")
		{
			hEntity = Ent("horror_mann_base3");
			if (hEntity != null)
			{
				EmitSoundOn("ambient/creatures/town_moan1.wav", hEntity);
				if ("MAX_HEALTH" in getconsttable())
				{
					activator.TakeDamage(RandomFloat((MAX_HEALTH/10).tofloat(), MAX_HEALTH.tofloat()), 256, hEntity);
				}
			}
		}
		else if (sName == "trigger_horror_area3")
		{
			DoEntFire("!self", "RunScriptCode", format("Func_AmbientSoundTimer(%d, 0)", activator.GetEntityIndex()), RandomFloat(0.0, 3.0), null, activator);
			DoEntFire("!self", "RunScriptCode", format("Func_AmbientSoundTimer(%d, 1)", activator.GetEntityIndex()), RandomFloat(5.0, 10.0), null, activator);
		}
	}
}

::Func_AmbientSoundTimer <- function(client, value)
{
	local hPlayer = PlayerInstanceFromIndex(client);
	if (hPlayer != null)
	{
		if (value == 0)
		{
			EmitSoundOn(format("ambient/creatures/town_scared_breathing%d.wav", RandomInt(1, 2)), hPlayer);
		}
		else if (value == 1)
		{
			EmitSoundOn(format("ambient/creatures/ratpath0%d.wav", RandomInt(1, 3)), hPlayer);
		}
		else if (value == 2)
		{
			EmitSoundOn(format("ambient/creatures/rats%d.wav", RandomInt(1, 3)), hPlayer);
		}
	}
}