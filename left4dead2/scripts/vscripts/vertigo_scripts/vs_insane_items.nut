//Squirrel

printl("Loaded Insane Mode Items for Vertigo.");

local TOTAL_ITEMS = 36;
local hEntity = array(TOTAL_ITEMS, null);
local bNum = array(TOTAL_ITEMS, false);
local iR_Value = 0;
local hTable = {};

//========================================================================================================================
//TOTAL_ITEMS
//========================================================================================================================

hTable =
{
	targetname = "ent_item_spawn"
	origin = "8829.498 8588.613 1590.123"
	angles = "-52.297 20.787 1.567"
	disableshadows = "1"
}
hEntity[0] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8830.338 8589.464 1590.079"
	angles = "26.391 19.300 0.917"
	disableshadows = "1"
}
hEntity[1] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8863.155 8767.479 3602.358"
	angles = "-60.031 19.910 3.775"
	disableshadows = "1"
}
hEntity[2] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8863.820 8767.747 3602.789"
	angles = "85.481 58.721 34.721"
	disableshadows = "1"
}
hEntity[3] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8838.447 8769.841 3602.502"
	angles = "58.153 -32.158 1.224"
	disableshadows = "1"
}
hEntity[4] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6132.270 8033.413 5797.827"
	angles = "15.278 -163.278 178.488"
	disableshadows = "1"
}
hEntity[5] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6139.007 8028.845 5796.670"
	angles = "-54.395 5.121 1.701"
	disableshadows = "1"
}
hEntity[6] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6140.059 8028.965 5796.759"
	angles = "52.560 8.742 0.818"
	disableshadows = "1"
}
hEntity[7] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6146.857 8029.357 5797.637"
	angles = "-42.099 -178.614 177.018"
	disableshadows = "1"
}
hEntity[8] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8822.423 8345.312 7940.558"
	angles = "-57.100 -0.354 1.889"
	disableshadows = "1"
}
hEntity[9] = SpawnEntityFromTable("weapon_adrenaline_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "9246.971 8380.729 1548.140"
	angles = "0.021 -7.017 -0.300"
	disableshadows = "1"
}
hEntity[10] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "9226.775 8409.636 1548.128"
	angles = "0.020 -7.016 -0.427"
	disableshadows = "1"
}
hEntity[11] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8836.821 8741.547 3602.049"
	angles = "0.013 -7.032 -0.201"
	disableshadows = "1"
}
hEntity[12] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8869.467 8707.185 3602.062"
	angles = "0.005 -7.033 -0.068"
	disableshadows = "1"
}
hEntity[13] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6164.896 8035.475 5796.411"
	angles = "0.008 12.130 -0.310"
	disableshadows = "1"
}
hEntity[14] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6154.853 8036.701 5796.438"
	angles = "-0.087 1.624 0.336"
	disableshadows = "1"
}
hEntity[15] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6153.208 8023.877 5796.391"
	angles = "0.014 6.913 -0.280"
	disableshadows = "1"
}
hEntity[16] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6164.754 8023.195 5796.433"
	angles = "-0.008 4.644 0.111"
	disableshadows = "1"
}
hEntity[17] = SpawnEntityFromTable("weapon_defibrillator_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "9230.892 8385.393 1550.423"
	angles = "86.529 -146.947 34.750"
	disableshadows = "1"
}
hEntity[18] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "9251.957 8405.683 1550.438"
	angles = "86.674 -145.181 36.513"
	disableshadows = "1"
}
hEntity[19] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8872.544 8743.712 3604.268"
	angles = "85.964 -155.070 29.341"
	disableshadows = "1"
}
hEntity[20] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8842.544 8706.784 3604.366"
	angles = "86.952 -143.980 40.483"
	disableshadows = "1"
}
hEntity[21] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "5780.250, 8327.250, 5956.312"
	angles = "86.204 -151.570 31.398"
	disableshadows = "1"
}
hEntity[22] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "5797.530 8326.550 5956.326"
	angles = "86.261 -149.588 34.572"
	disableshadows = "1"
}
hEntity[23] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "5780.657 8346.634 5956.327"
	angles = "86.264 -149.848 34.546"
	disableshadows = "1"
}
hEntity[24] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "5797.139 8346.032 5956.290"
	angles = "85.859 -154.579 28.530"
	disableshadows = "1"
}
hEntity[25] = SpawnEntityFromTable("weapon_first_aid_kit_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8841.112 8602.828 1591.331"
	angles = "-53.159 100.911 90.000"
	disableshadows = "1"
}
hEntity[26] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8839.084 8606.173 1589.855"
	angles = "3.359 0.259 2.859"
	disableshadows = "1"
}
hEntity[27] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8836.942 8773.885 3602.053"
	angles = "-1.102 3.921 1.512"
	disableshadows = "1"
}
hEntity[28] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8832.059 8773.390 3603.322"
	angles = "34.115 33.345 87.474"
	disableshadows = "1"
}
hEntity[29] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8867.290 8773.889 3601.999"
	angles = "0.786 0.048 1.234"
	disableshadows = "1"
}
hEntity[30] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6153.028 8049.100 5796.328"
	angles = "-0.713 0.043 0.282"
	disableshadows = "1"
}
hEntity[31] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6148.308 8049.428 5796.482"
	angles = "-0.043 18.886 0.094"
	disableshadows = "1"
}
hEntity[32] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6144.252 8049.902 5796.481"
	angles = "0.024 -1.478 0.075"
	disableshadows = "1"
}
hEntity[33] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "6144.903 8056.884 5797.757"
	angles = "-83.401 179.853 -81.425"
	disableshadows = "1"
}
hEntity[34] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);
	
hTable =
{
	targetname = "ent_item_spawn"
	origin = "8823.630 8338.622 7940.255"
	angles = "-3.777 -3.401 -1.814"
	disableshadows = "1"
}
hEntity[35] = SpawnEntityFromTable("weapon_pain_pills_spawn", hTable);

//========================================================================================================================
//Random amount of items on the map.
//========================================================================================================================

for (local i = 1; i <= TOTAL_ITEMS/2; i++)
{
	iR_Value = RandomInt(0, 35);
	while (bNum[iR_Value])
	{
		iR_Value = RandomInt(0, 35);
	}
	bNum[iR_Value] = true;
	hEntity[iR_Value].Kill();
}