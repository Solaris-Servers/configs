//Squirrel

printl("Loaded Vertigo.");

local hTable = {};
local hEntity = null;

//============================================================
//============================================================

while ((hEntity = Entities.FindByClassname(hEntity, "weapon_first_aid_kit_spawn")) != null){hEntity.Kill();}
Entities.FindByModel(hEntity, "models/props_vents/ventbreakable01.mdl").Kill();

EntFire("point_deathfall_camera", "Kill");
EntFire("rooftop_opening_clip", "Kill");
EntFire("finale_button_unlocker", "Kill");
EntFire("checkpoint_exit", "Kill");
EntFire("weapon_ammo_spawn", "Kill");
EntFire("weapon_grenade_launcher_spawn", "Kill");
EntFire("weapon_rifle_m60_spawn", "Kill");
EntFire("weapon_molotov_spawn", "Kill");
EntFire("weapon_pipe_bomb_spawn", "Kill");
EntFire("weapon_pistol_spawn", "Kill");
EntFire("weapon_chainsaw_spawn", "Kill");
EntFire("pilot_radio_pickup_trigger", "Kill");
EntFire("trigger_auto_crouch", "Kill");
EntFire("prop_health_cabinet", "Kill");
EntFire("trigger_hurt_ghost", "Kill");
EntFire("prop_ragdoll", "Kill");
EntFire("helicopter_ramp_brush", "Kill");
EntFire("helicopter_platform_push_trigger", "Kill");
EntFire("helicopter_platform_brush", "Kill");
EntFire("helicopter_trigger_hurt", "Kill");
EntFire("chopper_trigger_continue", "Kill");
EntFire("helicopter_push1_trigger", "Kill");
EntFire("helicopter_push2_trigger", "Kill");
EntFire("radio_button", "Kill");
EntFire("radio", "Kill");
EntFire("pilot", "Kill");
EntFire("workspotsC", "Kill");
EntFire("workspots02", "TurnOff");
EntFire("workspots02", "Kill", null, 0.5);
EntFire("prop_door_rotating", "Close");
EntFire("prop_door_rotating", "Lock");
EntFire("weapon_spawn", "AddOutput", "origin 8971.762695 8369.211914 131.843750", 5.0);
EntFire("weapon_melee_spawn", "AddOutput", "origin 8840 8730 131", 5.0);
EntFire("weapon_pistol_magnum_spawn", "AddOutput", "origin 8847.073 8340.055 132.856", 5.0);
EntFire("weapon_pistol_magnum_spawn", "AddOutput", "angles 0.272 153.947 90.674", 5.0);
EntFire("spotlight_spark2", "AddOutput", "origin 1434 4736 5769");
EntFire("spotlight_rotating02", "AddOutput", "origin 1434 4736 5769");
EntFire("spotlight_spark3", "AddOutput", "origin 1434 5555 5769");
EntFire("spotlight_rotating03", "AddOutput", "origin 1434 5555 5769");
EntFire("prop_physics", "AddOutput", "disableshadows 1");

//EntFire("prop_physics", "Kill");
//EntFire("prop_minigun_l4d1", "Kill");
//EntFire("workspots00", "TurnOff");
//EntFire("workspots00", "Kill", null, 0.5);

//============================================================
//============================================================

hTable =
{
    targetname = "ent_vertigo_vscripts"
}
SpawnEntityFromTable("logic_script", hTable);

//========================================================================================================================
//Triggers
//========================================================================================================================

hTable =
{
    targetname = "trigger_start"
    origin = "8152.000 8671.000 137.000"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 0 0 110");
EntFire(hTable.targetname, "AddOutput", "mins -64 -230 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_finish"
    origin = "1603.000 5560.000 5768.000"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 0 0 130");
EntFire(hTable.targetname, "AddOutput", "mins -64 -245 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

//============================================================
//============================================================

hTable =
{
    targetname = "trigger_teleport1"
    origin = "5272 8264 5537"
    spawnflags = "1"
    target = "trigger_teleport1_a"
}
hEntity = SpawnEntityFromTable("trigger_teleport", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 410 305 120");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_teleport2"
    origin = "9264.466 8471.027 4205.637"
    spawnflags = "1"
    target = "trigger_teleport2_a"
}
hEntity = SpawnEntityFromTable("trigger_teleport", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 0 0 64");
EntFire(hTable.targetname, "AddOutput", "mins -70 -85 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_teleport3"
    origin = "5605 8598 5925"
    spawnflags = "1"
    target = "trigger_teleport3_a"
}
hEntity = SpawnEntityFromTable("trigger_teleport", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 90 90 64");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_teleport4"
    origin = "9264.466 8471.027 6560.637"
    spawnflags = "1"
    target = "trigger_teleport4_a"
}
hEntity = SpawnEntityFromTable("trigger_teleport", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 0 0 64");
EntFire(hTable.targetname, "AddOutput", "mins -70 -85 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_teleport5"
    origin = "2917.327 4896.168 5005.637"
    spawnflags = "1"
    target = "trigger_teleport5_a"
}
hEntity = SpawnEntityFromTable("trigger_teleport", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 85 70 64");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

//============================================================
//============================================================

hTable =
{
    targetname = "trigger_teleport1_a"
    origin = "9100 8551 197"
    angles = "0 180 0"
}
SpawnEntityFromTable("info_teleport_destination", hTable);

hTable =
{
    targetname = "trigger_teleport2_a"
    origin = "9100.000 8422.157 5277.614"
    angles = "0 180 0"
}
SpawnEntityFromTable("info_teleport_destination", hTable);

hTable =
{
    targetname = "trigger_teleport3_a"
    origin = "5645 8640 5805"
    angles = "0 90 0"
}
SpawnEntityFromTable("info_teleport_destination", hTable);

hTable =
{
    targetname = "trigger_teleport4_a"
    origin = "9100.000 8422.157 7898.028"
    angles = "0 180 0"
}
SpawnEntityFromTable("info_teleport_destination", hTable);

hTable =
{
    targetname = "trigger_teleport5_a"
    origin = "2837.493 4939.700 5769.457"
    angles = "0 180 0"
}
SpawnEntityFromTable("info_teleport_destination", hTable);

//============================================================
//============================================================

hTable =
{
    targetname = "trigger_ignoredamage"
    origin = "815 4500 4500"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 500 300 700");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "AddOutput", "solid 2");
EntFire(hTable.targetname, "AddOutput", "OnStartTouch !activator:IgnoreFallDamageWithoutReset:3");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

//========================================================================================================================
//Sub-entities
//========================================================================================================================

hTable =
{
    model = "models/props_vents/ventbreakable01.mdl"
    targetname = "ent_prop"
    origin = "7510.718 8867.218 5792.187"
    angles = "12.041 0.087 0.087"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
    model = "models/props_vents/ventbreakable01.mdl"
    targetname = "ent_prop_glow"
    origin = "5650.875 8644.187 5920"
    angles = "270 0 0"
    disableshadows = "1"
    solid = "0"
}
SpawnEntityFromTable("prop_dynamic_override", hTable);

hTable =
{
    model = "models/props_mill/elevator01_cage.mdl"
    targetname = "ent_prop_glow"
    origin = "9230.000 8427.000 4200.000"
    angles = "0 90 0"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_mill/elevator01_cage.mdl"
    targetname = "ent_prop_glow"
    origin = "9230.000 8427.000 6555.000"
    angles = "0 90 0"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_mill/elevator01_cage.mdl"
    targetname = "ent_prop_glow"
    origin = "2963.000 4935.000 5000.000"
    angles = "0 180 0"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_glow"
    origin = "8150.000 8432.000 128.000"
    angles = "-0.000 0.000 -0.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_glow"
    origin = "8150.000 8428.000 253.000"
    angles = "0.000 0.000 -90.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_glow"
    origin = "8150.000 8680.000 128.000"
    angles = "-0.000 0.000 -0.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_glow"
    origin = "1600.000 5567.000 5765.000"
    angles = "-0.000 0.000 -0.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_glow"
    origin = "1600.000 5563.000 5890.000"
    angles = "0.000 0.000 90.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_glow"
    origin = "1600.000 5310.000 5765.000"
    angles = "-0.000 0.000 0.000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

hTable =
{
    model = "models/props_emf/wood_start.mdl"
    targetname = "ent_prop"
    origin = "8150.000 8590.000 255.000"
    angles = "-0.000 90.000 89.999"
    disableshadows = "1"
    solid = "0"
}
SpawnEntityFromTable("prop_dynamic", hTable);

hTable =
{
    model = "models/props_emf/wood_finish.mdl"
    targetname = "ent_prop"
    origin = "1600.000 5480.000 5892.000"
    angles = "-0.000 89.999 90.000"
    disableshadows = "1"
    solid = "0"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    RopeMaterial = "cable/cable.vmt"
    Slack = "1"
    Subdiv = "1"
    TextureScale = "1"
    Width = "2"
    targetname = "ent_rope1"
    origin = "8227 8391 7775"
}
SpawnEntityFromTable("keyframe_rope", hTable);

hTable =
{
    NextKey = "ent_rope1"
    RopeMaterial = "cable/cable.vmt"
    Slack = "1"
    Subdiv = "1"
    TextureScale = "1"
    Width = "2"
    targetname = "ent_rope2"
    origin = "8227 8391 6733.5"
}
SpawnEntityFromTable("keyframe_rope", hTable);

//============================================================
//============================================================

hTable =
{
    targetname = "ent_clip1"
    origin = "1409.242 4712.027 5769.426"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 1500 870 0");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 -1000");
EntFire(hTable.targetname, "Enable");

hTable =
{
    targetname = "ent_clip2"
    origin = "8609.133 8068.433 5284.493"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 500 64 256");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "Enable");

hTable =
{
    targetname = "ent_clip3"
    origin = "7585.845215, 9699.727539, 4209.965820"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 32 32 16");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "Enable");

//========================================================================================================================
//Vertigo
//========================================================================================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic1"
    origin = "8791.860351, 8679.208007, 127.472000"
    angles = "90.000000, -0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic2"
    origin = "8791.860351, 8429.868164, 129.130004"
    angles = "90.000000, -0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic3"
    origin = "8648.791015, 8559.416015, 125.578002"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic4"
    origin = "8377.083007, 8556.750000, 125.650001"
    angles = "90.000000, -0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic5"
    origin = "8082.083007, 8556.214843, 125.986000"
    angles = "90.000000, 0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic6"
    origin = "7948.221191, 8557.537109, 124.916000"
    angles = "90.000000, 0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic7"
    origin = "7808.021972, 8552.945312, 125.527000"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic8"
    origin = "9294.321289, 8302.787109, 130.621002"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic9"
    origin = "8791.860351, 8294.750000, 131.848007"
    angles = "-90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic10"
    origin = "9288.337890, 8804.468750, 128.785003"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic11"
    origin = "8785.829101, 8795.331054, 130.037002"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic12"
    origin = "8779.791015, 8679.750000, 130.850006"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic13"
    origin = "8779.791015, 8431.526367, 125.749000"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic14"
    origin = "8267.756835, 8430.948242, 124.884002"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic15"
    origin = "8267.756835, 8679.409179, 130.350006"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic16"
    origin = "9289.510742, 8804.784179, 520.119018"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic17"
    origin = "9295.541992, 8301.375976, 519.898010"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic18"
    origin = "8790.691406, 8293.344726, 520.617004"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic19"
    origin = "8784.544921, 8300.783203, 521.195007"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic20"
    origin = "8784.920898, 8796.781250, 1036.473022"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic21"
    origin = "8777.489257, 8801.908203, 520.989013"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic22"
    origin = "8265.458007, 8801.357421, 519.806030"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic23"
    origin = "8778.625000, 8292.797851, 520.877014"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic24"
    origin = "8778.899414, 8547.995117, 1036.135009"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic25"
    origin = "8266.868164, 8547.708007, 1036.322021"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic26"
    origin = "8266.587890, 8292.441406, 519.851013"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic27"
    origin = "7832.804199, 8505.343750, 124.065002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic28"
    origin = "7830.762207, 8461.625000, 124.065002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic29"
    origin = "7831.666015, 8460.909179, 163.095001"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic30"
    origin = "7835.117187, 8446.759765, 202.128005"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic31"
    origin = "7808.021972, 8615.814453, 229.796005"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic32"
    origin = "7808.021972, 8754.748046, 249.572006"
    angles = "0.000000, -89.999000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic33"
    origin = "5119.958984, 8406.583007, 392.251007"
    angles = "0.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic34"
    origin = "7808.021972, 9150.192382, 298.088012"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic35"
    origin = "7509.725097, 9440.031250, 295.647003"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic36"
    origin = "6858.100097, 9440.031250, 293.321014"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic37"
    origin = "5837.041015, 9440.031250, 291.092010"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic38"
    origin = "5408.729003, 9232.031250, 277.000000"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic39"
    origin = "5119.958984, 8948.293945, 276.385009"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic40"
    origin = "5119.958984, 8066.187011, 272.850006"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic41"
    origin = "5411.354003, 7775.958984, 274.789001"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic42"
    origin = "5551.958984, 7594.242187, 273.476013"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic43"
    origin = "5651.041015, 7443.770019, 268.153015"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic44"
    origin = "6036.166015, 7359.958984, 267.876007"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic45"
    origin = "6551.937011, 7359.958984, 380.721008"
    angles = "-65.000000, 179.998001, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic46"
    origin = "6917.833007, 7462.915039, 527.205017"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic47"
    origin = "6992.021972, 7601.500000, 545.664001"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic48"
    origin = "7291.615234, 7775.958984, 550.859008"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic49"
    origin = "7808.000000, 7722.958007, 520.392028"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic50"
    origin = "7808.021972, 7939.227050, 521.171020"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic51"
    origin = "6460.104003, 9648.031250, 2469.437011"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic52"
    origin = "6159.992187, 7359.958984, 2545.083007"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic53"
    origin = "6155.832031, 7359.958984, 2924.624023"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic54"
    origin = "7360.687011, 7775.958984, 3134.114013"
    angles = "-60.000000, 179.998001, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic55"
    origin = "7808.021972, 8052.975097, 891.638000"
    angles = "0.000000, -89.999000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic56"
    origin = "7936.021972, 8402.814453, 999.614013"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic57"
    origin = "7841.208007, 8997.327148, 565.343017"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic58"
    origin = "7844.729003, 8989.424804, 604.374023"
    angles = "0.000000, 20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic59"
    origin = "7808.021972, 9022.160156, 564.437011"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic60"
    origin = "7936.021972, 8507.793945, 699.294006"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic61"
    origin = "7808.021972, 7962.811035, 810.822021"
    angles = "-50.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic62"
    origin = "7894.560058, 8228.150390, 976.265014"
    angles = "-70.000000, -128.658004, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic63"
    origin = "6992.021972, 7600.000000, 2915.093017"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic64"
    origin = "6905.000000, 7453.041015, 2926.302001"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic65"
    origin = "6684.770019, 7359.958984, 2924.864013"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic66"
    origin = "9282.750000, 8673.250976, 3600.100097"
    angles = "89.999000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic67"
    origin = "9282.750000, 8426.426757, 3598.353027"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic68"
    origin = "8795.620117, 8670.033203, 3599.072021"
    angles = "90.000000, -0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic69"
    origin = "7879.896972, 8798.166015, 668.817016"
    angles = "80.000000, -51.340000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic70"
    origin = "7877.520019, 8206.844726, 667.247009"
    angles = "-80.000000, -128.658004, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic71"
    origin = "8772.750976, 8545.163085, 3608.197021"
    angles = "85.000000, 175.007003, -89.996002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic72"
    origin = "8878.583007, 8408.396484, 3600.060058"
    angles = "3.210000, -55.088001, -3.832000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic73"
    origin = "8791.583007, 8793.297851, 1037.005004"
    angles = "59.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic74"
    origin = "7617.748046, 9694.083007, 2449.416015"
    angles = "0.000000, 0.000000, 130.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic75"
    origin = "8788.531250, 8291.361328, 1042.296020"
    angles = "60.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic76"
    origin = "8785.121093, 8302.166015, 1297.463012"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic77"
    origin = "9287.633789, 8292.487304, 1298.494018"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic78"
    origin = "7623.854003, 9691.799804, 2464.728027"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic79"
    origin = "7634.266113, 9692.813476, 2480.218017"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic80"
    origin = "9287.736328, 8801.625000, 1297.530029"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic81"
    origin = "7624.312011, 9691.799804, 2735.394042"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic82"
    origin = "8785.529296, 8792.001953, 1546.681030"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic83"
    origin = "9286.169921, 8800.041015, 1546.213012"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic84"
    origin = "9038.736328, 8303.718750, 1549.026000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic85"
    origin = "9292.208007, 8303.718750, 1546.171020"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic86"
    origin = "8790.945312, 8295.697265, 1548.713012"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic87"
    origin = "8787.708007, 8789.150390, 1802.651000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic88"
    origin = "8135.604003, 9187.711914, 2743.165039"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic89"
    origin = "8794.921875, 8797.569335, 2320.842041"
    angles = "-90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic90"
    origin = "9290.458007, 8789.539062, 2320.162109"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic91"
    origin = "9282.500000, 8300.416015, 2320.666015"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic92"
    origin = "8788.900390, 8308.454101, 2321.312011"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic93"
    origin = "8788.291015, 8306.441406, 2575.093017"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic94"
    origin = "8782.251953, 8541.207031, 2577.589111"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic95"
    origin = "8273.920898, 8541.541015, 2571.558105"
    angles = "0.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic96"
    origin = "8270.041992, 8541.299804, 2576.820068"
    angles = "55.000000, 0.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic97"
    origin = "8270.230468, 8541.107421, 2577.083007"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic98"
    origin = "8267.291015, 8540.540039, 2333.102050"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic99"
    origin = "8261.583007, 8541.791992, 2076.549072"
    angles = "-50.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic100"
    origin = "8267.291015, 8541.878906, 2065.343017"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic101"
    origin = "8251.794921, 8543.671875, 2076.883056"
    angles = "39.999000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic102"
    origin = "8852.491210, 8499.923828, 1546.135009"
    angles = "0.000000, 20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic103"
    origin = "8812.402343, 8421.108398, 1546.135009"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic104"
    origin = "8814.630859, 8376.833984, 1546.135009"
    angles = "0.000000, 25.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic105"
    origin = "8811.166015, 8390.744140, 1585.166015"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic106"
    origin = "8825.540039, 8320.260742, 1731.020019"
    angles = "-49.999000, 60.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic107"
    origin = "8813.708007, 8361.622070, 1624.197021"
    angles = "0.000000, 15.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic108"
    origin = "8812.623046, 8342.668945, 1663.229003"
    angles = "0.000000, -5.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic109"
    origin = "8808.423828, 8329.416015, 1624.197021"
    angles = "0.000000, -15.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic110"
    origin = "8813.833984, 8348.907226, 1585.166015"
    angles = "0.000000, -25.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic111"
    origin = "8813.583007, 8332.237304, 1546.135009"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic112"
    origin = "9286.169921, 8437.200195, 1545.171020"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic113"
    origin = "9032.705078, 8424.500976, 1547.421020"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic114"
    origin = "8791.550781, 8423.083007, 1547.604003"
    angles = "-90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic115"
    origin = "8791.550781, 8672.995117, 1547.901000"
    angles = "90.000000, 0.002000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic116"
    origin = "9032.705078, 8677.827148, 1546.854003"
    angles = "89.999000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic117"
    origin = "7936.021972, 8546.379882, 1524.802001"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic118"
    origin = "7888.602050, 8220.702148, 1237.145019"
    angles = "65.000000, 51.340000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic119"
    origin = "6992.021972, 7612.458007, 1179.790039"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic120"
    origin = "6916.227050, 7461.666015, 1061.380004"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic121"
    origin = "7523.935058, 7775.958984, 1158.201049"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic122"
    origin = "6418.020019, 7359.958984, 1010.125000"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic123"
    origin = "7808.021972, 7917.826171, 1158.135009"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic124"
    origin = "6031.666015, 7359.958984, 919.802001"
    angles = "50.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic125"
    origin = "5883.083007, 7359.958984, 1012.007019"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic126"
    origin = "5642.829101, 7450.083007, 1010.452026"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic127"
    origin = "5551.958984, 7660.416015, 1009.289001"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic128"
    origin = "5221.117187, 7775.958984, 1015.182006"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic129"
    origin = "6842.183105, 9603.282226, 1682.932006"
    angles = "-89.999000, -127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic130"
    origin = "5632.520019, 9549.984375, 1683.758056"
    angles = "89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic131"
    origin = "5551.958984, 9391.872070, 1685.286010"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic132"
    origin = "5190.595214, 9232.031250, 1672.713012"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic133"
    origin = "4991.958984, 8377.816406, 1683.765014"
    angles = "-65.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic134"
    origin = "6916.515136, 7461.895019, 1541.250000"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic135"
    origin = "6992.021972, 7614.083007, 1748.911010"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic136"
    origin = "6918.144042, 7463.145019, 1748.130004"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic137"
    origin = "5119.958984, 7975.604003, 1011.338012"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic138"
    origin = "5119.958984, 9166.739257, 973.676025"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic139"
    origin = "5119.958984, 9006.959960, 1668.550048"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic140"
    origin = "4991.958984, 8581.588867, 1659.984008"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic141"
    origin = "5119.958984, 7984.020019, 1653.505004"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic142"
    origin = "5348.458007, 7775.958984, 1558.765014"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic143"
    origin = "5649.875000, 7444.666015, 1543.810058"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic144"
    origin = "6231.354003, 7359.958984, 1745.411010"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic145"
    origin = "6654.270996, 7359.958984, 1745.557006"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic146"
    origin = "6992.021972, 7684.125000, 1539.692016"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic147"
    origin = "6651.562011, 7359.958984, 1540.457031"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic148"
    origin = "6083.395019, 7359.958984, 1543.812011"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic149"
    origin = "7187.791992, 9440.031250, 682.106018"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic150"
    origin = "6494.575195, 9648.031250, 1683.822021"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic151"
    origin = "5773.458007, 9639.302734, 689.705017"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic152"
    origin = "5773.618164, 9632.004882, 697.736022"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic153"
    origin = "5779.493164, 9632.149414, 689.151000"
    angles = "-90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic154"
    origin = "6284.473144, 9624.118164, 689.520019"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic155"
    origin = "6285.020019, 9633.250000, 695.182006"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic156"
    origin = "6450.729003, 9624.051757, 688.335021"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic157"
    origin = "6451.562011, 9631.481445, 694.901000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic158"
    origin = "6614.000000, 9624.051757, 687.718017"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic159"
    origin = "6614.911132, 9632.041015, 694.901000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic160"
    origin = "6784.701171, 9624.075195, 687.914001"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic161"
    origin = "6784.417968, 9631.420898, 694.450012"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic162"
    origin = "7623.604003, 9707.375976, 691.388000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic163"
    origin = "7618.062011, 9709.469726, 920.934020"
    angles = "0.000000, 0.000000, 130.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic164"
    origin = "7623.812011, 9703.083007, 699.419006"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic165"
    origin = "7625.854003, 9707.375976, 924.577026"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic166"
    origin = "7634.431152, 9708.991210, 930.388000"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic167"
    origin = "7623.365234, 9695.045898, 1204.723022"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic168"
    origin = "7617.783203, 9701.004882, 1202.937011"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic169"
    origin = "7112.000000, 9692.983398, 1202.722045"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic170"
    origin = "7120.039062, 9693.813476, 1421.572021"
    angles = "0.000000, 0.000000, 130.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic171"
    origin = "7113.562011, 9699.458007, 1208.968017"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic172"
    origin = "7110.979003, 9691.417968, 1427.875000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic173"
    origin = "7107.479003, 9694.041015, 1446.437011"
    angles = "0.000000, 0.000000, 49.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic174"
    origin = "7112.931152, 9691.417968, 1711.889038"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic175"
    origin = "5945.353027, 7171.854003, 1752.161010"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic176"
    origin = "5951.699218, 7169.208007, 1745.083007"
    angles = "0.000000, 0.000000, -49.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic177"
    origin = "5946.479003, 7163.812988, 1747.878051"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic178"
    origin = "5940.120117, 7170.347167, 2063.245117"
    angles = "0.000000, 0.000000, -125.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic179"
    origin = "5952.708007, 7169.999023, 2071.510009"
    angles = "0.000000, 0.000000, -49.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic180"
    origin = "5946.416015, 7171.853027, 2254.779052"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic181"
    origin = "5940.448242, 7164.166015, 2255.718017"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic182"
    origin = "5434.645019, 7172.204101, 2255.558105"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic183"
    origin = "5109.491210, 7675.493164, 2257.935058"
    angles = "-90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic184"
    origin = "5114.208007, 7683.520019, 2257.666015"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic185"
    origin = "7055.974121, 7750.770019, 1540.598022"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic186"
    origin = "7012.791992, 7751.517089, 1540.598022"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic187"
    origin = "7045.351074, 7750.271972, 1579.630004"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic188"
    origin = "7034.887207, 7749.561035, 1618.661010"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic189"
    origin = "7024.560058, 7748.997070, 1657.692016"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic190"
    origin = "5101.937011, 8053.616210, 1012.244018"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic191"
    origin = "5099.248046, 8090.826171, 1012.244018"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic192"
    origin = "5099.416015, 8082.604003, 1051.275024"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic193"
    origin = "5098.208007, 8093.312011, 1090.307006"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic194"
    origin = "5097.541992, 8103.375000, 1129.338012"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic195"
    origin = "5073.625000, 8177.896972, 1172.843017"
    angles = "-75.000000, -51.340000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic196"
    origin = "4991.958984, 8411.541015, 985.356018"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic197"
    origin = "4991.958984, 8659.333984, 989.299011"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic198"
    origin = "5066.896972, 8821.672851, 973.004028"
    angles = "80.000000, -128.658004, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic199"
    origin = "5349.201171, 9232.031250, 831.320007"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic200"
    origin = "5551.958984, 9391.740234, 799.913024"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic201"
    origin = "5600.664062, 9440.031250, 800.744018"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic202"
    origin = "4991.958984, 8557.647460, 2274.125000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic203"
    origin = "5119.958984, 9085.399414, 2238.601074"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic204"
    origin = "5293.958007, 9232.031250, 2239.416015"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic205"
    origin = "6179.726074, 7359.958984, 3141.247070"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic206"
    origin = "5013.973144, 8252.483398, 2273.489013"
    angles = "0.000000, -51.340000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic207"
    origin = "5069.102050, 8824.418945, 2260.187011"
    angles = "89.999000, 141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic208"
    origin = "5907.430175, 7359.958984, 3139.177001"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic209"
    origin = "5551.958984, 9369.250000, 2160.686035"
    angles = "0.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic210"
    origin = "5625.375000, 9544.485351, 2123.717041"
    angles = "0.000000, 37.568000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic211"
    origin = "6882.206054, 9572.496093, 2049.104003"
    angles = "0.000000, -37.568000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic212"
    origin = "6054.139160, 9648.031250, 2047.437011"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic213"
    origin = "7113.013183, 9700.617187, 1721.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic214"
    origin = "7113.387207, 9692.583007, 2020.260009"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic215"
    origin = "7120.500000, 9692.827148, 2022.310058"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic216"
    origin = "7112.972167, 9692.583007, 2228.114013"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic217"
    origin = "7119.041015, 9700.750000, 2223.872070"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic218"
    origin = "7624.699218, 9692.717773, 2223.674072"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic219"
    origin = "7624.208007, 9699.833007, 2229.903076"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic220"
    origin = "7630.248046, 9699.458007, 2736.041015"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic221"
    origin = "8136.408203, 9691.422851, 2735.135009"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic222"
    origin = "8130.375000, 9187.381835, 2734.811035"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic223"
    origin = "8132.324218, 9196.259765, 2998.583007"
    angles = "50.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic224"
    origin = "8129.580078, 9187.357421, 3001.916015"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic225"
    origin = "8131.645019, 9179.239257, 3007.489013"
    angles = "-55.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic226"
    origin = "8129.580078, 9188.609375, 3248.812011"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic227"
    origin = "8258.166015, 8796.541015, 3087.343017"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic228"
    origin = "8770.200195, 8796.498046, 3087.039062"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic229"
    origin = "9282.231445, 8796.458007, 3086.979003"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic230"
    origin = "9288.910156, 8308.000976, 3088.104003"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic231"
    origin = "8795.750000, 8298.801757, 3088.385009"
    angles = "-90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic232"
    origin = "9288.785156, 8307.791015, 3598.208007"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic233"
    origin = "8795.621093, 8299.073242, 3597.718017"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic234"
    origin = "9282.707031, 8796.125000, 3599.947021"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic235"
    origin = "8789.583007, 8788.087890, 3598.933105"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic236"
    origin = "8782.315429, 8298.813476, 3088.330078"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic237"
    origin = "8270.284179, 8298.365234, 3087.416015"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic238"
    origin = "7808.021972, 8075.559082, 2955.290039"
    angles = "0.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic239"
    origin = "7808.021972, 7887.057128, 2956.759033"
    angles = "0.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic240"
    origin = "7708.101074, 7775.958984, 2881.375000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic241"
    origin = "7483.891113, 7775.958984, 2883.093017"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic242"
    origin = "6643.125000, 7359.958984, 2549.162109"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic243"
    origin = "5551.958984, 7563.708007, 2590.354003"
    angles = "0.000000, -90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic244"
    origin = "5409.598144, 7775.958984, 2590.625000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic245"
    origin = "5225.041015, 7775.958984, 2591.458007"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic246"
    origin = "5014.159179, 8252.250000, 2549.708007"
    angles = "0.000000, -51.340000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic247"
    origin = "5876.345214, 9648.031250, 2480.333007"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic248"
    origin = "6074.228027, 9648.031250, 2479.708007"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic249"
    origin = "7808.021972, 9029.541015, 3242.884033"
    angles = "0.000000, 89.999000, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic250"
    origin = "7289.541015, 7762.616210, 2762.000000"
    angles = "-59.999000, -90.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic251"
    origin = "6884.809082, 7437.500000, 2567.791015"
    angles = "-89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic252"
    origin = "5653.094238, 7442.187011, 2617.583007"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic253"
    origin = "5046.854003, 8796.618164, 2497.562011"
    angles = "-89.999000, -38.659000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic254"
    origin = "5119.958984, 9111.028320, 2504.966064"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic255"
    origin = "5119.958984, 7980.833984, 2514.257080"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic256"
    origin = "4991.958984, 8508.427734, 2503.114013"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic257"
    origin = "6872.644042, 7376.375000, 2568.697021"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic258"
    origin = "5903.267089, 7283.104003, 2545.989013"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic259"
    origin = "5905.312011, 7325.248046, 2545.989013"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic260"
    origin = "5904.125000, 7324.702148, 2585.020019"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic261"
    origin = "5894.708007, 7339.645019, 2624.051025"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic262"
    origin = "6699.247070, 9723.703125, 2470.260009"
    angles = "0.000000, -25.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic263"
    origin = "6611.373046, 9680.965820, 2470.260009"
    angles = "0.000000, -20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic264"
    origin = "6653.583007, 9686.734375, 2509.291015"
    angles = "0.000000, -20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic265"
    origin = "6658.229003, 9686.358398, 2470.260009"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic266"
    origin = "6703.035156, 9679.651367, 2470.260009"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic267"
    origin = "6700.083007, 9685.750000, 2509.291015"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic268"
    origin = "6617.458007, 9671.500000, 2509.291015"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic269"
    origin = "6613.979003, 9687.579101, 2548.322021"
    angles = "0.000000, 10.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic270"
    origin = "6656.844238, 9669.582031, 2548.322021"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic271"
    origin = "6614.844238, 9669.884765, 2587.354003"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic272"
    origin = "6605.952148, 9665.997070, 2626.385009"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic273"
    origin = "6459.096191, 9648.031250, 2667.187011"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic274"
    origin = "6075.604003, 9648.031250, 2668.224121"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic275"
    origin = "5551.958984, 9358.708007, 2727.186035"
    angles = "0.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic276"
    origin = "5019.017089, 8761.821289, 2752.927001"
    angles = "0.000000, 51.340000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic277"
    origin = "5119.958984, 7908.916015, 2787.968017"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic278"
    origin = "5876.659179, 9648.031250, 2729.427001"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic279"
    origin = "5632.263183, 9549.780273, 2729.729003"
    angles = "89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic280"
    origin = "5275.791992, 9232.031250, 2728.041015"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic281"
    origin = "5063.541015, 8190.516113, 2799.320068"
    angles = "-89.999000, 38.659000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic282"
    origin = "5551.958984, 7603.000000, 2855.489013"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic283"
    origin = "5681.617187, 7420.250000, 2905.000000"
    angles = "-70.000000, 142.429000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic284"
    origin = "5119.958984, 9062.066406, 2729.593017"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic285"
    origin = "4991.958984, 8511.572265, 2795.645019"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic286"
    origin = "5263.542968, 7775.958984, 2810.437011"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic287"
    origin = "6274.770019, 9648.031250, 2676.550048"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic288"
    origin = "8864.750000, 8494.485351, 3601.916015"
    angles = "-0.432000, -99.958000, -4.980000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic289"
    origin = "9035.496093, 8788.086914, 3600.245117"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic290"
    origin = "8135.270019, 9187.958007, 3255.196044"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic291"
    origin = "8129.244140, 9187.982421, 3749.707031"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic292"
    origin = "8129.916015, 9197.165039, 3754.093017"
    angles = "-54.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic293"
    origin = "8135.603027, 9188.198242, 3767.227050"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic294"
    origin = "8130.166015, 9197.089843, 4023.520019"
    angles = "-54.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic295"
    origin = "8129.562988, 9188.583007, 4019.093017"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic296"
    origin = "8129.562988, 9188.500000, 4271.866210"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic297"
    origin = "7886.203125, 9179.041015, 4019.322021"
    angles = "-54.999000, -90.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic298"
    origin = "7940.916015, 8669.075195, 3854.104003"
    angles = "-54.999000, 0.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic299"
    origin = "7808.021972, 7920.270996, 3837.250000"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic300"
    origin = "7547.500976, 7775.958984, 3837.104003"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic301"
    origin = "7808.021972, 9024.875000, 3744.958007"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic302"
    origin = "7872.450195, 8807.485351, 3748.937011"
    angles = "0.000000, -51.340000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic303"
    origin = "7936.021972, 8441.279296, 3818.625000"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic304"
    origin = "7919.937011, 8259.875000, 3817.229003"
    angles = "-89.999000, 141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic305"
    origin = "7487.416015, 7775.958984, 3308.745117"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic306"
    origin = "7263.104003, 7775.958984, 3308.343017"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic307"
    origin = "6875.309082, 7430.198242, 3324.656005"
    angles = "0.000000, 37.568000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic308"
    origin = "5013.372070, 8253.234375, 3127.958007"
    angles = "89.999000, -141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic309"
    origin = "4991.958984, 8414.298828, 3123.052001"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic310"
    origin = "4991.958984, 8593.669921, 3126.031005"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic311"
    origin = "5010.143066, 8750.719726, 3132.810058"
    angles = "89.999000, 141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic312"
    origin = "5227.645019, 9232.031250, 3141.830078"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic313"
    origin = "5410.958007, 9232.031250, 3140.551025"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic314"
    origin = "6879.500000, 9574.576171, 2841.009033"
    angles = "0.000000, -37.568000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic315"
    origin = "6992.021972, 7611.581054, 3333.684082"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic316"
    origin = "5653.661132, 7441.750000, 3146.072021"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic317"
    origin = "5551.958984, 7611.354003, 3144.229003"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic318"
    origin = "5192.583007, 7775.958984, 3145.298095"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic319"
    origin = "5119.958984, 7974.367187, 3145.604003"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic320"
    origin = "5601.616210, 9526.206054, 2998.642089"
    angles = "89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic321"
    origin = "6639.957031, 9648.031250, 2997.414062"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic322"
    origin = "5119.958984, 9090.152343, 3140.611083"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic323"
    origin = "6591.386230, 7359.958984, 3332.412109"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic324"
    origin = "6040.284179, 9648.031250, 3000.007080"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic325"
    origin = "4808.683105, 8848.734375, 3463.040039"
    angles = "-39.983001, -3.022000, 178.727005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic326"
    origin = "4797.182128, 8571.499023, 3451.906005"
    angles = "-40.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic327"
    origin = "4991.958984, 8431.083007, 3361.477050"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic328"
    origin = "7350.581054, 9776.958007, 4075.927001"
    angles = "37.576000, 52.020000, 139.899002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic329"
    origin = "6982.125000, 9834.783203, 3874.528076"
    angles = "40.694000, 57.067001, 143.085006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic330"
    origin = "6470.975097, 9878.333007, 3627.937011"
    angles = "43.569000, 62.583000, 146.791000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic331"
    origin = "5943.512207, 9852.077148, 3511.851074"
    angles = "-39.944000, -83.513000, -177.742004"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic332"
    origin = "5396.833007, 9652.214843, 3490.787109"
    angles = "-39.990001, -58.506000, 179.042007"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic333"
    origin = "4980.000000, 9252.000000, 3480.000000"
    angles = "-39.930000, -33.907001, -177.488006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic334"
    origin = "7112.854003, 9700.323242, 2233.031005"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic335"
    origin = "7112.948242, 9700.383789, 2745.062011"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic336"
    origin = "7112.875000, 9692.362304, 2753.427001"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic337"
    origin = "7106.812011, 9694.250000, 2771.062011"
    angles = "0.000000, 0.000000, 49.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic338"
    origin = "7112.702148, 9692.360351, 2993.104003"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic339"
    origin = "7119.187988, 9694.340820, 3214.237060"
    angles = "0.000000, 0.000000, 130.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic340"
    origin = "7112.769042, 9692.359375, 3248.656005"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic341"
    origin = "7624.157226, 9699.527343, 2741.934082"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic342"
    origin = "7623.848144, 9691.494140, 3246.280029"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic343"
    origin = "7617.833007, 9693.083007, 3467.822021"
    angles = "0.000000, 0.000000, 130.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic344"
    origin = "7624.387207, 9699.458984, 3253.965087"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic345"
    origin = "7624.479003, 9691.426757, 3496.217041"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic346"
    origin = "7630.479980, 9693.050781, 3512.839111"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic347"
    origin = "7624.457031, 9691.424804, 3758.047119"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic348"
    origin = "7624.662109, 9699.460937, 3765.996093"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic349"
    origin = "7624.476074, 9691.423828, 4272.083007"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic350"
    origin = "7279.703125, 9440.031250, 3215.154052"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic351"
    origin = "7466.306152, 9440.031250, 3214.750000"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic352"
    origin = "7631.000000, 9693.105468, 4015.519042"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic353"
    origin = "7624.519042, 9691.438476, 4005.495117"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic354"
    origin = "7630.783203, 9693.372070, 3768.375000"
    angles = "0.000000, 0.000000, 50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic355"
    origin = "7524.041015, 9735.131835, 4186.167968"
    angles = "34.263000, 47.395000, 137.182006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic356"
    origin = "4796.646972, 8364.043945, 3450.635009"
    angles = "-40.000000, 0.001000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic357"
    origin = "5119.958984, 7917.229003, 3360.687011"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic358"
    origin = "4991.958984, 8330.250000, 3507.947021"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic359"
    origin = "4968.163085, 8540.666015, 3479.476074"
    angles = "0.000000, -20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic360"
    origin = "4971.395019, 8530.797851, 3440.445068"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic361"
    origin = "4970.784179, 8520.844726, 3401.414062"
    angles = "0.000000, -95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic362"
    origin = "4973.729003, 8539.442382, 3362.383056"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic363"
    origin = "4966.125000, 8493.924804, 3362.383056"
    angles = "0.000000, -20.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic364"
    origin = "5355.812011, 7775.958984, 3526.739013"
    angles = "55.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic365"
    origin = "6504.291992, 7359.958984, 3664.739013"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic366"
    origin = "5610.125000, 7475.247070, 3664.559082"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic367"
    origin = "5902.354003, 7359.958984, 3663.895019"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic368"
    origin = "6992.021972, 7651.722167, 3770.822021"
    angles = "-60.000000, -89.999000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic369"
    origin = "6916.323242, 7461.747070, 3652.666015"
    angles = "89.999000, -52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic370"
    origin = "7249.395019, 7775.958984, 3837.239013"
    angles = "89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic371"
    origin = "7936.021972, 8508.689453, 2817.444091"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic372"
    origin = "8787.317382, 8796.500000, 1468.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic373"
    origin = "8787.317382, 8796.500000, 2194.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic374"
    origin = "8787.317382, 8796.500000, 2920.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic375"
    origin = "8787.317382, 8796.500000, 16.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic376"
    origin = "8787.317382, 8796.500000, 742.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic377"
    origin = "8796.625000, 8299.000000, 16.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic378"
    origin = "8796.625000, 8299.000000, 742.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic379"
    origin = "8796.625000, 8299.000000, 1468.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic380"
    origin = "8796.625000, 8299.000000, 2194.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic381"
    origin = "8796.625000, 8299.000000, 2920.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic382"
    origin = "9290.942382, 8295.868164, 16.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic383"
    origin = "9290.942382, 8295.868164, 742.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic384"
    origin = "9290.942382, 8295.868164, 2194.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic385"
    origin = "9290.942382, 8295.868164, 2920.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic386"
    origin = "9290.942382, 8295.868164, 1468.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic387"
    origin = "9289.995117, 8800.541015, 16.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic388"
    origin = "9289.995117, 8800.541015, 742.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic389"
    origin = "9289.995117, 8800.541015, 1468.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic390"
    origin = "9289.995117, 8800.541015, 2190.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic391"
    origin = "9289.995117, 8800.541015, 2920.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic392"
    origin = "9289.995117, 8800.541015, 3646.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic393"
    origin = "8787.317382, 8796.500000, 3646.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic394"
    origin = "8796.625000, 8299.000000, 3646.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic395"
    origin = "9290.942382, 8295.868164, 3646.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic396"
    origin = "9290.942382, 8295.868164, 4372.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic397"
    origin = "9289.995117, 8800.541015, 4372.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic398"
    origin = "8796.625000, 8299.000000, 4372.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic399"
    origin = "9289.041015, 8792.666015, 5275.770996"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic400"
    origin = "9283.006835, 8289.956054, 5276.520019"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic401"
    origin = "8787.317382, 8796.500000, 4372.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic402"
    origin = "9033.911132, 8297.987304, 5274.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic403"
    origin = "9027.875000, 8420.046875, 5276.312988"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic404"
    origin = "9283.005859, 8662.782226, 5275.347167"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic405"
    origin = "8796.625000, 8299.000000, 5098.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic406"
    origin = "9039.942382, 8423.166015, 5275.083007"
    angles = "90.000000, 0.001000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic407"
    origin = "9290.942382, 8295.868164, 5098.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic408"
    origin = "9289.995117, 8800.541015, 5098.000000"
    angles = "0.001000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic409"
    origin = "8512.791015, 8556.032226, 125.035003"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic410"
    origin = "6346.784179, 9440.031250, 295.019012"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic411"
    origin = "5089.915039, 8688.205078, 277.290008"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic412"
    origin = "5119.960937, 8571.989257, 328.734008"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic413"
    origin = "8832.461914, 8600.998046, 1550.432006"
    angles = "0.000000, -35.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic414"
    origin = "9029.458007, 8432.113281, 3597.600097"
    angles = "89.999000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic415"
    origin = "8795.619140, 8431.125000, 3597.187011"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic416"
    origin = "7936.023925, 8375.367187, 1361.765014"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic417"
    origin = "9029.606445, 8908.917968, 2321.958007"
    angles = "90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic418"
    origin = "9132.659179, 8906.416992, 2237.052001"
    angles = "-50.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic419"
    origin = "9019.333007, 8904.696289, 1964.130004"
    angles = "50.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic420"
    origin = "9367.938476, 8904.732421, 2143.257080"
    angles = "90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic421"
    origin = "8832.118164, 8084.270019, 5233.727050"
    angles = "20.024000, -29.576000, -141.869003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic422"
    origin = "8489.500000, 7766.833007, 4908.683105"
    angles = "23.059000, -33.847000, -143.438003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic423"
    origin = "8092.439941, 7488.939941, 4614.285156"
    angles = "28.743000, -43.004001, -147.449005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic424"
    origin = "7631.020019, 7269.979003, 4367.165039"
    angles = "33.743000, -53.143001, -152.723007"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic425"
    origin = "7120.064941, 7116.416015, 4174.595214"
    angles = "37.824001, -64.410003, -159.330001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic426"
    origin = "6575.412109, 7033.075195, 4042.468017"
    angles = "40.715000, -76.788002, -167.186004"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic427"
    origin = "6157.833007, 7016.044921, 3982.589111"
    angles = "42.191001, -89.999000, -175.955001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic428"
    origin = "5881.770019, 7046.765136, 3979.479003"
    angles = "42.104000, -103.500000, 174.960006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic429"
    origin = "5678.895996, 7091.896972, 3996.437011"
    angles = "40.465000, -116.638000, 166.266006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic430"
    origin = "5551.770019, 7141.500976, 4024.675048"
    angles = "-37.428001, 51.090000, -158.537002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic431"
    origin = "5436.395019, 7206.291015, 4067.791015"
    angles = "-33.235000, 39.951000, -152.076004"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic432"
    origin = "5336.625000, 7283.951171, 4124.062011"
    angles = "-28.145000, 29.930000, -146.947006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic433"
    origin = "5254.706054, 7372.908203, 4192.284179"
    angles = "-22.399000, 20.871000, -143.069000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic434"
    origin = "5193.375000, 7469.827148, 4269.687011"
    angles = "-16.187000, 12.562000, -140.315002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic435"
    origin = "5154.598144, 7572.310058, 4354.286132"
    angles = "-9.675000, 4.769000, -138.565002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic436"
    origin = "5139.854003, 7677.335937, 4443.491210"
    angles = "-2.993000, -2.717000, -137.735000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic437"
    origin = "5402.914062, 7775.960937, 4308.160156"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic438"
    origin = "5551.960937, 7566.189941, 4308.666015"
    angles = "0.000000, -90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic439"
    origin = "6547.324218, 7359.960937, 4530.683105"
    angles = "50.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic440"
    origin = "6537.291015, 7359.960937, 4616.722167"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic441"
    origin = "6178.020019, 7359.960937, 4635.812011"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic442"
    origin = "5998.979980, 7359.960937, 4636.750000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic443"
    origin = "6373.764160, 7359.960937, 4634.741210"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic444"
    origin = "6383.292968, 7352.583984, 4432.062011"
    angles = "90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic445"
    origin = "5674.412109, 7425.791015, 4397.333984"
    angles = "50.000000, -37.568000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic446"
    origin = "5833.178222, 7359.960937, 4766.604003"
    angles = "-50.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic447"
    origin = "5629.333007, 7460.471191, 4808.138183"
    angles = "0.000000, -37.568000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic448"
    origin = "5007.895019, 8747.916015, 4434.490234"
    angles = "90.000000, 141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic449"
    origin = "5120.000000, 9010.000000, 4418.000000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic450"
    origin = "5168.660156, 9351.086914, 4421.895019"
    angles = "89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic451"
    origin = "5306.636230, 9299.758789, 4422.719238"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic452"
    origin = "5396.909179, 9232.031250, 4422.500000"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic453"
    origin = "5353.951171, 9274.070312, 4423.323242"
    angles = "0.000000, -10.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic454"
    origin = "5399.578125, 9266.906250, 4423.323242"
    angles = "0.000000, 5.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic455"
    origin = "5355.583007, 9270.541015, 4462.354003"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic456"
    origin = "5471.516113, 9232.031250, 4557.979003"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic457"
    origin = "5551.967773, 9448.675781, 4559.875000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic458"
    origin = "5667.209960, 9576.663085, 4559.103027"
    angles = "-89.999000, -52.430999, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic459"
    origin = "5892.958007, 9648.031250, 4575.437011"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic460"
    origin = "6171.480957, 9648.031250, 4577.375000"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic461"
    origin = "6449.750000, 9648.031250, 4576.709960"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic462"
    origin = "6715.313964, 9648.031250, 4577.562011"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic463"
    origin = "5406.770019, 7775.967773, 4706.181152"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
    targetname = "ent_prop_dynamic464"
    origin = "5119.961914, 7897.036132, 4702.225097"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic465"
    origin = "5024.201171, 8239.698242, 4554.060058"
    angles = "0.000000, -51.340000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic466"
    origin = "4991.961914, 8501.545898, 4455.909179"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic467"
    origin = "7317.907226, 7503.039062, 4968.854003"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic468"
    origin = "7317.854980, 7494.934082, 4974.978027"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic469"
    origin = "7318.166015, 7502.958007, 5479.664062"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic470"
    origin = "7323.908203, 7501.231933, 4974.270019"
    angles = "0.000000, 0.000000, -49.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic471"
    origin = "7318.041015, 7502.958007, 5215.397949"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic472"
    origin = "7311.686035, 7501.250000, 5221.852050"
    angles = "0.000000, 0.000000, -50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic473"
    origin = "7311.829101, 7494.430175, 5478.729003"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic474"
    origin = "6880.787109, 7434.412109, 5298.750976"
    angles = "0.000000, 37.568000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic475"
    origin = "6502.211914, 7359.961914, 5149.539062"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic476"
    origin = "5919.183105, 7359.961914, 5153.728027"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic477"
    origin = "5638.703125, 7453.265136, 5152.875000"
    angles = "-89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic478"
    origin = "5296.016113, 7775.961914, 5046.262207"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic479"
    origin = "5119.961914, 7992.701171, 5046.394042"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic480"
    origin = "4727.310058, 8500.324218, 5144.143066"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic481"
    origin = "4726.896972, 8489.500000, 5136.540039"
    angles = "-50.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic482"
    origin = "4726.579101, 8498.701171, 5150.748046"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic483"
    origin = "4730.914062, 8489.944335, 5382.083007"
    angles = "-50.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic484"
    origin = "4732.604003, 8498.458007, 5398.954101"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic485"
    origin = "4732.604003, 8498.331054, 5655.024902"
    angles = "-90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic486"
    origin = "4731.246093, 8490.005859, 5631.658203"
    angles = "-50.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic487"
    origin = "4727.250000, 8506.732421, 5656.223144"
    angles = "0.000000, 0.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic488"
    origin = "4733.274902, 9010.875000, 5655.854003"
    angles = "-90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic489"
    origin = "4991.961914, 8309.050781, 4965.325195"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic490"
    origin = "5119.961914, 9120.455078, 5607.449218"
    angles = "0.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic491"
    origin = "5265.393066, 9232.031250, 5587.185058"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic492"
    origin = "5551.961914, 9441.625000, 5369.270019"
    angles = "0.000000, -90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic493"
    origin = "5659.750000, 9570.921875, 5164.624023"
    angles = "0.000000, 37.568000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic494"
    origin = "6626.272949, 9648.031250, 4997.866210"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic495"
    origin = "6799.562011, 9636.055664, 4999.729003"
    angles = "89.999000, 52.430000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic496"
    origin = "7131.893066, 9440.031250, 4978.581054"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic497"
    origin = "5892.541015, 9648.031250, 5118.082031"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic498"
    origin = "6273.953125, 9648.031250, 5076.166015"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic499"
    origin = "7491.520996, 9440.031250, 5157.578125"
    angles = "50.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic500"
    origin = "7776.791015, 9440.031250, 5341.891113"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic501"
    origin = "7819.750000, 9471.784179, 5342.708007"
    angles = "0.000000, 5.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic502"
    origin = "7822.038085, 9516.864257, 5342.708007"
    angles = "0.000000, -15.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic503"
    origin = "7819.077148, 9498.571289, 5381.745117"
    angles = "0.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic504"
    origin = "7825.457031, 9488.996093, 5420.770019"
    angles = "0.000000, 30.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic505"
    origin = "7589.666015, 9440.031250, 5567.032226"
    angles = "-50.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic506"
    origin = "7339.041015, 9440.031250, 5657.661132"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic507"
    origin = "7518.178222, 9440.031250, 4746.104980"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic508"
    origin = "6944.684082, 9524.427734, 4661.021972"
    angles = "65.000000, -37.568000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic509"
    origin = "7808.025878, 9299.505859, 4744.333984"
    angles = "0.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic510"
    origin = "7866.145996, 8815.360351, 4739.242187"
    angles = "-89.999000, -141.339004, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic511"
    origin = "7808.025878, 9114.832031, 4743.206054"
    angles = "0.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic512"
    origin = "5942.270019, 9648.031250, 1682.114013"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic513"
    origin = "6638.625000, 9648.031250, 2043.901000"
    angles = "-89.999000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic514"
    origin = "5676.290039, 9583.647460, 2473.875000"
    angles = "89.999000, 127.568000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic515"
    origin = "5258.149902, 9232.031250, 2500.447021"
    angles = "89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic516"
    origin = "5551.962890, 9393.681640, 2481.248046"
    angles = "0.000000, -89.999000, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_industrial/construction_crane.mdl"
    targetname = "ent_prop_dynamic517"
    origin = "7710.000000, 7875.000000, 6680.000000"
    angles = "0.000000, 45.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic518"
    origin = "7005.000000, 8484.000000, 5920.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic519"
    origin = "6345.000000, 8426.500000, 5920.000000"
    angles = "0.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic520"
    origin = "7072.000000, 8517.000000, 6195.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic521"
    origin = "5687.000000, 8484.000000, 6080.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic522"
    origin = "6934.750000, 8392.756835, 6264.331054"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic523"
    origin = "6934.304199, 7888.768066, 6256.293945"
    angles = "0.000000, 0.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic524"
    origin = "6928.939941, 8401.452148, 6339.502929"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic525"
    origin = "6271.145019, 8508.779296, 6418.604003"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic526"
    origin = "6270.369140, 8400.991210, 6495.934082"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic527"
    origin = "6931.145019, 8509.004882, 6572.788085"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic528"
    origin = "6418.851074, 8401.707031, 6649.956054"
    angles = "-89.999000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic529"
    origin = "6040.000000, 8522.000000, 6769.000000"
    angles = "-73.750000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic530"
    origin = "6598.129882, 8521.546875, 6687.930175"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic531"
    origin = "5628.270996, 8520.536132, 6848.511230"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic532"
    origin = "7171.582031, 8521.083007, 6687.416015"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic533"
    origin = "8550.000000, 8283.500000, 6800.000000"
    angles = "29.784000, 65.027000, -103.025001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic534"
    origin = "8796.625000, 8299.000000, 5824.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic535"
    origin = "9289.995117, 8800.541015, 5824.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic536"
    origin = "9289.995117, 8800.541015, 6550.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic537"
    origin = "8796.625000, 8299.000000, 6550.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic538"
    origin = "8787.317382, 8796.500000, 5098.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic539"
    origin = "8787.317382, 8796.500000, 5824.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic540"
    origin = "8787.317382, 8796.500000, 6550.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic541"
    origin = "9283.572265, 8798.081054, 6556.532226"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic542"
    origin = "8799.791015, 8790.043945, 6554.791015"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic543"
    origin = "9045.333007, 8425.992187, 6555.936035"
    angles = "90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic544"
    origin = "9045.333007, 8678.598632, 6555.729003"
    angles = "89.999000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic545"
    origin = "9283.572265, 8675.743164, 6557.282226"
    angles = "89.999000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic546"
    origin = "9057.399414, 8676.255859, 6555.980957"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic547"
    origin = "8805.823242, 8677.586914, 6554.574218"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic548"
    origin = "8805.823242, 8426.339843, 6555.770019"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic549"
    origin = "8843.050781, 8362.000000, 6558.295898"
    angles = "0.000000, -15.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic550"
    origin = "8839.906250, 8352.590820, 6636.357910"
    angles = "0.000000, -115.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic551"
    origin = "8838.607421, 8322.526367, 6558.295898"
    angles = "0.000000, -10.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic552"
    origin = "8839.463867, 8347.863281, 6597.332031"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic553"
    origin = "8895.125000, 8438.333007, 6558.295898"
    angles = "0.000000, -50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic554"
    origin = "9088.847656, 8665.655273, 6558.517089"
    angles = "0.000000, 25.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic555"
    origin = "9105.316406, 8625.750000, 6558.517089"
    angles = "0.000000, -60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic556"
    origin = "9097.245117, 8650.106445, 6597.542968"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic557"
    origin = "9038.196289, 8431.714843, 129.337005"
    angles = "90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic558"
    origin = "9038.204101, 8680.344726, 128.639007"
    angles = "89.999000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic559"
    origin = "9287.541015, 8678.763671, 61.651000"
    angles = "-60.000000, 89.999000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic560"
    origin = "9169.666015, 8679.628906, 128.139007"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic561"
    origin = "9169.666015, 8432.676757, 126.777000"
    angles = "89.999000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic562"
    origin = "9288.290039, 8432.625000, 125.989997"
    angles = "89.999000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic563"
    origin = "9034.552734, 8796.441406, 128.815002"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic564"
    origin = "9041.527343, 8426.448242, 3599.093017"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic565"
    origin = "9283.006835, 8547.876953, 5270.937011"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic566"
    origin = "9205.835937, 8427.071289, 3600.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic567"
    origin = "9205.835937, 8427.071289, 5136.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic568"
    origin = "9205.835937, 8427.071289, 4368.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic569"
    origin = "9205.835937, 8427.071289, 6672.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic570"
    origin = "9205.835937, 8427.071289, 5904.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic571"
    origin = "8780.000000, 8808.000000, 4020.000000"
    angles = "0.000000, 52.000000, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic572"
    origin = "9293.885742, 8285.388671, 3599.060058"
    angles = "-50.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic573"
    origin = "8802.625000, 8299.300781, 3926.208007"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic574"
    origin = "8787.179687, 8788.899414, 4349.073242"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic575"
    origin = "8776.232421, 8297.333007, 4353.955078"
    angles = "0.000000, 0.000000, -50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic576"
    origin = "8787.041015, 8788.054687, 4683.229003"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic577"
    origin = "8793.335937, 8796.253906, 4683.129882"
    angles = "-89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic578"
    origin = "8788.778320, 8788.361328, 4020.239013"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic579"
    origin = "8776.957031, 8292.234375, 4025.052001"
    angles = "0.000000, 0.000000, -50.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic580"
    origin = "8782.000000, 8418.000000, 5270.000000"
    angles = "-90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic581"
    origin = "9045.875000, 8426.501953, 6555.183105"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic582"
    origin = "9050.826171, 8790.045898, 6553.958007"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic583"
    origin = "9027.875976, 8666.295898, 5276.809082"
    angles = "89.999000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic584"
    origin = "9044.764648, 8669.755859, 1548.562011"
    angles = "-90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic585"
    origin = "9227.202148, 8285.159179, 2322.637939"
    angles = "-60.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic586"
    origin = "9303.306640, 8719.000000, 1547.812988"
    angles = "0.000000, 0.000000, 120.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic587"
    origin = "9288.438476, 8788.222656, 4683.629882"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic588"
    origin = "8796.625000, 8299.000000, 7276.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mall/column_04.mdl"
    targetname = "ent_prop_dynamic589"
    origin = "9289.995117, 8800.541015, 7276.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic590"
    origin = "9205.833984, 8427.071289, 7440.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic591"
    origin = "9289.273437, 8792.670898, 7897.325195"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic592"
    origin = "9283.242187, 8297.239257, 7897.990234"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic593"
    origin = "9038.628906, 8305.267578, 7899.787109"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic594"
    origin = "9044.662109, 8684.543945, 7895.076171"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic595"
    origin = "9283.242187, 8684.786132, 7895.893066"
    angles = "90.000000, 179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic596"
    origin = "9044.663085, 8432.714843, 7895.497070"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic597"
    origin = "9032.597656, 8430.583007, 7898.291015"
    angles = "90.000000, -179.998001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic598"
    origin = "8782.517578, 8432.749023, 7898.277832"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic599"
    origin = "9032.597656, 8561.556640, 7897.453125"
    angles = "-89.999000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic600"
    origin = "8820.213867, 8342.980468, 7900.811035"
    angles = "0.000000, 4.999000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic601"
    origin = "8920.589843, 8338.021484, 7900.823242"
    angles = "0.000000, 100.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic602"
    origin = "8923.896484, 8335.658203, 7939.854003"
    angles = "0.000000, -5.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic603"
    origin = "9129.166015, 8511.584960, 7898.025878"
    angles = "0.000000, 80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic604"
    origin = "9337.543945, 8923.400390, 5833.390136"
    angles = "33.299999, 109.720001, 130.421005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic605"
    origin = "9473.450195, 8801.924804, 5839.459960"
    angles = "28.252000, -13.670000, -134.337005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic606"
    origin = "9488.583007, 9034.545898, 5919.544921"
    angles = "42.236000, 56.132999, 92.648002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic607"
    origin = "9545.556640, 9101.746093, 6028.650878"
    angles = "37.242000, 55.845001, 92.460998"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic608"
    origin = "9596.957031, 9160.721679, 6145.286132"
    angles = "32.247001, 55.590000, 92.318000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic609"
    origin = "9642.333984, 9210.957031, 6267.986816"
    angles = "27.250000, 55.361999, 92.205001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic610"
    origin = "9681.107421, 9251.673828, 6395.708984"
    angles = "22.253000, 55.153999, 92.115997"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic611"
    origin = "9713.836914, 9283.708007, 6528.026855"
    angles = "17.256000, 54.963001, 92.053001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic612"
    origin = "9739.541015, 9305.706054, 6664.290039"
    angles = "12.260000, 54.777999, 92.003997"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic613"
    origin = "9758.458984, 9318.125000, 6802.541015"
    angles = "7.263000, 54.603000, 91.973999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic614"
    origin = "9770.422851, 9320.766601, 6942.146972"
    angles = "2.266000, 54.430000, 91.959999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic615"
    origin = "9775.247070, 9313.458007, 7081.606933"
    angles = "-2.730000, 54.257999, 91.960998"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic616"
    origin = "9205.000000, 8750.000000, 5690.000000"
    angles = "-36.201000, -61.076000, -145.320007"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic617"
    origin = "9345.000000, 8640.000000, 5695.000000"
    angles = "35.000000, -19.000000, -146.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic618"
    origin = "9120.288085, 8694.722656, 7906.257812"
    angles = "0.000000, -50.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic619"
    origin = "9161.574218, 8729.422851, 7914.291015"
    angles = "0.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic620"
    origin = "4328.000000, 8456.000000, 4100.000000"
    angles = "-32.587001, -132.093002, -166.233001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic621"
    origin = "4286.500000, 8326.457031, 3904.510009"
    angles = "32.583000, 47.903999, -13.765000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic622"
    origin = "3869.289062, 8774.052734, 3980.574951"
    angles = "32.587001, 47.903999, 166.233001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic623"
    origin = "3825.215087, 8646.125000, 3784.554931"
    angles = "32.587001, 47.903999, -13.765000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic624"
    origin = "3411.469970, 9091.815429, 3861.164062"
    angles = "32.587001, 47.903999, 166.233001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic625"
    origin = "3368.770019, 8963.476562, 3665.124023"
    angles = "32.587001, 47.903999, -13.762000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic626"
    origin = "2952.335937, 9408.550781, 3742.709960"
    angles = "32.587001, 47.903999, 166.233001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic627"
    origin = "2911.207031, 9278.383789, 3547.562011"
    angles = "32.587001, 47.902999, -13.765000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic628"
    origin = "2492.790039, 9725.708984, 3624.069091"
    angles = "32.587001, 47.903999, 166.233001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic629"
    origin = "2451.466064, 9595.916015, 3428.708984"
    angles = "32.587001, 47.902999, -13.765000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic630"
    origin = "1120.000000, 9670.000000, 2970.000000"
    angles = "7.933000, 145.617004, 156.410003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic631"
    origin = "2255.000000, 9865.000000, 3570.000000"
    angles = "-23.347000, 59.068000, -8.645000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic632"
    origin = "613.000000, 7108.000000, 1201.000000"
    angles = "-29.496000, -28.340000, -132.393005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic633"
    origin = "797.000000, 7108.000000, 1201.000000"
    angles = "29.496000, 28.340000, -132.393005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic634"
    origin = "613.000000, 6674.000000, 832.000000"
    angles = "-29.496000, -28.340000, -132.393005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic635"
    origin = "797.000000, 6674.000000, 832.000000"
    angles = "29.496000, 28.340000, -132.393005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic636"
    origin = "613.000000, 6405.000000, 610.000000"
    angles = "-31.770000, -25.700000, -137.570007"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic637"
    origin = "797.000000, 6405.000000, 610.000000"
    angles = "31.770000, 25.700000, -137.570007"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic638"
    origin = "613.000000, 6293.000000, 536.000000"
    angles = "-33.825000, -22.760000, -142.994003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic639"
    origin = "797.000000, 6293.000000, 536.000000"
    angles = "33.825000, 22.760000, -142.994003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic640"
    origin = "613.000000, 6175.000000, 472.000000"
    angles = "-35.631000, -19.524000, -148.669006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic641"
    origin = "797.000000, 6175.000000, 472.000000"
    angles = "35.631000, 19.524000, -148.669006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic642"
    origin = "613.000000, 6052.000000, 418.000000"
    angles = "-37.158000, -16.010000, -154.585006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic643"
    origin = "797.000000, 6052.000000, 418.000000"
    angles = "37.158000, 16.010000, -154.585006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic644"
    origin = "613.000000, 5925.000000, 375.000000"
    angles = "-38.380001, -12.251000, -160.720001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic645"
    origin = "797.000000, 5925.000000, 375.000000"
    angles = "38.380001, 12.253000, -160.720001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic646"
    origin = "654.000000, 5366.000000, 180.000000"
    angles = "89.999000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic647"
    origin = "756.000000, 4470.000000, 1076.000000"
    angles = "0.000000, -90.000000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic648"
    origin = "613.000000, 5795.000000, 343.000000"
    angles = "-39.270000, -8.288000, -167.035003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic649"
    origin = "797.000000, 5795.000000, 343.000000"
    angles = "39.270000, 8.288000, -167.037002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic650"
    origin = "613.000000, 5662.000000, 323.000000"
    angles = "-39.817001, -4.182000, -173.483001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic651"
    origin = "797.000000, 5662.000000, 323.000000"
    angles = "39.817001, 4.182000, -173.483001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic652"
    origin = "613.000000, 5530.000000, 315.000000"
    angles = "-40.000000, 0.000000, 179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic653"
    origin = "797.000000, 5530.000000, 315.000000"
    angles = "40.000000, 0.000000, -179.998001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic654"
    origin = "613.000000, 5392.000000, 316.000000"
    angles = "-39.951999, 2.095000, 176.735000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic655"
    origin = "797.000000, 5392.000000, 316.000000"
    angles = "39.951999, -2.095000, 176.738006"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic656"
    origin = "1116.000000, 4712.000000, 5000.000000"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic657"
    origin = "1687.196044, 4713.955078, 4998.847167"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic658"
    origin = "2246.184082, 4713.145996, 4997.307128"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic659"
    origin = "2753.083007, 4593.778808, 4996.990234"
    angles = "-89.999000, -89.999000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/elevator01_framework.mdl"
    targetname = "ent_prop_dynamic660"
    origin = "2962.975097, 4914.055175, 4998.287109"
    angles = "0.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic661"
    origin = "3040.989013, 4855.040039, 4996.465820"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic662"
    origin = "1116.000000, 4712.000000, 4500.000000"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic663"
    origin = "1680.817993, 4712.187011, 4500.376953"
    angles = "-89.999000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic664"
    origin = "2095.218017, 4710.328125, 4556.145996"
    angles = "65.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic665"
    origin = "2095.433105, 4589.535156, 4675.153808"
    angles = "-65.000000, 0.000000, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic666"
    origin = "2096.454101, 4591.263183, 4791.818847"
    angles = "65.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic667"
    origin = "2100.342041, 4589.534179, 4921.270019"
    angles = "-60.000000, 0.000000, 89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic668"
    origin = "1913.931030, 4475.797851, 4996.407226"
    angles = "-89.999000, -89.999000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic669"
    origin = "2341.833007, 4588.833007, 4855.083007"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic670"
    origin = "2340.033935, 4587.229003, 4614.402832"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic671"
    origin = "1847.484008, 4590.365234, 4733.826171"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic672"
    origin = "9042.847656, 8788.091796, 3594.760009"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic673"
    origin = "8825.200195, 8574.336914, 3601.603027"
    angles = "0.000000, -5.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_crates/static_crate_40.mdl"
    targetname = "ent_prop_dynamic674"
    origin = "8821.309570, 8569.432617, 3640.634033"
    angles = "0.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic675"
    origin = "5335.935058, 8588.084960, 5536.029785"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic676"
    origin = "7936.030761, 8506.506835, 4836.064941"
    angles = "-50.000000, 89.999000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic677"
    origin = "7878.684082, 8208.304687, 4947.373046"
    angles = "-90.000000, 141.339996, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic678"
    origin = "7808.030761, 7876.431152, 4919.548828"
    angles = "0.000000, -90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic679"
    origin = "7655.713867, 7775.967773, 4892.857910"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic680"
    origin = "7446.833007, 7775.967773, 4905.871093"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic681"
    origin = "7062.622070, 9440.031250, 5557.221680"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic682"
    origin = "7324.369629, 7495.466309, 4969.448730"
    angles = "-90.000000, -0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_rooftop/acunit2.mdl"
    targetname = "ent_prop_dynamic683"
    origin = "7416.505859, 7775.968750, 2831.158936"
    angles = "-45.000000, -0.000003, 90.000008"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);