//Squirrel

printl("Loaded Dead Air Surf.");

local hTable = {};
local hEntity = null;

//============================================================
//============================================================

while ((hEntity = Entities.FindByClassname(hEntity, "prop_dynamic")) != null){hEntity.Kill();}

EntFire("prop_door_rotating_checkpoint", "Kill");
EntFire("prop_door_rotating", "Kill");
EntFire("prop_minigun_l4d1", "Kill");
EntFire("prop_physics", "Kill");
EntFire("radio_fake_button", "Kill");
EntFire("func_illusionary", "Kill");
EntFire("func_simpleladder", "Kill");
EntFire("airplanemodel", "Kill");
EntFire("keyframe_rope", "Kill");
EntFire("move_rope", "Kill");
EntFire("func_playerinfected_clip", "Kill");
EntFire("weapon_ammo_spawn", "Kill");
EntFire("upgrade_laser_sight", "Kill");
EntFire("weapon_adrenaline_spawn", "Kill");
EntFire("weapon_molotov_spawn", "Kill");
EntFire("weapon_vomitjar_spawn", "Kill");
EntFire("weapon_pipe_bomb_spawn", "Kill");
EntFire("orator_plane_radio", "Kill");
EntFire("radio", "Kill");

EntFire("spotlight_beam1", "AddOutput", "origin -3937 5660 269", 5.0);
EntFire("spotlight_beam2", "AddOutput", "origin -3926 6669 195", 5.0);
EntFire("spotlight_beam3", "AddOutput", "origin 15868 4807 2040", 5.0);
EntFire("spotlight_beam4", "AddOutput", "origin 16081 4803 2040", 5.0);
EntFire("weapon_melee_spawn", "AddOutput", "origin -14860 -16130 7973", 5.0);
EntFire("weapon_pistol_magnum_spawn", "AddOutput", "origin -14900 -16100 7973", 5.0);
EntFire("weapon_pain_pills_spawn", "AddOutput", "origin -14900 -16070 7972", 5.0);
EntFire("weapon_pain_pills_spawn", "AddOutput", "angles 0 0 0", 5.0);
EntFire("weapon_first_aid_kit_spawn", "AddOutput", "origin -14900 -16040 7973", 5.0);
EntFire("weapon_first_aid_kit_spawn", "AddOutput", "angles 90 0 0", 5.0);
EntFire("weapon_spawn", "AddOutput", "origin -14860 -16010 7973", 5.0);

//============================================================
//============================================================

hTable =
{
    targetname = "ent_das_vscripts"
    vscripts = "das_scripts/vs_precache.nut"
}
SpawnEntityFromTable("logic_script", hTable);

//========================================================================================================================
//Triggers
//========================================================================================================================

hTable =
{
    targetname = "trigger_start"
    origin = "-14000 -16070 7940"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 64 128 128");
EntFire(hTable.targetname, "AddOutput" "mins -64 -128 -128");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_finish"
    origin = "-4785 5940 -90"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 64 460 128");
EntFire(hTable.targetname, "AddOutput" "mins -64 -460 -128");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_cp1"
    origin = "4544 -16030 7710"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 64 125 60");
EntFire(hTable.targetname, "AddOutput" "mins -64 -125 -60");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_cp2"
    origin = "-14855 3064 5735"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 110 64 60");
EntFire(hTable.targetname, "AddOutput" "mins -110 -64 -60");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_cp3"
    origin = "15900 -4936 1782"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 110 64 60");
EntFire(hTable.targetname, "AddOutput" "mins -110 -64 -60");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

//============================================================
//============================================================

hTable =
{
    targetname = "trigger_teleport1"
    origin = "-6553 12021 145"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 200 200 100");
EntFire(hTable.targetname, "AddOutput" "mins -250 -200 0");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

hTable =
{
    targetname = "trigger_teleport2"
    origin = "15700 -16190 -179"
    spawnflags = "1"
}
hEntity = SpawnEntityFromTable("trigger_multiple", hTable);
EntFire(hTable.targetname, "AddOutput" "maxs 0 21000 1000");
EntFire(hTable.targetname, "AddOutput" "mins -30700 0 0");
EntFire(hTable.targetname, "AddOutput" "solid 2");
hEntity.ValidateScriptScope();
hEntity.ConnectOutput("OnStartTouch", "CallbackStartTouch");

//========================================================================================================================
//Sub-entities
//========================================================================================================================

hTable =
{
    targetname = "ent_clip1"
    origin = "-14444 -16190 7969"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 32 256 128");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");

hTable =
{
    targetname = "ent_clip2"
    origin = "1300 5290 -190"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 11950 16 1600");
EntFire(hTable.targetname, "AddOutput", "mins -8550 -16 0");
EntFire(hTable.targetname, "Enable");

hTable =
{
    targetname = "ent_clip3"
    origin = "15733 3848 -100"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 512 32 1024");
EntFire(hTable.targetname, "AddOutput", "mins -1024 0 0");
EntFire(hTable.targetname, "Enable");

hTable =
{
    targetname = "ent_clip4"
    origin = "15962.241211, 3865.154541, -191.968750"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 16 1024 1024");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "Enable");

hTable =
{
    targetname = "ent_clip5"
    origin = "15837.245117, 3865.929688, -191.968750"
}
SpawnEntityFromTable("env_player_blocker", hTable);
EntFire(hTable.targetname, "AddOutput", "maxs 16 1024 1024");
EntFire(hTable.targetname, "AddOutput", "mins 0 0 0");
EntFire(hTable.targetname, "Enable");

//========================================================================================================================
//DAS
//========================================================================================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic1"
    origin = "-14100.000000, -15950.000000, 7905.000000"
    angles = "43.770000, 117.098999, -143.789001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic2"
    origin = "-13334.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic3"
    origin = "-7705.000000, -16127.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic4"
    origin = "-8188.000000, -15850.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic5"
    origin = "-8671.000000, -15573.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic6"
    origin = "-9154.000000, -15296.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic7"
    origin = "-9637.000000, -15019.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic8"
    origin = "-10120.000000, -14742.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic9"
    origin = "-10603.000000, -14465.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic10"
    origin = "-11061.000000, -14060.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic11"
    origin = "-11426.000000, -13625.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic12"
    origin = "-11791.000000, -13190.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic13"
    origin = "-12156.000000, -12755.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic14"
    origin = "-12521.000000, -12320.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic15"
    origin = "-12886.000000, -11885.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic16"
    origin = "-13251.000000, -11450.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic17"
    origin = "-13616.000000, -11015.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic18"
    origin = "-13981.000000, -10580.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic19"
    origin = "-14346.000000, -10145.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic20"
    origin = "-14711.000000, -9710.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic21"
    origin = "-14975.000000, 456.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic22"
    origin = "-14975.000000, 1022.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic23"
    origin = "-14975.000000, 1588.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic24"
    origin = "-14975.000000, 2154.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic25"
    origin = "-14975.000000, 2720.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic26"
    origin = "-14975.000000, 3286.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic27"
    origin = "-14975.000000, 3852.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic28"
    origin = "-1255.000000, -3831.000000, 2245.000000"
    angles = "75.000000, 150.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic29"
    origin = "-14684.000000, -16172.000000, 7968.000000"
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
    targetname = "ent_prop_dynamic30"
    origin = "-14684.000000, -15960.000000, 7968.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic31"
    origin = "-14100.000000, -16150.000000, 7905.000000"
    angles = "43.770000, -117.098999, 143.789001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic32"
    origin = "-13334.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic33"
    origin = "-12768.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-12202.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-11636.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-11070.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-10504.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-9938.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-9372.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-8806.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-8240.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic42"
    origin = "-7674.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic43"
    origin = "-7108.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-6542.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-5976.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic46"
    origin = "-5410.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic47"
    origin = "-4844.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-4278.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic49"
    origin = "-3712.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-3146.000000, -16102.000000, 7458.000000"
    angles = "-40.000000, 90.000000, 0.000000"
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
    origin = "-11636.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
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
    origin = "-11070.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
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
    origin = "-10504.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
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
    origin = "-9938.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic55"
    origin = "-9372.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic56"
    origin = "-8806.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic57"
    origin = "-8240.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic58"
    origin = "-7674.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic59"
    origin = "-7108.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic60"
    origin = "-6542.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic61"
    origin = "-5976.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic62"
    origin = "-5410.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic63"
    origin = "-4844.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic64"
    origin = "-4278.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic65"
    origin = "-3712.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic66"
    origin = "-12202.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic67"
    origin = "-11636.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic68"
    origin = "-11070.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic69"
    origin = "-10504.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic70"
    origin = "-9938.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic71"
    origin = "-9372.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic72"
    origin = "-8806.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic73"
    origin = "-8240.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic74"
    origin = "-7674.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic75"
    origin = "-7108.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic76"
    origin = "-6542.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic77"
    origin = "-5976.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic78"
    origin = "-5410.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic79"
    origin = "-4844.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic80"
    origin = "-4278.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic81"
    origin = "-3712.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic82"
    origin = "-2509.000000, -16191.000000, 7530.000000"
    angles = "85.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic83"
    origin = "-1936.000000, -16191.000000, 7567.000000"
    angles = "87.500000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic84"
    origin = "-14734.000000, -9035.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic85"
    origin = "-8069.000000, -15644.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic86"
    origin = "-8552.000000, -15367.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic87"
    origin = "-9035.000000, -15090.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic88"
    origin = "-9518.000000, -14813.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic89"
    origin = "-10001.000000, -14536.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic90"
    origin = "-10484.000000, -14259.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic91"
    origin = "-10879.000000, -13907.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic92"
    origin = "-11244.000000, -13472.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic93"
    origin = "-11609.000000, -13037.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic94"
    origin = "-11974.000000, -12602.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic95"
    origin = "-12339.000000, -12167.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic96"
    origin = "-12704.000000, -11732.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic97"
    origin = "-13069.000000, -11297.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic98"
    origin = "-13434.000000, -10862.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic99"
    origin = "-13799.000000, -10427.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic100"
    origin = "-14164.000000, -9992.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic101"
    origin = "-14529.000000, -9557.000000, 5675.000000"
    angles = "-90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic102"
    origin = "-14734.000000, -8600.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic103"
    origin = "-14734.000000, -8034.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic104"
    origin = "-14734.000000, -7468.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic105"
    origin = "-14734.000000, -6902.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic106"
    origin = "-14734.000000, -8600.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic107"
    origin = "-14734.000000, -8034.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic108"
    origin = "-14975.000000, -8034.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic109"
    origin = "-14975.000000, -7468.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic110"
    origin = "-14975.000000, -6902.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic111"
    origin = "-14975.000000, -6336.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic112"
    origin = "-14734.000000, -6336.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic113"
    origin = "-14975.000000, -5770.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic114"
    origin = "-14734.000000, -5770.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic115"
    origin = "-14975.000000, -5204.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic116"
    origin = "-14734.000000, -5204.000000, 5675.000000"
    angles = "90.000000, -180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic117"
    origin = "-14975.000000, -4638.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic118"
    origin = "-14975.000000, -4072.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic119"
    origin = "-14975.000000, -3506.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic120"
    origin = "-14975.000000, -2940.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic121"
    origin = "-14975.000000, -2374.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic122"
    origin = "-14975.000000, -1808.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic123"
    origin = "-14975.000000, -1242.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic124"
    origin = "-14975.000000, -676.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic125"
    origin = "-14975.000000, -110.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic126"
    origin = "-10865.000000, 1715.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic127"
    origin = "-10415.000000, 1455.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic128"
    origin = "-10284.000000, 1679.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic129"
    origin = "-9965.000000, 1195.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic130"
    origin = "-9832.000000, 1418.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic131"
    origin = "-9515.000000, 935.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic132"
    origin = "-9379.000000, 1158.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic133"
    origin = "-9065.000000, 675.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic134"
    origin = "-8927.000000, 898.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic135"
    origin = "-8615.000000, 415.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic136"
    origin = "-8473.000000, 638.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic137"
    origin = "-8165.000000, 155.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic138"
    origin = "-8021.000000, 377.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic139"
    origin = "-7715.000000, -105.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic140"
    origin = "-7569.000000, 115.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic141"
    origin = "-7265.000000, -365.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic142"
    origin = "-7117.000000, -145.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic143"
    origin = "-6815.000000, -625.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic144"
    origin = "-6666.000000, -405.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic145"
    origin = "-6365.000000, -885.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic146"
    origin = "-6213.000000, -668.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic147"
    origin = "-5915.000000, -1145.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
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
    origin = "-5760.000000, -927.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
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
    origin = "-5465.000000, -1405.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
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
    origin = "-5320.000000, -1180.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic151"
    origin = "-5015.000000, -1665.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic152"
    origin = "-4565.000000, -1925.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic153"
    origin = "-3215.000000, -2705.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic154"
    origin = "-2765.000000, -2965.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic155"
    origin = "-2315.000000, -3225.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic156"
    origin = "-1865.000000, -3485.000000, 2333.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic157"
    origin = "-1415.000000, -3745.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic158"
    origin = "-965.000000, -4005.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic159"
    origin = "-4832.500000, -1465.000000, 2355.000000"
    angles = "-85.000000, 150.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic160"
    origin = "-6805.000000, 5615.000000, -192.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic161"
    origin = "-6805.000000, 6530.000000, -192.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic162"
    origin = "-6805.000000, 7096.000000, -192.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic163"
    origin = "-2228.000000, -2983.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic164"
    origin = "-1740.000000, -3269.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic165"
    origin = "-1252.000000, -3554.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic166"
    origin = "-515.000000, -4265.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic167"
    origin = "-65.000000, -4525.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic168"
    origin = "385.000000, -4785.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic169"
    origin = "835.000000, -5045.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic170"
    origin = "-14734.000000, 3852.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic171"
    origin = "-14734.000000, 2720.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic172"
    origin = "-14734.000000, 1588.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic173"
    origin = "-14734.000000, 456.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic174"
    origin = "-14734.000000, -676.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic175"
    origin = "-14734.000000, -1808.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic176"
    origin = "-798.000000, -4107.000000, 2165.000000"
    angles = "42.000000, -139.000000, 152.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic177"
    origin = "-708.000000, -3955.000000, 2165.000000"
    angles = "40.000000, 79.000000, -152.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic178"
    origin = "-380.000000, -4351.000000, 1982.000000"
    angles = "-37.000000, 43.000000, -154.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic179"
    origin = "-290.000000, -4189.000000, 1979.000000"
    angles = "-40.000000, -100.000000, 152.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic180"
    origin = "43.000000, -4598.000000, 1851.000000"
    angles = "-44.000000, 55.000000, -173.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic181"
    origin = "139.000000, -4437.000000, 1855.000000"
    angles = "-40.000000, -114.000000, 172.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic182"
    origin = "468.000000, -4836.000000, 1815.000000"
    angles = "43.000000, -120.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic183"
    origin = "558.000000, -4682.000000, 1810.000000"
    angles = "43.000000, 60.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic184"
    origin = "-794.000000, -3816.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic185"
    origin = "-336.000000, -4078.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic186"
    origin = "122.000000, -4340.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic187"
    origin = "580.000000, -4602.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic188"
    origin = "1038.000000, -4864.000000, 2333.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic189"
    origin = "-14734.000000, 3286.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic190"
    origin = "-14734.000000, 2154.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic191"
    origin = "-14734.000000, 1022.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic192"
    origin = "-14734.000000, -110.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic193"
    origin = "-14734.000000, -1242.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic194"
    origin = "-14734.000000, -2374.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic195"
    origin = "-14734.000000, -3506.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic196"
    origin = "-2765.000000, -2965.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic197"
    origin = "-2315.000000, -3225.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic198"
    origin = "-1865.000000, -3485.000000, 2333.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic199"
    origin = "-14734.000000, -4638.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic200"
    origin = "-14734.000000, -2940.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic201"
    origin = "-14734.000000, -4072.000000, 5675.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic202"
    origin = "835.000000, -5045.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic203"
    origin = "1285.000000, -5305.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic204"
    origin = "1735.000000, -5565.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic205"
    origin = "2185.000000, -5825.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic206"
    origin = "2635.000000, -6085.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic207"
    origin = "3085.000000, -6345.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic208"
    origin = "3535.000000, -6605.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic209"
    origin = "3985.000000, -6865.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic210"
    origin = "4435.000000, -7125.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic211"
    origin = "4885.000000, -7385.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
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
    origin = "5335.000000, -7645.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic213"
    origin = "5785.000000, -7905.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic214"
    origin = "6235.000000, -8165.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic215"
    origin = "6685.000000, -8425.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic216"
    origin = "7135.000000, -8685.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic217"
    origin = "7585.000000, -8945.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic218"
    origin = "8035.000000, -9205.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic219"
    origin = "7362.000000, -9078.000000, 1866.000000"
    angles = "-40.000000, 60.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic220"
    origin = "7433.000000, -8960.000000, 1699.000000"
    angles = "-40.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic221"
    origin = "7845.000000, -9370.000000, 1866.000000"
    angles = "-40.000000, 60.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic222"
    origin = "7918.000000, -9252.000000, 1699.000000"
    angles = "-40.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic223"
    origin = "8335.000000, -9655.000000, 1866.000000"
    angles = "-40.000000, 60.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic224"
    origin = "8408.000000, -9537.000000, 1699.000000"
    angles = "-40.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic225"
    origin = "7645.000000, -8585.000000, 1877.000000"
    angles = "-40.000000, -120.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic226"
    origin = "7570.000000, -8715.000000, 1695.000000"
    angles = "-40.000000, -120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic227"
    origin = "8130.000000, -8855.000000, 1877.000000"
    angles = "-40.000000, -120.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic228"
    origin = "8070.000000, -8990.000000, 1695.000000"
    angles = "-40.000000, -120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic229"
    origin = "8633.000000, -9137.000000, 1877.000000"
    angles = "-40.000000, -120.000000, -180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic230"
    origin = "8565.000000, -9270.000000, 1695.000000"
    angles = "-40.000000, -120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic231"
    origin = "7531.000000, -8776.000000, 1720.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic232"
    origin = "8026.000000, -9062.000000, 1720.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic233"
    origin = "7474.000000, -8881.000000, 1720.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic234"
    origin = "7967.000000, -9165.000000, 1720.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic235"
    origin = "8458.000000, -9449.000000, 1720.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic236"
    origin = "8518.000000, -9346.000000, 1720.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic237"
    origin = "8934.000000, -9724.000000, 1720.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic238"
    origin = "8994.000000, -9621.000000, 1720.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic239"
    origin = "8485.000000, -9465.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic240"
    origin = "8935.000000, -9725.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic241"
    origin = "9385.000000, -9985.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic242"
    origin = "9486.000000, -9906.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic243"
    origin = "9385.000000, -9985.000000, 1720.000000"
    angles = "90.000000, -90.000000, 30.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic244"
    origin = "9107.000000, -9953.000000, 1719.000000"
    angles = "0.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic245"
    origin = "9603.000000, -10217.000000, 1719.000000"
    angles = "0.000000, 65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic246"
    origin = "10122.000000, -10435.000000, 1719.000000"
    angles = "0.000000, 70.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic247"
    origin = "10659.000000, -10606.000000, 1719.000000"
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
    targetname = "ent_prop_dynamic248"
    origin = "11208.000000, -10731.000000, 1719.000000"
    angles = "0.000000, 80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic249"
    origin = "11765.000000, -10808.000000, 1719.000000"
    angles = "0.000000, 85.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic250"
    origin = "12327.000000, -10837.000000, 1719.000000"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic251"
    origin = "12886.000000, -10791.000000, 1719.000000"
    angles = "0.000000, 100.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic252"
    origin = "13428.000000, -10651.000000, 1719.000000"
    angles = "0.000000, 110.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic253"
    origin = "13938.000000, -10418.000000, 1719.000000"
    angles = "0.000000, 120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic254"
    origin = "14397.000000, -10100.000000, 1719.000000"
    angles = "0.000000, 130.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic255"
    origin = "14795.000000, -9708.000000, 1719.000000"
    angles = "0.000000, 140.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic256"
    origin = "15117.000000, -9251.000000, 1719.000000"
    angles = "0.000000, 150.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic257"
    origin = "15380.000000, -8752.000000, 1719.000000"
    angles = "0.000000, 155.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic258"
    origin = "15597.000000, -8232.000000, 1719.000000"
    angles = "0.000000, 160.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic259"
    origin = "15770.000000, -7697.000000, 1719.000000"
    angles = "0.000000, 165.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic260"
    origin = "15893.000000, -7147.000000, 1719.000000"
    angles = "0.000000, 170.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic261"
    origin = "15971.000000, -6590.000000, 1719.000000"
    angles = "0.000000, 175.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic262"
    origin = "15996.000000, -6027.000000, 1719.000000"
    angles = "0.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic263"
    origin = "9582.000000, -10238.000000, 1720.000000"
    angles = "90.000000, 65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic264"
    origin = "10113.000000, -10457.000000, 1720.000000"
    angles = "90.000000, 70.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic265"
    origin = "10652.000000, -10629.000000, 1720.000000"
    angles = "90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic266"
    origin = "11203.000000, -10754.000000, 1720.000000"
    angles = "90.000000, 80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic267"
    origin = "11762.000000, -10831.000000, 1720.000000"
    angles = "90.000000, 85.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic268"
    origin = "12326.000000, -10861.000000, 1720.000000"
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
    targetname = "ent_prop_dynamic269"
    origin = "12890.000000, -10814.000000, 1720.000000"
    angles = "90.000000, 100.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic270"
    origin = "13435.000000, -10673.000000, 1720.000000"
    angles = "90.000000, 110.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic271"
    origin = "13949.000000, -10438.000000, 1720.000000"
    angles = "90.000000, 120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic272"
    origin = "14412.000000, -10118.000000, 1720.000000"
    angles = "90.000000, 130.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic273"
    origin = "14812.000000, -9724.000000, 1720.000000"
    angles = "90.000000, 140.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic274"
    origin = "15137.000000, -9263.000000, 1720.000000"
    angles = "90.000000, 150.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic275"
    origin = "15401.000000, -8762.000000, 1720.000000"
    angles = "90.000000, 155.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic276"
    origin = "15619.000000, -8240.000000, 1720.000000"
    angles = "90.000000, 160.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic277"
    origin = "15793.000000, -7703.000000, 1720.000000"
    angles = "90.000000, 165.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic278"
    origin = "15916.000000, -7152.000000, 1720.000000"
    angles = "90.000000, 170.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic279"
    origin = "15994.000000, -6592.000000, 1720.000000"
    angles = "90.000000, 175.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic280"
    origin = "16020.000000, -6026.000000, 1720.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic281"
    origin = "10194.000000, -10233.000000, 1720.000000"
    angles = "-90.000000, 70.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic282"
    origin = "10713.000000, -10399.000000, 1720.000000"
    angles = "-90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic283"
    origin = "11244.000000, -10519.000000, 1720.000000"
    angles = "-90.000000, 80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic284"
    origin = "11783.000000, -10593.000000, 1720.000000"
    angles = "-90.000000, 85.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic285"
    origin = "12326.000000, -10622.000000, 1720.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic286"
    origin = "12848.000000, -10579.000000, 1720.000000"
    angles = "-90.000000, 100.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic287"
    origin = "13353.000000, -10449.000000, 1720.000000"
    angles = "-90.000000, 110.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic288"
    origin = "13829.000000, -10231.000000, 1720.000000"
    angles = "-90.000000, 120.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic289"
    origin = "14259.000000, -9935.000000, 1720.000000"
    angles = "-90.000000, 130.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic290"
    origin = "14630.000000, -9570.000000, 1720.000000"
    angles = "-90.000000, 140.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic291"
    origin = "14930.000000, -9144.000000, 1720.000000"
    angles = "-90.000000, 150.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic292"
    origin = "15186.000000, -8659.000000, 1720.000000"
    angles = "-90.000000, 155.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic293"
    origin = "15395.000000, -8158.000000, 1720.000000"
    angles = "-90.000000, 160.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic294"
    origin = "15563.000000, -7641.000000, 1720.000000"
    angles = "-90.000000, 165.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic295"
    origin = "15681.000000, -7109.000000, 1720.000000"
    angles = "-90.000000, 170.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic296"
    origin = "15756.000000, -6570.000000, 1720.000000"
    angles = "-90.000000, 175.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic297"
    origin = "15781.000000, -6026.000000, 1720.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic298"
    origin = "15781.000000, -5500.000000, 1720.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic299"
    origin = "15781.000000, -5000.000000, 1720.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic300"
    origin = "15996.000000, -5500.000000, 1719.000000"
    angles = "0.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic301"
    origin = "16020.000000, -5500.000000, 1720.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic302"
    origin = "16020.000000, -5000.000000, 1720.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic303"
    origin = "15996.000000, -5000.000000, 1719.000000"
    angles = "0.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic304"
    origin = "16000.000000, -3869.000000, 1720.000000"
    angles = "44.000000, -9.000000, 167.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic305"
    origin = "16000.000000, -3313.000000, 1625.000000"
    angles = "44.000000, -9.000000, 167.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic306"
    origin = "16000.000000, -2786.000000, 1507.000000"
    angles = "43.000000, -14.000000, 160.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic307"
    origin = "16000.000000, -2240.000000, 1358.000000"
    angles = "43.000000, -14.000000, 160.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic308"
    origin = "16000.000000, -1718.000000, 1188.000000"
    angles = "41.000000, -18.500000, 153.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic309"
    origin = "16000.000000, -1202.000000, 981.000000"
    angles = "40.700000, -20.899000, 149.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic310"
    origin = "16000.000000, -700.000000, 768.000000"
    angles = "40.700000, -20.899000, 149.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic311"
    origin = "16000.000000, -195.000000, 540.000000"
    angles = "39.957000, -22.707000, 146.912002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic312"
    origin = "16000.000000, 311.000000, 324.000000"
    angles = "41.000000, -19.000000, 152.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic313"
    origin = "16000.000000, 814.000000, 155.000000"
    angles = "43.000000, -15.000000, 159.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic314"
    origin = "16000.000000, 1341.000000, 30.000000"
    angles = "44.000000, -10.500000, 165.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic315"
    origin = "16000.000000, 1875.000000, -45.000000"
    angles = "44.000000, -5.000000, 173.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic316"
    origin = "15815.000000, -3869.000000, 1720.000000"
    angles = "-44.000000, 9.000000, 167.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic317"
    origin = "15815.000000, -3313.000000, 1625.000000"
    angles = "-44.000000, 9.000000, 167.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic318"
    origin = "15815.000000, -2786.000000, 1507.000000"
    angles = "-43.000000, 14.000000, 160.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic319"
    origin = "15815.000000, -2240.000000, 1358.000000"
    angles = "-43.000000, 14.000000, 160.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic320"
    origin = "15815.000000, -1718.000000, 1188.000000"
    angles = "-41.000000, 18.500000, 153.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic321"
    origin = "15815.000000, -1202.000000, 981.000000"
    angles = "-40.700000, 20.899000, 149.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic322"
    origin = "15815.000000, -700.000000, 768.000000"
    angles = "-40.700000, 20.899000, 149.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic323"
    origin = "15815.000000, -195.000000, 540.000000"
    angles = "-39.957000, 22.707000, 146.912002"
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
    origin = "15815.000000, 311.000000, 324.000000"
    angles = "-41.000000, 19.000000, 152.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic325"
    origin = "15815.000000, 814.000000, 155.000000"
    angles = "-43.000000, 15.000000, 159.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic326"
    origin = "15815.000000, 1341.000000, 30.000000"
    angles = "-44.000000, 10.500000, 165.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic327"
    origin = "15815.000000, 1875.000000, -45.000000"
    angles = "-44.000000, 5.000000, 173.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic328"
    origin = "16000.000000, 2436.000000, -87.000000"
    angles = "44.000000, -3.000000, 176.000000"
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
    origin = "15815.000000, 2436.000000, -87.000000"
    angles = "-44.000000, 3.000000, 176.000000"
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
    origin = "16000.000000, 4685.000000, 876.000000"
    angles = "0.000000, -90.000000, 90.000000"
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
    origin = "15781.000000, -4500.000000, 1720.000000"
    angles = "-90.000000, 180.000000, 0.000000"
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
    origin = "15996.000000, -4500.000000, 1719.000000"
    angles = "0.000000, 180.000000, 0.000000"
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
    origin = "16020.000000, -4500.000000, 1720.000000"
    angles = "90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic334"
    origin = "15815.000000, 4685.000000, 876.000000"
    angles = "0.000000, -90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic335"
    origin = "16088.000000, 4941.000000, 1204.000000"
    angles = "17.000000, -58.400001, 100.198997"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic336"
    origin = "15868.000000, 4947.000000, 1198.000000"
    angles = "-16.200000, 53.298999, 101.698997"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic337"
    origin = "16062.000000, 5188.000000, 705.000000"
    angles = "30.899000, -54.400001, 104.300003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic338"
    origin = "15836.000000, 5179.000000, 712.000000"
    angles = "-26.000000, 56.298999, 112.098999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic339"
    origin = "15960.000000, 5550.000000, 330.000000"
    angles = "41.298999, -23.200000, 126.698997"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic340"
    origin = "15752.000000, 5486.000000, 330.000000"
    angles = "-40.500000, 57.200000, 128.399002"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic341"
    origin = "15785.000000, 6005.000000, 45.000000"
    angles = "43.400001, -3.700000, 145.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic342"
    origin = "15600.000000, 5936.000000, 50.000000"
    angles = "-40.500000, 44.700000, 147.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic343"
    origin = "-1362.000000, 10485.000000, -192.000000"
    angles = "0.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic344"
    origin = "16083.000000, 4827.000000, 1745.000000"
    angles = "4.300000, -59.900001, 92.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic345"
    origin = "15869.000000, 4832.000000, 1745.000000"
    angles = "-4.000000, 54.798999, 92.800003"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic346"
    origin = "-14710.000000, -9493.000000, 5840.000000"
    angles = "0.000000, 30.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic347"
    origin = "-2907.000000, -15955.000000, 7492.000000"
    angles = "0.000000, 90.000000, -5.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic348"
    origin = "-2915.000000, -15952.000000, 7494.000000"
    angles = "85.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic349"
    origin = "15585.000000, 6466.000000, -110.000000"
    angles = "43.500000, 14.100000, 165.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic350"
    origin = "15405.000000, 6391.000000, -115.000000"
    angles = "-44.098999, 35.400001, 164.699005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic351"
    origin = "14466.000000, 5482.000000, -70.000000"
    angles = "-90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic352"
    origin = "-796.000000, 10485.000000, -192.000000"
    angles = "0.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic353"
    origin = "-230.000000, 10485.000000, -192.000000"
    angles = "0.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic354"
    origin = "13545.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic355"
    origin = "14115.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic356"
    origin = "14685.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic357"
    origin = "15255.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic358"
    origin = "15825.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic359"
    origin = "13180.000000, 5610.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic360"
    origin = "13180.000000, 6180.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic361"
    origin = "13180.000000, 6750.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic362"
    origin = "13180.000000, 7320.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic363"
    origin = "13180.000000, 7890.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "13180.000000, 8460.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "13180.000000, 9030.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic366"
    origin = "2063.000000, 11214.000000, -191.968002"
    angles = "0.000000, -35.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic367"
    origin = "1632.000000, 10857.000000, -191.968002"
    angles = "0.000000, -65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic368"
    origin = "2228.000000, 11734.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic369"
    origin = "2228.000000, 12304.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic370"
    origin = "2228.000000, 12874.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic371"
    origin = "2228.000000, 13444.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic372"
    origin = "2228.000000, 14014.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic373"
    origin = "-3866.000000, -1778.000000, 2307.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic374"
    origin = "-3380.000000, -2066.000000, 2268.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic375"
    origin = "-2894.000000, -2354.000000, 2229.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic376"
    origin = "-2408.000000, -2642.000000, 2190.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic377"
    origin = "-1922.000000, -2930.000000, 2151.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic378"
    origin = "-1436.000000, -3218.000000, 2112.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic379"
    origin = "-950.000000, -3506.000000, 2073.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic380"
    origin = "-464.000000, -3794.000000, 2034.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic381"
    origin = "22.000000, -4082.000000, 1995.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic382"
    origin = "508.000000, -4370.000000, 1956.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic383"
    origin = "994.000000, -4658.000000, 1917.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic384"
    origin = "1480.000000, -4946.000000, 1878.000000"
    angles = "-39.700000, -117.500000, 175.199005"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic385"
    origin = "-3953.000000, -1902.000000, 2125.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic386"
    origin = "-3467.000000, -2190.000000, 2086.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic387"
    origin = "-2981.000000, -2478.000000, 2047.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic388"
    origin = "-2495.000000, -2766.000000, 2008.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic389"
    origin = "-2009.000000, -3054.000000, 1969.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic390"
    origin = "-1523.000000, -3342.000000, 1930.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic391"
    origin = "-1037.000000, -3630.000000, 1891.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic392"
    origin = "-551.000000, -3918.000000, 1852.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic393"
    origin = "-65.000000, -4206.000000, 1813.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic394"
    origin = "421.000000, -4494.000000, 1774.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic395"
    origin = "907.000000, -4782.000000, 1735.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic396"
    origin = "1393.000000, -5070.000000, 1696.000000"
    angles = "39.700000, 62.500000, 4.738999"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic397"
    origin = "835.000000, -4895.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic398"
    origin = "1285.000000, -5155.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic399"
    origin = "1735.000000, -5415.000000, 1720.000000"
    angles = "90.000000, -90.000000, -150.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic400"
    origin = "-5479.000000, 6368.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic401"
    origin = "-4900.000000, 6400.000000, -191.968002"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic402"
    origin = "-4327.000000, 6453.000000, -191.968002"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic403"
    origin = "-3544.000000, 6459.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic404"
    origin = "-2970.000000, 6494.000000, -191.968002"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic405"
    origin = "-2346.000000, 6557.000000, -191.968002"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic406"
    origin = "-1834.000000, 6851.000000, -191.968002"
    angles = "0.000000, -45.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic407"
    origin = "-1649.000000, 7340.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic408"
    origin = "-5032.000000, 5441.000000, -191.968002"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic409"
    origin = "-4460.000000, 5453.000000, -191.968002"
    angles = "0.000000, 85.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic410"
    origin = "-3897.000000, 5385.000000, -191.968002"
    angles = "0.000000, 80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic411"
    origin = "-804.000000, 6430.000000, -191.968002"
    angles = "0.000000, -80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic412"
    origin = "-164.000000, 6680.000000, -191.968002"
    angles = "0.000000, 115.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic413"
    origin = "427.000000, 6946.000000, -191.968002"
    angles = "0.000000, -65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic414"
    origin = "984.000000, 7120.000000, -191.968002"
    angles = "0.000000, 100.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic415"
    origin = "1130.000000, 6928.000000, -191.968002"
    angles = "0.000000, -30.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic416"
    origin = "728.000000, 6571.000000, -191.968002"
    angles = "0.000000, -65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic417"
    origin = "168.000000, 6444.000000, -191.968002"
    angles = "0.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic418"
    origin = "-4845.000000, 6114.000000, 49.000000"
    angles = "90.000000, 0.000000, 0.000000"
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
    origin = "-4845.000000, 5706.000000, 49.000000"
    angles = "90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic420"
    origin = "13564.000000, 10717.000000, -191.968002"
    angles = "0.000000, -90.000000, 0.000000"
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
    origin = "-1649.000000, 10190.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "-1649.000000, 7910.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "-1649.000000, 8480.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "-1649.000000, 9050.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "-1649.000000, 9620.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
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
    origin = "15861.000000, 4804.000000, 1137.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic427"
    origin = "15456.000000, 4973.000000, 1137.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic428"
    origin = "15742.000000, 5378.000000, 1137.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic429"
    origin = "16143.000000, 5542.000000, 1137.000000"
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
    targetname = "ent_prop_dynamic430"
    origin = "16024.000000, -3965.000000, 1831.000000"
    angles = "-85.000000, 90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic431"
    origin = "15786.000000, -3965.000000, 1831.000000"
    angles = "-85.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic432"
    origin = "-14975.000000, -8601.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic433"
    origin = "-7814.000000, -16054.000000, 5675.000000"
    angles = "0.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic434"
    origin = "-8309.000000, -15772.000000, 5675.000000"
    angles = "0.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic435"
    origin = "-11000.000000, -14120.000000, 5675.000000"
    angles = "0.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic436"
    origin = "-14082.000000, -10418.000000, 5675.000000"
    angles = "0.000000, 35.991001, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic437"
    origin = "-10822.000000, 1777.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic438"
    origin = "-10346.000000, 1500.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic439"
    origin = "-9870.000000, 1223.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic440"
    origin = "-9394.000000, 946.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic441"
    origin = "-8918.000000, 669.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic442"
    origin = "-8442.000000, 392.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic443"
    origin = "-7966.000000, 115.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic444"
    origin = "-7490.000000, -162.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic445"
    origin = "-7014.000000, -439.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic446"
    origin = "-6538.000000, -716.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic447"
    origin = "-6062.000000, -993.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic448"
    origin = "-5586.000000, -1270.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic449"
    origin = "-5110.000000, -1547.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic450"
    origin = "-4634.000000, -1824.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic451"
    origin = "-4149.000000, -2102.000000, 2170.300048"
    angles = "85.000000, -30.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic452"
    origin = "-11298.000000, 2054.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic453"
    origin = "-11774.000000, 2331.000000, 2148.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic454"
    origin = "-10622.000000, 1977.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic455"
    origin = "-10146.000000, 1700.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic456"
    origin = "-9670.000000, 1423.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic457"
    origin = "-9194.000000, 1146.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic458"
    origin = "-8718.000000, 869.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic459"
    origin = "-8242.000000, 592.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic460"
    origin = "-7766.000000, 315.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic461"
    origin = "-7290.000000, 38.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic462"
    origin = "-6814.000000, -239.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
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
    origin = "-6338.000000, -516.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic464"
    origin = "-5862.000000, -793.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic465"
    origin = "-5386.000000, -1070.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic466"
    origin = "-4910.000000, -1347.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic467"
    origin = "-4434.000000, -1624.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic468"
    origin = "-14672.000000, -15949.000000, 8095.000000"
    angles = "0.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic469"
    origin = "-11098.000000, 2254.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic470"
    origin = "-11574.000000, 2531.000000, 2148.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic471"
    origin = "-1363.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic472"
    origin = "-800.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic473"
    origin = "-800.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic474"
    origin = "-234.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
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
    origin = "-234.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic476"
    origin = "332.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic477"
    origin = "332.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic478"
    origin = "898.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic479"
    origin = "898.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic480"
    origin = "1464.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic481"
    origin = "1464.000000, -16191.000000, 7577.000000"
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
    targetname = "ent_prop_dynamic482"
    origin = "2030.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic483"
    origin = "2596.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic484"
    origin = "2271.000000, -16175.000000, 7588.000000"
    angles = "0.000000, -90.000000, -177.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic485"
    origin = "3162.000000, -16075.000000, 7560.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic486"
    origin = "2810.000000, -16175.000000, 7610.500000"
    angles = "0.000000, -90.000000, -177.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic487"
    origin = "3377.000000, -16175.000000, 7632.000000"
    angles = "0.000000, -90.000000, -177.500000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic488"
    origin = "2596.000000, -15880.000000, 7647.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic489"
    origin = "3162.000000, -15880.000000, 7647.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic490"
    origin = "3728.000000, -15880.000000, 7647.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic491"
    origin = "4200.000000, -16191.000000, 7647.000000"
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
    targetname = "ent_prop_dynamic492"
    origin = "4294.000000, -15880.000000, 7647.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic493"
    origin = "4766.000000, -16191.000000, 7647.000000"
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
    targetname = "ent_prop_dynamic494"
    origin = "4766.000000, -15880.000000, 7647.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic495"
    origin = "-7357.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic496"
    origin = "-7357.000000, -15953.000000, 5675.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic497"
    origin = "-6225.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic498"
    origin = "-6225.000000, -15953.000000, 5675.000000"
    angles = "-90.000000, 90.000000, 0.000000"
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
    origin = "-5659.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic500"
    origin = "-5659.000000, -15953.000000, 5675.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic501"
    origin = "-5093.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic502"
    origin = "-5093.000000, -15953.000000, 5675.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic503"
    origin = "-6791.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic504"
    origin = "-6791.000000, -15953.000000, 5675.000000"
    angles = "-90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic505"
    origin = "-4524.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic506"
    origin = "-4524.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
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
    origin = "-3958.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic508"
    origin = "-3958.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic509"
    origin = "-3392.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic510"
    origin = "-3392.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic511"
    origin = "-2826.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic512"
    origin = "-2826.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic513"
    origin = "-2260.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic514"
    origin = "-2260.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic515"
    origin = "-1694.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic516"
    origin = "-1694.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic517"
    origin = "-1128.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic518"
    origin = "-1128.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic519"
    origin = "-562.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic520"
    origin = "-562.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic521"
    origin = "4.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic522"
    origin = "4.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic523"
    origin = "570.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic524"
    origin = "570.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic525"
    origin = "1136.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic526"
    origin = "1136.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic527"
    origin = "1702.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic528"
    origin = "1702.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
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
    origin = "2268.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
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
    origin = "2268.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic531"
    origin = "2834.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
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
    origin = "2834.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic533"
    origin = "3400.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic534"
    origin = "3400.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic535"
    origin = "3966.000000, -15939.000000, 5839.500000"
    angles = "-40.000000, -90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic536"
    origin = "3966.000000, -16092.000000, 5657.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic537"
    origin = "-13308.000000, 3652.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic538"
    origin = "-12880.000000, 3292.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic539"
    origin = "-12452.000000, 2932.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic540"
    origin = "-12024.000000, 2572.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic541"
    origin = "-11596.000000, 2212.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic542"
    origin = "-11168.000000, 1852.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic543"
    origin = "-13308.000000, 3852.000000, 2255.000000"
    angles = "-40.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic544"
    origin = "-12880.000000, 3492.000000, 2255.000000"
    angles = "-40.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic545"
    origin = "-12452.000000, 3132.000000, 2255.000000"
    angles = "-40.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic546"
    origin = "-4527.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic547"
    origin = "-3961.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic548"
    origin = "-3395.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic549"
    origin = "-2829.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic550"
    origin = "-2263.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic551"
    origin = "-1697.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic552"
    origin = "-1131.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic553"
    origin = "-565.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic554"
    origin = "1.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic555"
    origin = "567.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic556"
    origin = "1133.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic557"
    origin = "1699.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic558"
    origin = "2265.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic559"
    origin = "2831.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic560"
    origin = "3397.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic561"
    origin = "3963.000000, -16191.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic562"
    origin = "-14495.000000, -9163.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic563"
    origin = "-14495.000000, -9163.000000, 5675.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic564"
    origin = "-14495.000000, -8597.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic565"
    origin = "-14495.000000, -8597.000000, 5675.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic566"
    origin = "-14495.000000, -8034.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic567"
    origin = "-14495.000000, -7468.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic568"
    origin = "-14734.000000, -7468.000000, 5675.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic569"
    origin = "-14734.000000, -6902.000000, 5675.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic570"
    origin = "-14734.000000, -6336.000000, 5675.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic571"
    origin = "-6791.000000, -15953.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic572"
    origin = "-7357.000000, -15953.000000, 5675.000000"
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
    targetname = "ent_prop_dynamic573"
    origin = "-8069.000000, -15644.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic574"
    origin = "-10484.000000, -14259.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic575"
    origin = "-10879.000000, -13907.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic576"
    origin = "-13799.000000, -10427.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic577"
    origin = "-14164.000000, -9992.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic578"
    origin = "-14529.000000, -9557.000000, 5675.000000"
    angles = "90.000000, 40.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic579"
    origin = "-13736.000000, 4012.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic580"
    origin = "-14164.000000, 4372.000000, 2455.000000"
    angles = "-40.000000, 50.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic581"
    origin = "-13736.000000, 4212.000000, 2255.000000"
    angles = "-40.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic582"
    origin = "-14164.000000, 4572.000000, 2255.000000"
    angles = "-40.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic583"
    origin = "-12768.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic584"
    origin = "-12202.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic585"
    origin = "-12768.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic586"
    origin = "-13334.000000, -15907.500000, 7640.000000"
    angles = "-140.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic587"
    origin = "-7713.000000, -15850.000000, 5675.000000"
    angles = "-90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic588"
    origin = "9809.000000, -10081.000000, 1720.000000"
    angles = "-90.000000, 65.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic589"
    origin = "12606.000000, -10834.000000, 1719.000000"
    angles = "0.000000, 95.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic590"
    origin = "13165.000000, -10738.000000, 1719.000000"
    angles = "0.000000, 105.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic591"
    origin = "13691.000000, -10554.000000, 1719.000000"
    angles = "0.000000, 115.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic592"
    origin = "14176.000000, -10277.000000, 1719.000000"
    angles = "0.000000, 125.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic593"
    origin = "14608.000000, -9919.000000, 1719.000000"
    angles = "0.000000, 135.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic594"
    origin = "14971.000000, -9490.000000, 1719.000000"
    angles = "0.000000, 145.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic595"
    origin = "1890.000000, -16191.000000, 7577.000000"
    angles = "90.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic596"
    origin = "3789.000000, -16191.000000, 7645.000000"
    angles = "88.500000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic597"
    origin = "-7713.000000, -15850.000000, 5675.000000"
    angles = "90.000000, 60.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic598"
    origin = "-1561.000000, -3660.000000, 2326.000000"
    angles = "85.000000, 150.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic599"
    origin = "-4533.000000, -1642.000000, 2389.500000"
    angles = "-80.000000, 150.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic600"
    origin = "-4419.500000, -1711.500000, 2417.000000"
    angles = "-75.000000, 150.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic601"
    origin = "-4308.298828, -1779.698974, 2456.000000"
    angles = "-70.000000, 150.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic602"
    origin = "-14882.000000, -9194.000000, 5840.000000"
    angles = "0.000000, 25.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic603"
    origin = "-14932.000000, -9066.000000, 5840.000000"
    angles = "0.000000, 15.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic604"
    origin = "-14958.000000, -8931.000000, 5840.000000"
    angles = "0.000000, 5.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade2.mdl"
    targetname = "ent_prop_dynamic605"
    origin = "-14963.000000, -8794.000000, 5840.000000"
    angles = "0.000000, 0.000000, 180.000000"
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
    origin = "-14957.000000, -8656.000000, 5840.000000"
    angles = "0.000000, -5.000000, 180.000000"
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
    origin = "16180.000000, 5320.000000, -191.968002"
    angles = "0.000000, 90.000000, 0.000000"
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
    origin = "-5130.000000, 6568.000000, -92.000000"
    angles = "90.000000, 0.000000, 0.000000"
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
    origin = "-4737.000000, 6580.000000, 8.000000"
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
    targetname = "ent_prop_dynamic610"
    origin = "-4721.000000, 6455.000000, 35.798999"
    angles = "-70.000000, 90.000000, -90.000000"
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
    origin = "-3844.000000, -2273.000000, 2212.800048"
    angles = "75.000000, -30.000000, -90.000000"
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
    origin = "-3731.000000, -2335.000000, 2257.100097"
    angles = "65.000000, -30.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic613"
    origin = "-14964.000000, -15960.000000, 7972.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic614"
    origin = "-14953.000000, -16183.000000, 7970.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic615"
    origin = "-14953.000000, -15949.000000, 7970.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic616"
    origin = "-14710.000000, -16183.000000, 7970.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic617"
    origin = "-14710.000000, -15949.000000, 7970.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic618"
    origin = "-4710.000000, 5430.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic619"
    origin = "-4710.000000, 6465.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic620"
    origin = "-4850.000000, 5430.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_cemetery/cemetery_column.mdl"
    targetname = "ent_prop_dynamic621"
    origin = "-4850.000000, 6465.000000, -191.968002"
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
    targetname = "ent_prop_dynamic622"
    origin = "-4712.000000, 5436.000000, 55.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic623"
    origin = "-4712.000000, 5948.000000, 55.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/column_01.mdl"
    targetname = "ent_prop_dynamic624"
    origin = "-4852.000000, 5436.000000, 55.000000"
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
    targetname = "ent_prop_dynamic625"
    origin = "-4852.000000, 5948.000000, 55.000000"
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
    targetname = "ent_prop_dynamic626"
    origin = "-5115.000000, 6514.000000, -92.000000"
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
    targetname = "ent_prop_dynamic627"
    origin = "-5115.000000, 6624.000000, -92.000000"
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
    targetname = "ent_prop_dynamic628"
    origin = "-4847.000000, 6642.000000, 7.098999"
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
    targetname = "ent_prop_dynamic629"
    origin = "-4746.000000, 6640.000000, 7.098999"
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
    targetname = "ent_prop_dynamic630"
    origin = "15471.000000, 4702.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic631"
    origin = "15471.000000, 4702.000000, 625.000000"
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
    targetname = "ent_prop_dynamic632"
    origin = "15471.000000, 4702.000000, 113.000000"
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
    targetname = "ent_prop_dynamic633"
    origin = "15563.000000, 4791.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic634"
    origin = "15563.000000, 4791.000000, 625.000000"
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
    targetname = "ent_prop_dynamic635"
    origin = "15563.000000, 4791.000000, 113.000000"
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
    targetname = "ent_prop_dynamic636"
    origin = "16130.000000, 4791.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic637"
    origin = "16130.000000, 4791.000000, 625.000000"
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
    targetname = "ent_prop_dynamic638"
    origin = "16130.000000, 4791.000000, 113.000000"
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
    targetname = "ent_prop_dynamic639"
    origin = "16130.000000, 4698.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic640"
    origin = "16130.000000, 4698.000000, 625.000000"
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
    targetname = "ent_prop_dynamic641"
    origin = "16130.000000, 4698.000000, 113.000000"
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
    targetname = "ent_prop_dynamic642"
    origin = "15471.000000, 4877.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic643"
    origin = "15471.000000, 4877.000000, 625.000000"
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
    targetname = "ent_prop_dynamic644"
    origin = "15471.000000, 4877.000000, 113.000000"
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
    targetname = "ent_prop_dynamic645"
    origin = "15471.000000, 4877.000000, 1646.000000"
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
    targetname = "ent_prop_dynamic646"
    origin = "15471.000000, 4877.000000, 2156.000000"
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
    targetname = "ent_prop_dynamic647"
    origin = "15810.000000, 5271.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic648"
    origin = "15810.000000, 5271.000000, 625.000000"
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
    targetname = "ent_prop_dynamic649"
    origin = "15810.000000, 5271.000000, 113.000000"
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
    targetname = "ent_prop_dynamic650"
    origin = "15810.000000, 5271.000000, 1646.000000"
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
    targetname = "ent_prop_dynamic651"
    origin = "15810.000000, 5271.000000, 2156.000000"
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
    targetname = "ent_prop_dynamic652"
    origin = "15810.000000, 5271.000000, 2666.000000"
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
    targetname = "ent_prop_dynamic653"
    origin = "15810.000000, 5271.000000, 3176.000000"
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
    targetname = "ent_prop_dynamic654"
    origin = "15810.000000, 5271.000000, 3686.000000"
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
    targetname = "ent_prop_dynamic655"
    origin = "15810.000000, 5271.000000, 4196.000000"
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
    targetname = "ent_prop_dynamic656"
    origin = "15810.000000, 5271.000000, 4706.000000"
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
    targetname = "ent_prop_dynamic657"
    origin = "15810.000000, 5271.000000, 5216.000000"
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
    targetname = "ent_prop_dynamic658"
    origin = "16073.000000, 5271.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic659"
    origin = "16073.000000, 5271.000000, 625.000000"
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
    targetname = "ent_prop_dynamic660"
    origin = "16073.000000, 5271.000000, 113.000000"
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
    targetname = "ent_prop_dynamic661"
    origin = "16073.000000, 5271.000000, 1646.000000"
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
    targetname = "ent_prop_dynamic662"
    origin = "16073.000000, 5271.000000, 2156.000000"
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
    targetname = "ent_prop_dynamic663"
    origin = "16073.000000, 5271.000000, 2666.000000"
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
    targetname = "ent_prop_dynamic664"
    origin = "16073.000000, 5271.000000, 3176.000000"
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
    targetname = "ent_prop_dynamic665"
    origin = "16073.000000, 5271.000000, 3686.000000"
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
    targetname = "ent_prop_dynamic666"
    origin = "16073.000000, 5271.000000, 4196.000000"
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
    targetname = "ent_prop_dynamic667"
    origin = "16073.000000, 5271.000000, 4706.000000"
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
    targetname = "ent_prop_dynamic668"
    origin = "16073.000000, 5271.000000, 5216.000000"
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
    targetname = "ent_prop_dynamic669"
    origin = "15565.000000, 5266.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic670"
    origin = "15565.000000, 5266.000000, 625.000000"
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
    targetname = "ent_prop_dynamic671"
    origin = "15565.000000, 5266.000000, 113.000000"
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
    targetname = "ent_prop_dynamic672"
    origin = "15470.000000, 5361.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic673"
    origin = "15470.000000, 5361.000000, 625.000000"
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
    targetname = "ent_prop_dynamic674"
    origin = "15470.000000, 5361.000000, 113.000000"
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
    targetname = "ent_prop_dynamic675"
    origin = "16125.000000, 5810.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic676"
    origin = "16125.000000, 5810.000000, 625.000000"
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
    targetname = "ent_prop_dynamic677"
    origin = "16125.000000, 5810.000000, 113.000000"
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
    targetname = "ent_prop_dynamic678"
    origin = "16040.000000, 5810.000000, 1136.000000"
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
    targetname = "ent_prop_dynamic679"
    origin = "16040.000000, 5810.000000, 625.000000"
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
    targetname = "ent_prop_dynamic680"
    origin = "16040.000000, 5810.000000, 113.000000"
    angles = "0.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic681"
    origin = "-14404.000000, -9969.000000, 5675.000000"
    angles = "0.000000, 35.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic682"
    origin = "-14062.000000, -15970.000000, 7811.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic683"
    origin = "1078.000000, 10671.000000, -192.000000"
    angles = "0.000000, -80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic684"
    origin = "-14062.000000, -16160.000000, 7811.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic685"
    origin = "-14067.000000, -16191.000000, 8063.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic686"
    origin = "15477.000000, 4701.000000, 1000.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic687"
    origin = "15477.000000, 4876.000000, 1500.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic688"
    origin = "15477.000000, 4876.000000, 2000.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic689"
    origin = "15816.000000, 5270.000000, 2500.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic690"
    origin = "15816.000000, 5270.000000, 3000.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic691"
    origin = "15816.000000, 5270.000000, 3500.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic692"
    origin = "15816.000000, 5270.000000, 4000.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic693"
    origin = "15816.000000, 5270.000000, 4500.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic694"
    origin = "15816.000000, 5270.000000, 5000.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic695"
    origin = "13751.000000, 10712.000000, -132.000000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic696"
    origin = "13622.000000, 10712.000000, -132.000000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic697"
    origin = "13493.000000, 10712.000000, -132.000000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic698"
    origin = "13363.000000, 10712.000000, -126.000000"
    angles = "70.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic699"
    origin = "13363.000000, 10712.000000, -140.000000"
    angles = "-70.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic700"
    origin = "2233.000000, 12490.000000, -132.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic701"
    origin = "2233.000000, 12361.000000, -132.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic702"
    origin = "2233.000000, 12232.000000, -132.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic703"
    origin = "2233.000000, 12103.000000, -126.000000"
    angles = "70.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic704"
    origin = "2233.000000, 12103.000000, -140.000000"
    angles = "-70.000000, 90.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic705"
    origin = "1165.000000, 7156.000000, -132.000000"
    angles = "0.000000, -80.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic706"
    origin = "1038.000000, 7133.000000, -132.000000"
    angles = "0.000000, -80.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic707"
    origin = "911.000000, 7110.000000, -132.000000"
    angles = "0.000000, -80.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic708"
    origin = "782.000000, 7089.000000, -126.000000"
    angles = "70.000000, 10.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic709"
    origin = "782.000000, 7089.000000, -140.000000"
    angles = "-70.000000, 10.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic710"
    origin = "-12860.000000, -15915.000000, 7776.000000"
    angles = "0.000000, 45.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
    model = "models/props_interiors/stair_metal_01.mdl"
    targetname = "ent_prop_dynamic711"
    origin = "-4856.000000, 6476.000000, -191.968002"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_mill/mill_railing_128.mdl"
    targetname = "ent_prop_dynamic712"
    origin = "-4784.000000, 5427.000000, 50.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_start.mdl"
    targetname = "ent_prop_dynamic713"
    origin = "-14070.000000, -16101.000000, 8041.000000"
    angles = "0.000000, -90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_finish.mdl"
    targetname = "ent_prop_dynamic714"
    origin = "-4706.000000, 5981.000000, 10.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic715"
    origin = "15728.000000, 4697.000000, 954.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "0"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic716"
    origin = "15728.000000, 4872.000000, 1454.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "1"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic717"
    origin = "15728.000000, 4872.000000, 1954.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "2"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic718"
    origin = "15982.000000, 5265.000000, 2454.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "3"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic719"
    origin = "15982.000000, 5265.000000, 2954.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "4"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic720"
    origin = "15982.000000, 5265.000000, 3454.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "5"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic721"
    origin = "15982.000000, 5265.000000, 3954.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic722"
    origin = "15982.000000, 5265.000000, 4454.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "7"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_emf/wood_alt.mdl"
    targetname = "ent_prop_dynamic723"
    origin = "15982.000000, 5265.000000, 4954.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
    skin = "8"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/fence_cover001_256.mdl"
    targetname = "ent_prop_dynamic724"
    origin = "-14952.000000, -16080.000000, 7973.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic725"
    origin = "4842.000000, -15988.000000, 7821.000000"
    angles = "-90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic726"
    origin = "5738.000000, -16084.000000, 6925.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic727"
    origin = "5739.000000, -15988.000000, 6645.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic728"
    origin = "4842.000000, -16084.000000, 5749.000000"
    angles = "90.000000, -90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_512.mdl"
    targetname = "ent_prop_dynamic729"
    origin = "5738.000000, -15988.000000, 7040.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_512.mdl"
    targetname = "ent_prop_dynamic730"
    origin = "5738.000000, -16084.000000, 6528.000000"
    angles = "0.000000, 0.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic731"
    origin = "-14860.000000, 5200.000000, 4955.000000"
    angles = "0.000000, 90.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic732"
    origin = "-14956.000000, 4304.000000, 5851.000000"
    angles = "-90.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic733"
    origin = "-14982.000000, 5132.000000, 3200.000000"
    angles = "0.000000, 140.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic734"
    origin = "-14232.000000, 4632.000000, 2304.000000"
    angles = "90.000000, 50.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_128.mdl"
    targetname = "ent_prop_dynamic735"
    origin = "-14860.000000, 5200.000000, 4955.000000"
    angles = "0.000000, -90.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_128.mdl"
    targetname = "ent_prop_dynamic736"
    origin = "-14956.000000, 5200.000000, 4955.000000"
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
    targetname = "ent_prop_dynamic737"
    origin = "-13590.000000, -15947.000000, 7664.000000"
    angles = "43.770000, 117.098999, -143.789001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic738"
    origin = "-13590.000000, -16152.000000, 7662.000000"
    angles = "43.770000, -117.098999, 143.789001"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic739"
    origin = "14405.000000, 5254.000000, -70.000000"
    angles = "90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic740"
    origin = "13913.000000, 5630.000000, -70.000000"
    angles = "-90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic741"
    origin = "13852.000000, 5402.000000, -70.000000"
    angles = "90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic742"
    origin = "13299.000000, 5550.000000, -70.000000"
    angles = "90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic743"
    origin = "12746.000000, 5698.000000, -70.000000"
    angles = "90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic744"
    origin = "13360.000000, 5778.000000, -70.000000"
    angles = "-90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic745"
    origin = "12807.000000, 5926.000000, -70.000000"
    angles = "-90.000000, 75.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic746"
    origin = "15801.500000, 5007.000000, 724.000000"
    angles = "0.000000, -15.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic747"
    origin = "14913.000000, 5150.000000, -172.000000"
    angles = "90.000000, -105.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_512.mdl"
    targetname = "ent_prop_dynamic748"
    origin = "15778.500000, 4918.500000, 724.000000"
    angles = "0.000000, -15.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_straight_512.mdl"
    targetname = "ent_prop_dynamic749"
    origin = "15801.500000, 5007.000000, 1236.000000"
    angles = "0.000000, -15.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic750"
    origin = "14206.000000, 5429.000000, -75.000000"
    angles = "0.000000, 75.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic751"
    origin = "14082.000000, 5462.000000, -75.000000"
    angles = "0.000000, 75.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic752"
    origin = "13957.000000, 5495.000000, -75.000000"
    angles = "0.000000, 75.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic753"
    origin = "13832.000000, 5527.000000, -75.000000"
    angles = "0.000000, 45.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic754"
    origin = "13833.000000, 5531.000000, -75.000000"
    angles = "0.000000, -75.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic755"
    origin = "4560.000000, -16195.000000, 7785.000000"
    angles = "84.000000, 180.000000, 90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic756"
    origin = "-3300.000000, -16060.000000, 7458.000000"
    angles = "40.000000, 90.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic757"
    origin = "-2358.000000, -16000.000000, 7540.000000"
    angles = "-0.878000, 80.024002, -4.921000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic758"
    origin = "-2498.000000, -15972.000000, 7528.000000"
    angles = "85.078002, 0.173999, 100.151000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade3.mdl"
    targetname = "ent_prop_dynamic759"
    origin = "4335.000000, -16181.000000, 7645.000000"
    angles = "0.000000, -80.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "TurnOff");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic760"
    origin = "-14970.000000, 3000.000000, 5675.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic761"
    origin = "-14982.000000, 3000.000000, 5800.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic762"
    origin = "-14738.000000, 3000.000000, 5675.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic763"
    origin = "15786.000000, -5000.000000, 1721.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic764"
    origin = "15774.000000, -5000.000000, 1846.000000"
    angles = "-90.000000, 180.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic765"
    origin = "16018.000000, -5000.000000, 1721.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic766"
    origin = "4480.000000, -16164.000000, 7647.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/metal_pole001.mdl"
    targetname = "ent_prop_dynamic767"
    origin = "4480.000000, -16160.000000, 7773.000000"
    angles = "0.000000, 0.000000, -90.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_urban/wood_post002.mdl"
    targetname = "ent_prop_dynamic768"
    origin = "4480.000000, -15900.000000, 7647.000000"
    angles = "0.000000, 0.000000, 0.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);
EntFire(hTable.targetname, "StartGlowing");

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic769"
    origin = "16000.000000, 3000.000000, -105.000000"
    angles = "44.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic770"
    origin = "15815.000000, 3000.000000, -105.000000"
    angles = "-44.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic771"
    origin = "15860.000000, 4726.000000, 702.227500"
    angles = "-2.500000, 89.999000, -89.999000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_fairgrounds/track_curve_02.mdl"
    targetname = "ent_prop_dynamic772"
    origin = "15955.000000, 3870.000000, -232.000000"
    angles = "87.500000, 89.974998, 89.974998"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic773"
    origin = "16000.000000, 3570.000000, -106.000000"
    angles = "44.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
    model = "models/props_street/police_barricade4.mdl"
    targetname = "ent_prop_dynamic774"
    origin = "15815.000000, 3570.000000, -106.000000"
    angles = "-44.000000, 0.000000, 180.000000"
    disableshadows = "1"
    solid = "6"
}
SpawnEntityFromTable("prop_dynamic", hTable);