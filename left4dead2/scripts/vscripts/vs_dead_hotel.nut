// Squirrel

// Squirrel
// Library of Utils
// Author: Sw1ft >> https://steamcommunity.com/id/apgam1ng

/*===============================*\
 *       List of Constants       *
 *                               *
 *     CBaseEntity MoveType      *
\*===============================*/

const MOVETYPE_NONE = 0
const MOVETYPE_ISOMETRIC = 1
const MOVETYPE_WALK = 2
const MOVETYPE_STEP = 3
const MOVETYPE_FLY = 4
const MOVETYPE_FLYGRAVITY = 5
const MOVETYPE_VPHYSICS = 6
const MOVETYPE_PUSH = 7
const MOVETYPE_NOCLIP = 8
const MOVETYPE_LADDER = 9
const MOVETYPE_OBSERVER = 10
const MOVETYPE_CUSTOM = 11

/*===============================*\
 *       CBaseEntity Flags       *
\*===============================*/

const FL_ONGROUND = 1
const FL_DUCKING = 2
const FL_WATERJUMP = 4
const FL_ONTRAIN = 8
const FL_INRAIN = 16
const FL_FROZEN = 32
const FL_ATCONTROLS = 64
const FL_CLIENT = 128
const FL_FAKECLIENT = 256
const FL_INWATER = 512
const FL_FLY = 1024
const FL_SWIM = 2048
const FL_CONVEYOR = 4096
const FL_NPC = 8192
const FL_GODMODE = 16384
const FL_NOTARGET = 32768
const FL_AIMTARGET = 65536
const FL_PARTIALGROUND = 131072
const FL_STATICPROP = 262144
const FL_GRAPHED = 524288
const FL_GRENADE = 1048576
const FL_STEPMOVEMENT = 2097152
const FL_DONTTOUCH = 4194304
const FL_BASEVELOCITY = 8388608
const FL_WORLDBRUSH = 16777216
const FL_OBJECT = 33554432
const FL_KILLME = 67108864
const FL_ONFIRE = 134217728
const FL_DISSOLVING = 268435456
const FL_TRANSRAGDOLL = 536870912
const FL_UNBLOCKABLE_BY_PLAYER = 1073741824
const FL_FREEZING = 2147483648
const FL_EP2V_UNKNOWN1 = 2147483648

/*===============================*\
 *     CBasePlayer Buttons       *
\*===============================*/

const IN_ATTACK = 1
const IN_JUMP = 2
const IN_DUCK = 4
const IN_FORWARD = 8
const IN_BACK = 16
const IN_USE = 32
const IN_CANCEL = 64
const IN_LEFT = 128
const IN_RIGHT = 256
const IN_MOVELEFT = 512
const IN_MOVERIGHT = 1024
const IN_ATTACK2 = 2048
const IN_RUN = 4096
const IN_RELOAD = 8192
const IN_ALT1 = 16384
const IN_ALT2 = 32768
const IN_SCORE = 65536
const IN_SPEED = 131072
const IN_WALK = 262144
const IN_ZOOM = 524288
const IN_WEAPON1 = 1048576
const IN_WEAPON2 = 2097152
const IN_BULLRUSH = 4194304
const IN_GRENADE1 = 8388608
const IN_GRENADE2 = 16777216
const IN_ATTACK3 = 33554432

/*===============================*\
 *    CBaseTrigger SpawnFlags    *
\*===============================*/

const TR_CLIENTS = 1
const TR_NPCS = 2
const TR_PUSHABLES = 4
const TR_PHYSICS_OBJECTS = 8
const TR_ONLY_PLAYER_ALLY_NPCS = 16
const TR_ONLY_CLIENTS_IN_VEHICLES = 32
const TR_EVERYTHING = 64
const TR_ONLY_CLIENTS_NOT_IN_VEHICLES = 512
const TR_PHYSICS_DEBRIS = 1024
const TR_ONLY_NPCS_IN_VEHICLES = 2048
const TR_DISALLOW_BOTS = 4096
const TR_OFF = 8192

/*===============================*\
 *         Damage Type           *
\*===============================*/

const DMG_GENERIC = 0
const DMG_CRUSH = 1
const DMG_BULLET = 2
const DMG_SLASH = 4
const DMG_BURN = 8
const DMG_VEHICLE = 16
const DMG_FALL = 32
const DMG_BLAST = 64
const DMG_CLUB = 128
const DMG_SHOCK = 256
const DMG_SONIC = 512
const DMG_ENERGYBEAM = 1024
const DMG_PREVENT_PHYSICS_FORCE = 2048
const DMG_NEVERGIB = 4096
const DMG_ALWAYSGIB = 8192
const DMG_DROWN = 16384
const DMG_PARALYZE = 32768
const DMG_NERVEGAS = 65536
const DMG_POISON = 131072
const DMG_RADIATION = 262144
const DMG_DROWNRECOVER = 524288
const DMG_ACID = 1048576
const DMG_SLOWBURN = 2097152
const DMG_MELEE = 2097152
const DMG_REMOVENORAGDOLL = 4194304
const DMG_PHYSGUN = 8388608
const DMG_PLASMA = 16777216
const DMG_AIRBOAT = 33554432
const DMG_STUMBLE = 33554432
const DMG_DISSOLVE = 67108864
const DMG_BLAST_SURFACE = 134217728
const DMG_DIRECT = 268435456
const DMG_BUCKSHOT = 536870912
const DMG_HEADSHOT = 1073741824

/*===============================*\
 *     Director Enumerations     *
\*===============================*/

/* AllowBash Flags */
const ALLOW_BASH_ALL = 0
const ALLOW_BASH_NONE = 2
const ALLOW_BASH_PUSHONLY = 1

/* BOT Sense Flags */
const BOT_CANT_FEEL = 4
const BOT_CANT_HEAR = 2
const BOT_CANT_SEE = 1

/* BOT Command Flags */
const BOT_CMD_ATTACK = 0
const BOT_CMD_MOVE = 1
const BOT_CMD_RESET = 3
const BOT_CMD_RETREAT = 2

/* BotQuery Flags */
const BOT_QUERY_NOTARGET = 1

/* Infected Flags */
const INFECTED_FLAG_CANT_FEEL_SURVIVORS = 32768
const INFECTED_FLAG_CANT_HEAR_SURVIVORS = 16384
const INFECTED_FLAG_CANT_SEE_SURVIVORS = 8192

/* Finales and Scripted Panic Events Flags */
const FINALE_CUSTOM_CLEAROUT = 11
const FINALE_CUSTOM_DELAY = 10
const FINALE_CUSTOM_PANIC = 7
const FINALE_CUSTOM_SCRIPTED = 9
const FINALE_CUSTOM_TANK = 8
const FINALE_FINAL_BOSS = 5
const FINALE_GAUNTLET_1 = 0
const FINALE_GAUNTLET_2 = 3
const FINALE_GAUNTLET_BOSS = 16
const FINALE_GAUNTLET_BOSS_INCOMING = 15
const FINALE_GAUNTLET_ESCAPE = 17
const FINALE_GAUNTLET_HORDE = 13
const FINALE_GAUNTLET_HORDE_BONUSTIME = 14
const FINALE_GAUNTLET_START = 12
const FINALE_HALflTime_BOSS = 2
const FINALE_HORDE_ATTACK_1 = 1
const FINALE_HORDE_ATTACK_2 = 4
const FINALE_HORDE_ESCAPE = 6

/* Stages Flags */
const STAGE_CLEAROUT = 4
const STAGE_DELAY = 2
const STAGE_ESCAPE = 7
const STAGE_NONE = 9
const STAGE_PANIC = 0
const STAGE_RESULTS = 8
const STAGE_SETUP = 5
const STAGE_TANK = 1

/* HUD Flags */
const HUD_FAR_LEFT = 7
const HUD_FAR_RIGHT = 8
const HUD_FLAG_ALIGN_CENTER = 512
const HUD_FLAG_ALIGN_LEFT = 256
const HUD_FLAG_ALIGN_RIGHT = 768
const HUD_FLAG_ALLOWNEGTIMER = 128
const HUD_FLAG_AS_TIME = 16
const HUD_FLAG_BEEP = 4
const HUD_FLAG_BLINK = 8
const HUD_FLAG_COUNTDOWN_WARN = 32
const HUD_FLAG_NOBG = 64
const HUD_FLAG_NOTVISIBLE = 16384
const HUD_FLAG_POSTSTR = 2
const HUD_FLAG_PRESTR = 1
const HUD_FLAG_TEAM_INFECTED = 2048
const HUD_FLAG_TEAM_MASK = 3072
const HUD_FLAG_TEAM_SURVIVORS = 1024
const HUD_LEFT_BOT = 1
const HUD_LEFT_TOP = 0
const HUD_MID_BOT = 3
const HUD_MID_BOX = 9
const HUD_MID_TOP = 2
const HUD_RIGHT_BOT = 5
const HUD_RIGHT_TOP = 4
const HUD_SCORE_1 = 11
const HUD_SCORE_2 = 12
const HUD_SCORE_3 = 13
const HUD_SCORE_4 = 14
const HUD_SCORE_TITLE = 10
const HUD_SPECIAL_COOLDOWN = 4
const HUD_SPECIAL_MAPNAME = 6
const HUD_SPECIAL_MODENAME = 7
const HUD_SPECIAL_ROUNDTIME = 5
const HUD_SPECIAL_TIMER0 = 0
const HUD_SPECIAL_TIMER1 = 1
const HUD_SPECIAL_TIMER2 = 2
const HUD_SPECIAL_TIMER3 = 3
const HUD_TICKER = 6

/* Manage Timers Flags */
const TIMER_COUNTDOWN = 2
const TIMER_COUNTUP = 1
const TIMER_DISABLE = 0
const TIMER_SET = 4
const TIMER_STOP = 3

/* Shutdown Function Flags */
const SCRIPT_SHUTDOWN_EXIT_GAME = 4
const SCRIPT_SHUTDOWN_LEVEL_TRANSITION = 3
const SCRIPT_SHUTDOWN_MANUAL = 0
const SCRIPT_SHUTDOWN_ROUND_RESTART = 1
const SCRIPT_SHUTDOWN_TEAM_SWAP = 2

/* Spawn Direction Flags */
const SPAWNDIR_E = 4
const SPAWNDIR_N = 1
const SPAWNDIR_NE = 2
const SPAWNDIR_NW = 128
const SPAWNDIR_S = 16
const SPAWNDIR_SE = 8
const SPAWNDIR_SW = 32
const SPAWNDIR_W = 64

/* Spawn Rules */
const SCRIPTED_SPAWN_BATTLEFIELD = 2
const SCRIPTED_SPAWN_FINALE = 0
const SCRIPTED_SPAWN_POSITIONAL = 3
const SCRIPTED_SPAWN_SURVIVORS = 1
const SPAWN_ABOVE_SURVIVORS = 6
const SPAWN_ANYWHERE = 0
const SPAWN_BATTLEFIELD = 2
const SPAWN_BEHIND_SURVIVORS = 1
const SPAWN_FAR_AWAY_FROM_SURVIVORS = 5
const SPAWN_FINALE = 0
const SPAWN_IN_FRONT_OF_SURVIVORS = 7
const SPAWN_LARGE_VOLUME = 9
const SPAWN_NEAR_IT_VICTIM = 2
const SPAWN_NEAR_POSITION = 10
const SPAWN_NO_PREFERENCE = -1
const SPAWN_POSITIONAL = 3
const SPAWN_SPECIALS_ANYWHERE = 4
const SPAWN_SPECIALS_IN_FRONT_OF_SURVIVORS = 3
const SPAWN_SURVIVORS = 1
const SPAWN_VERSUS_FINALE_DISTANCE = 8

/* Trace Line Mask Flags */
const TRACE_MASK_ALL = -1
const TRACE_MASK_NPC_SOLID = 33701899
const TRACE_MASK_PLAYER_SOLID = 33636363
const TRACE_MASK_SHOT = 1174421507
const TRACE_MASK_VISIBLE_AND_NPCS = 33579137
const TRACE_MASK_VISION = 33579073

/* Weapon Upgrade Types */
const UPGRADE_INCENDIARY_AMMO = 0
const UPGRADE_EXPLOSIVE_AMMO = 1
const UPGRADE_LASER_SIGHT = 2

/* Zombie Types */
const ZOMBIE_BOOMER = 2
const ZOMBIE_CHARGER = 6
const ZOMBIE_HUNTER = 3
const ZOMBIE_JOCKEY = 5
const ZOMBIE_NORMAL = 0
const ZOMBIE_SMOKER = 1
const ZOMBIE_SPITTER = 4
const ZOMBIE_TANK = 8
const ZOMBIE_WITCH = 7
const ZSPAWN_MOB = 10
const ZSPAWN_MUDMEN = 12
const ZSPAWN_WITCHBRIDE = 11

/*===============================*\
 *   Enumerations & Constants    *
\*===============================*/

const MAXENTS = 2048
const MAXCLIENTS = 32
const ZOMBIE_NONE = -1
const ZOMBIE_SURVIVOR = 9
const TEAM_SPECTATOR = 1
const TEAM_SURVIVOR = 2
const TEAM_INFECTED = 3
const PHYS_BLOCKER_EVERYONE = 0
const PHYS_BLOCKER_SURVIVORS = 1
const PHYS_BLOCKER_SI = 2
const PHYS_BLOCKER_ALL_SI = 3
const LF_PREFIX = "lf_"
const CC_EMPTY_ARGUMENT = "__STRING_EMPTY_ARGUMENT"

enum Trace
{
	Mask_All = -1
	Mask_NPC_Solid = 33701899
	Mask_Player_Solid = 33636363
	Mask_Shot = 1174421507
	Mask_Visible_And_NPCS = 33579137
	Mask_Visible = 33579073
	Distance = 1000000000
	Type_Hit = 1
	Type_Pos = 2
}

enum Upgrade
{
	None = 0
	Incendiary = 1
	Explosive = 2
	Laser = 4
}

enum Team
{
	Everyone
	Survivor
	Infected
}

enum ButtonType
{
	Pressed
	Released
	Hold
}

/*===============================*\
 *           Classes             *
\*===============================*/

/** Class Entity
 * Signature: class CEntity(CBaseEntity entity)
*/

class CEntity
{
	constructor(ent)
	{
		if (typeof(ent) == "instance")
		{
			this.hEntity = ent;
			this.entidx = ent.GetEntityIndex();
		}
		else if (typeof(ent) == "integer")
		{
			this.hEntity = EntIndexToHScript(ent);
			this.entidx = ent;
		}
		else if (typeof(ent) == "string")
		{
			this.hEntity = Entities.FindByName(null, ent.tolower());
			if (this.hEntity != null) this.entidx = this.hEntity.GetEntityIndex();
		}
	}
	function IsEntityValid()
	{
		if (this.hEntity == null)
		{
			printl("[Class Entity] Entity not found");
			return false;
		}
		return true;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CEntity";
	hEntity = null;
	entidx = null;
}

/** Class Player
 * Signature: class CPlayer(CBasePlayer player)
*/

class CPlayer extends CEntity
{
	constructor(ent)
	{
		base.constructor(ent);
		this.hPlayer = hEntity;
		this.idx = entidx;
	}
	function IsPlayerValid()
	{
		if (this.hPlayer == null)
		{
			printl("[Class Player] Player not found");
			return false;
		}
		else if (!this.hPlayer.IsPlayer()) 
		{
			printl("[Class Player] Entity is not a player");
			return false;
		}
		return true;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CPlayer";
	hPlayer = null;
	idx = null;
}

/** Class Loop function
 * Signature: class CLoopFunction(string funcName, float refiretime)
*/

class CLoopFunction
{
	constructor(sFunction = null, flTime = null)
	{
		if (typeof(sFunction) == "string")
		{
			this.sFunction = sFunction;
			this.sTimer = LF_PREFIX + sFunction.tolower();
		}
		if (flTime != null) this.flTime = flTime;
	}
	function GetFunctionName()
	{
		return this.sFunction;
	}
	function GetTimerName()
	{
		return this.sTimer;
	}
	function GetRefireTime()
	{
		return this.flTime;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CLoopFunction";
	sFunction = null;
	sTimer = null;
	flTime = null;
}

/** Class On tick function
 * Signature: class COnTickFunction(string funcName, args)
*/

class COnTickFunction
{
	constructor(sFunction = null, aInputVars = [])
	{
		if (typeof(aInputVars) == "array")
		{
			local aArgs = [this];
			aArgs.extend(aInputVars);
			this.aInputVars = aArgs;
		}
		if (typeof(sFunction) == "string") this.sFunction = sFunction;
	}
	function GetInputVariables()
	{
		return this.aInputVars;
	}
	function GetFunctionHandle()
	{
		return compilestring("return " + this.sFunction)();
	}
	function GetFunctionName()
	{
		return this.sFunction;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "COnTickFunction";
	sFunction = null;
	aInputVars = null;
}

/** Class Chat command
 * Signature: class CChatCommand(string command, handle funcName, bool bInputPlayerHandle, bool bInputValue)
*/

class CChatCommand
{
	constructor(sCommand = null, hFunction = null, bInputPlayerHandle = false, bInputValue = false)
	{
		if (typeof(sCommand) == "string") this.sCommand = sCommand;
		if (typeof(hFunction) == "function") this.hFunction = hFunction;
		if (typeof(bInputPlayerHandle) == "bool") this.bInputPlayerHandle = bInputPlayerHandle;
		if (typeof(bInputValue) == "bool") this.bInputValue = bInputValue;
	}
	function GetCommand()
	{
		return this.sCommand;
	}
	function GetFunctionHandle()
	{
		return this.hFunction;
	}
	function GetInputPlayerHandle()
	{
		return this.bInputPlayerHandle;
	}
	function GetInputValue()
	{
		return this.bInputValue;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CChatCommand";
	sCommand = null;
	hFunction = null;
	bInputPlayerHandle = false;
	bInputValue = false;
}

/** Class Button
 * Signature: class CButtonListener(int button, string funcName, int pressType, int team)
*/

class CButtonListener
{
	constructor(iButton, sFunction, iType, iTeam)
	{
		if (typeof(iButton) == "integer") this.iButton = iButton;
		if (typeof(sFunction) == "string") this.sFunction = sFunction;
		if (typeof(iType) == "integer") this.iType = iType;
		if (typeof(iTeam) == "integer") this.iTeam = iTeam;
	}
	function GetCallingFunction()
	{
		return compilestring("return " + this.sFunction)();
	}
	function GetFunction() 
	{
		return this.sFunction;
	}
	function GetButton()
	{
		return this.iButton;
	}
	function GetTeam()
	{
		return this.iTeam;
	}
	function GetType()
	{
		return this.iType;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CButtonListener";
	sFunction = null;
	iButton = null;
	iTeam = null;
	iType = null;
}

/** Class User command
 * Signature: class CUserCommand(string command, handle funcName, bool bInputValue, bool bInputPlayerHandle)
*/

class CUserCommand
{
	constructor(sCommand = null, hCallingFunction = null, bInputValue = false, bInputPlayerHandle = true)
	{
		if (typeof(sCommand) == "string") this.sCommand = sCommand;
		if (typeof(hCallingFunction) == "function") this.hCallingFunction = hCallingFunction;
		if (typeof(bInputValue) == "bool") this.bInputValue = bInputValue;
		if (typeof(bInputPlayerHandle) == "bool") this.bInputPlayerHandle = bInputPlayerHandle;
	}
	function GetCallingFunction()
	{
		return this.hCallingFunction;
	}
	function GetInputPlayerHandle()
	{
		return this.bInputPlayerHandle;
	}
	function GetInputValue()
	{
		return this.bInputValue;
	}
	function GetCommand()
	{
		return this.sCommand;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CUserCommand";
	sCommand = null;
	hCallingFunction = null;
	bInputValue = false;
	bInputPlayerHandle = true;
}

/** Class ConVar
 * Signature: class CConVar(string name, string defaultValue)
*/

class CConVar
{
	constructor(sName, sDefaultValue)
	{
		this.sName = sName;
		this.sDefaultValue = sDefaultValue;
	}
	function GetName()
	{
		return this.sName;
	}
	function GetDefault()
	{
		return this.sDefaultValue;
	}
	function GetValue(bReturnFloat = false)
	{
		return bReturnFloat ? Convars.GetFloat(this.sName) : Convars.GetStr(this.sName);
	}
	function RestoreDefault()
	{
		this.sValue = this.sDefaultValue;
	}
	function SetValue(Value)
	{
		ServerCommand(format("setinfo %s %s", this.sName, Value.tostring()));
	}
	function AddChangeHook(hFunction = @(){})
	{
		if (this.bChangeHook) return printl("[Class ConVar] Already hooked");
		this.bChangeHook = true;
		this.bChangeHookFunc = hFunction;
	}
	function RemoveChangeHook()
	{
		if (!this.bChangeHook) return printl("[Class ConVar] Already unhooked");
		this.bChangeHook = false;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CConVar";
	sName = null;
	sDefaultValue = null;
	bChangeHook = false;
	bChangeHookFunc = null;
}

/** Class Timer
 * Signature: class CTimer(handle funcName, float callTime, array vars)
*/

class CTimer
{
	constructor(flCallTime, hFunction, aInputVars = [])
	{
		this.sIdentifier = UniqueString();
		this.hFunction = hFunction;
		this.flCallTime = flCallTime;
		if (typeof(aInputVars) == "array")
		{
			local aArgs = [this];
			aArgs.extend(aInputVars);
			this.aInputVars = aArgs;
		}
	}
	function GetFunctionHandle()
	{
		return this.hFunction;
	}
	function GetCallTime()
	{
		return this.flCallTime;
	}
	function GetInputVariables()
	{
		return this.aInputVars;
	}
	function GetIdentifier()
	{
		return this.sIdentifier;
	}
	function GetClassType()
	{
		return this.sClassType;
	}
	static sClassType = "CTimer";
	sIdentifier = null;
	flCallTime = null;
	hFunction = null;
	aInputVars = null;
}

/*===============================*\
 *          Variables            *
\*===============================*/

if (!("g_bLocalAutoBhop" in this)) g_bLocalAutoBhop <- false;

local bException;

/*===============================*\
 *           Tables              *
\*===============================*/

g_hCallBack <- {};
VMath <- {};
Math <- {};

g_hWeaponReplacement <-
{
	[1] = {classname = "weapon_pain_pills_spawn", origin = Vector(0, 0, -1), angles = Vector(), count = 1, spawnflags = 2},
	[2] = {classname = "weapon_adrenaline_spawn", angles = Vector(90, 0, 0), count = 1, spawnflags = 2},
	[3] = {classname = "weapon_first_aid_kit_spawn", origin = Vector(0, 0, 1), angles = Vector(90, 0, 0), count = 1, spawnflags = 2},
	[4] = {classname = "weapon_defibrillator_spawn", origin = Vector(0, 0, -1), angles = Vector(), count = 1, spawnflags = 2},
	[5] = {classname = "weapon_rifle_m60", origin = Vector(0, 0, 2), angles = Vector(0, 0, 90), spawnflags = 1}
}

/*===============================*\
 *           Arrays              *
\*===============================*/

if (!("g_bAutoBhop" in this)) g_bAutoBhop <- array(MAXCLIENTS + 1, true);

g_bAllowChangingCameraAngles <- array(MAXENTS + 1, true);
g_aLoopFunctions <- [];
g_aOnTickFunctions <- [];
g_aChatCommands <- [];
g_aButtonsListener <- [];
g_aUserCommands <- [];
g_aConVars <- [];
g_aTimers <- [];

/*===============================*\
 *         Functions             *
\*===============================*/

/** Print format
 * Signature: void printf(string message, args)
 * Credits: kapkan
*/

function printf(sMsg, ...)
{
	local aInputVars = [this, sMsg];
	aInputVars.extend(vargv);
	printl(format.acall(aInputVars));
}

/** Say format
 * Signature: void sayf(string message, args)
*/

function sayf(sMsg, ...)
{
	local aInputVars = [this, sMsg];
	aInputVars.extend(vargv);
	Say(null, format.acall(aInputVars), false);
}

/** Set a value for a console variable or return the current value
 * Signature: void/string/float cvar(string convar, any value, bool bReturnString)
*/

function cvar(sName = null, value = null, bReturnString = true)
{
	if (sName != null)
	{
		if (value != null) Convars.SetValue(sName.tostring(), value.tostring());
		else if (bReturnString) return Convars.GetStr(sName.tostring());
		else return Convars.GetFloat(sName.tostring());
	}
}

/** Draw a mark
 * Signature: void Mark(vector origin, float duration, vector min, vector max, int r, int g, int b, int alpha)
 * Credits: kapkan (the name of function)
*/

function Mark(vecPos, flDuration = 5.0, vecMins = Vector(2, 2, 2), vecMaxs = Vector(-2, -2, -2), iRed = 232, iGreen = 0, iBlue = 232, iAlpha = 255)
{
	DebugDrawBox(vecPos, vecMins, vecMaxs, iRed, iGreen, iBlue, iAlpha, flDuration);
}

/** Draw a line
 * Signature: void Line(Vector start, Vector end, float time, int red, int green, int blue)
*/

function Line(vecStart, vecEnd, flTime = 5.0, iRed = 232, iGreen = 0, iBlue = 232)
{
	DebugDrawLine(vecStart, vecEnd, iRed, iGreen, iBlue, false, flTime);
}

/** Is a function exist
 * Signature: bool IsFunctionExist(string funcName)
*/

function IsFunctionExist(sFunction)
{
	if (type(sFunction) != "string") return printl("[IsFunctionExist] Wrong type of variable");
	local aString = split(sFunction, "(");
	try
	{
		foreach (val in aString) if (typeof(compilestring("return " + val)()) == "function") return true;
		return false;
	}
	catch (val) return false;
}

/** Accept an entity input
 * Signature: void AcceptEntityInput(handle caller, string command, string value, handle activator, float delay)
*/

function AcceptEntityInput(hEntity, sInput, sValue = "", flDelay = 0.0, hActivator = null)
{
	if (hEntity == null) return printl("[AcceptEntityInput] Entity doesn't exist");
	DoEntFire("!self", sInput.tostring(), sValue.tostring(), flDelay.tofloat(), hActivator, hEntity);
}

/** Run a script code with the delay
 * Signature: void RunScriptCode(string script, float delay, handle activator, handle caller)
*/

function RunScriptCode(sScript, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (type(sScript) != "string") return printl("[RunScriptCode] Wrong type of variable");
	if (hCaller == null) EntFire((hActivator != null ? "!activator" : "worldspawn"), "RunScriptCode", sScript, flDelay, hActivator);
	else AcceptEntityInput(hCaller, "RunScriptCode", sScript, flDelay, hActivator);
}

/** Call a script function code with the delay
 * Signature: void CallScriptFunction(string function, float delay, handle activator, handle caller)
*/

function CallScriptFunction(sFunction, flDelay = 0.0, hActivator = null, hCaller = null)
{
	if (type(sFunction) != "string") return printl("[CallScriptFunction] Wrong type of variable");
	if (hCaller == null) EntFire((hActivator != null ? "!activator" : "worldspawn"), "CallScriptFunction", sFunction, flDelay, hActivator);
	else AcceptEntityInput(hCaller, "CallScriptFunction", sFunction, flDelay, hActivator);
}

/** Call a function with the delay and input variables
 * Signature: handle CreateTimer(float delay, handle funcName, array args)
*/

function CreateTimer(flDelay, hFunction, ...)
{
	if (typeof(hFunction) != "function") return printl("[CreateTimer] Wrong type of variable");
	local hTimer = CTimer(Time() + flDelay, hFunction, vargv);
	g_aTimers.append(hTimer);
	return hTimer;
}

/** Call a function in the next game tick with input variables
 * Signature: handle RunNextTickFunction(handle funcName, array args)
*/

function RunNextTickFunction(hFunction, ...)
{
	if (typeof(hFunction) != "function") return printl("[RunNextTickFunction] Wrong type of variable");
	local hTimer = CTimer(Time() + 0.0334, hFunction, vargv);
	g_aTimers.append(hTimer);
	return hTimer;
}

/** Emit a sound
 * Signature: void EmitSound(string soundFile)
*/

function EmitSound(vecPos, sSound, iRadius = 3000.0)
{
	local hTable =
	{
		origin = vecPos
		message = sSound
		radius = iRadius
		spawnflags = 48
		health = 100
	}
	local hEntity = SpawnEntityFromTable("ambient_generic", hTable);
	AcceptEntityInput(hEntity, "PlaySound");
	AcceptEntityInput(hEntity, "Kill");
}

/** Emit a sound to all players
 * Signature: void EmitSoundToAll(string soundScript)
*/

function EmitSoundToAll(sSound)
{
	local hPlayer = null;
	while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null) EmitSoundOnClient(sSound, hPlayer);
}

/** Is arrays equal
 * Signature: bool IsArraysEqual(array arr1, array arr2)
*/

function IsArraysEqual(a, _a)
{
	if (type(a) != "array" || type(_a) != "array") return printl("[IsArraysEqual] Expected type of variables 'array'");
	if (a.len() != _a.len()) return false;
	foreach (idx, val in a) if (_a[idx] != val) return false;
	return true;
}

/** Create an invisible wall
 * Signature: handle CreateInvisibleWall(string targetname, Vector origin, Vector maxs, Vector mins, int type, bool bEnable)
*/

function CreateInvisibleWall(sName, vecPos = null, vecMaxs = null, vecMins = null, iType = null, bEnable = true)
{
	if (vecPos == null) return printl("[CreateInvisibleWall] Wrong position");
	if (vecMaxs == null) vecMaxs = Vector(64, 64, 128);
	if (vecMins == null) vecMins = Vector(-64, -64, 0);
	if (iType == null) iType = PHYS_BLOCKER_EVERYONE;
	local hTable =
	{
		origin = vecPos
		targetname = sName.tostring()
		initialstate = bEnable.tointeger()
		blocktype = iType
	}
	local hEntity = SpawnEntityFromTable("env_physics_blocker", hTable);
	hEntity.__KeyValueFromVector("maxs", vecMaxs);
	hEntity.__KeyValueFromVector("mins", vecMins);
	hEntity.ValidateScriptScope();
	return hEntity;
}

/** Auto bunnyhop
 * Signature: void AutoBhop()
*/

function AutoBhop()
{
	foreach (idx, val in g_bAutoBhop)
	{
		local hPlayer = PlayerInstanceFromIndex(idx);
		if (hPlayer != null && val)
		{
			local buttons = NetProps.GetPropInt(hPlayer, "m_afButtonDisabled");
			if (NetProps.GetPropEntity(hPlayer, "m_hGroundEntity") == null)
			{
				if (NetProps.GetPropInt(hPlayer, "m_MoveType") != MOVETYPE_LADDER)
				{
					NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", buttons | IN_JUMP);
					continue;
				}
			}
			NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", buttons & ~IN_JUMP);
		}
	}
}

/** Local auto bunnyhop
 * Signature: void LocalAutoBhop(CBasePlayer player)
*/

function LocalAutoBhop(hPlayer)
{
	if (g_bLocalAutoBhop)
	{
		if (CPlayer(hPlayer).IsHost())
		{
			if (NetProps.GetPropEntity(hPlayer, "m_hGroundEntity") == null)
			{
				if (NetProps.GetPropInt(hPlayer, "m_MoveType") != MOVETYPE_LADDER)
				{
					ServerCommand("-jump");
					return;
				}
			}
			ServerCommand("+jump");
			CreateTimer(0.01, function(hPlayer){
				if (!(hPlayer.GetButtonMask() & IN_ALT1)) ServerCommand("-jump")
			}, hPlayer);
			// RunScriptCode("if (!(self.GetButtonMask() & IN_ALT1)) ServerCommand(\"-jump\")", 0.01, hPlayer);
		}
	}
}

/** Switch auto bunnyhop
 * Signature: void SwitchAutoBhop(CBasePlayer player)
*/

function SwitchAutoBhop(hPlayer)
{
	local idx = hPlayer.GetEntityIndex();
	if (g_bAutoBhop[idx])
	{
		local buttons = NetProps.GetPropInt(hPlayer, "m_afButtonDisabled");
		if (buttons & IN_JUMP) NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", buttons & ~IN_JUMP);
		EmitSoundOnClient("Buttons.snd11", hPlayer);
	}
	else EmitSoundOnClient("EDIT_TOGGLE_PLACE_MODE", hPlayer);
	g_bAutoBhop[idx] = !g_bAutoBhop[idx];
}

/** Switch local auto bunnyhop
 * Signature: void SwitchLocalAutoBhop(CBasePlayer player)
*/

function SwitchLocalAutoBhop(hPlayer)
{
	if (CPlayer(hPlayer).IsHost())
	{
		if (g_bLocalAutoBhop)
		{
			ServerCommand("-alt1");
			ServerCommand("bind SPACE +jump");
			EmitSoundOnClient("Buttons.snd11", hPlayer);
		}
		else
		{
			ServerCommand("alias +local_bhop \"+jump; +alt1\"");
			ServerCommand("alias -local_bhop \"-jump; -alt1\"");
			ServerCommand("bind SPACE +local_bhop");
			EmitSoundOnClient("EDIT_TOGGLE_PLACE_MODE", hPlayer);
		}
		g_bLocalAutoBhop = !g_bLocalAutoBhop;
	}
}

/** Encode a string
 * Signature: string EncodeString(string message, bool bStringToFile, string fileName)
*/

function EncodeString(sInput = null, bStringToFile = false, sFileName = null)
{
	if (typeof(sInput) != "string") return;
	local sOutput = "";
	foreach (symbol in sInput)
	{
		symbol = format("/x%X", symbol)
		if (symbol.find("FFFFFF") != null) symbol = "/x" + symbol.slice(8);
		sOutput += symbol;
	}
	if (bStringToFile)
	{
		if (typeof(sFileName) != "string") return;
		sOutput = format("\"%s\"", sOutput);
		sOutput += "\n";
		return StringToFile(sFileName, sOutput);
	}
	return sOutput;
}

/** Decode a string
 * Signature: string DecodeString(string message, bool bFileToString, string fileName)
*/

function DecodeString(sInput = null, bFileToString = false, sFileName = null)
{
	if (!bFileToString) if (typeof(sInput) != "string") return;
	if (bFileToString)
	{
		if (typeof(sFileName) != "string") return;
		sInput = compilestring("return " + FileToString(sFileName))();
	}
	local aInput = split(sInput, "/x");
	local sOutput = "";
	foreach (symbol in aInput)
		if (symbol != "/x")
			sOutput += compilestring("return 0x" + symbol)().tochar().tostring();
	return sOutput;
}

/** Teleport an entity
 * Signature: void TeleportEntity(vector Origin, vector Angles, vector Velocity, bool bNormalizedVector)
*/

function TeleportEntity(hPlayer = null, vecPos = Vector(), vecAng = Vector(), vecVel = Vector(), bNormalizedVector = false)
{
	if (hPlayer == null) return printl("[TeleportEntity] Invalid player");
	if (vecPos != null) hPlayer.SetOrigin(vecPos);
	if (vecAng != null) hPlayer.SetForwardVector(bNormalizedVector ? vecAng : VMath.Forward(vecAng));
	if (vecVel != null) hPlayer.SetVelocity(vecVel);
}

/** Replace a weapon spawn
 * Signature: void ReplaceWeaponSpawn(string weaponClass, string replaceClass, string weaponModel, vector Angles)
*/

function ReplaceWeaponSpawn(sWeaponClassname, sWeaponReplacement, sWeaponModel = null, vecAngles = null)
{
	if (sWeaponClassname == sWeaponReplacement) return printl("[ReplaceWeaponSpawn] Cannot replace the same entities");
	local iWeapons = 0;
	local ReplaceWeapon = function(hWeapon)
	{
		local iCount = null;
		local vecAng = null;
		local vecOrigin = Vector(0, 0, 0);
		local iSpawnFlags = null;
		for (local i = 1; i <= g_hWeaponReplacement.len(); i++)
		{
			if (sWeaponReplacement == g_hWeaponReplacement[i].classname)
			{
				foreach (key, val in g_hWeaponReplacement[i])
				{
					switch (key)
					{
						case "origin":
						{
							vecOrigin = val;
							break;
						}
						case "angles":
						{
							vecAng = val;
							break;
						}
						case "spawnflags":
						{
							iSpawnFlags = val;
							break;
						}
						case "count":
						{
							iCount = val;
							break;
						}
					}
				}
				break;
			}
		}
		if (vecAngles == null) vecAngles = Vector(0, RandomFloat(0.0, 360.0), 0);
		local hSpawnTable =
		{
			origin = hWeapon.GetOrigin() + vecOrigin
			angles = (vecAng == null ? Vector(hWeapon.GetAngles().x, hWeapon.GetAngles().y, hWeapon.GetAngles().z) : vecAng) + vecAngles
			spawnflags = (iSpawnFlags == null ? NetProps.GetPropInt(hWeapon, "m_spawnflags") : iSpawnFlags)
			count = (iCount == null ? NetProps.GetPropInt(hWeapon, "m_itemCount") : iCount)
		}
		SpawnEntityFromTable(sWeaponReplacement, hSpawnTable);
		hWeapon.Kill();
		iWeapons++;
	}
	for (local i = 1; i <= MAXENTS; i++)
	{
		local hWeapon = EntIndexToHScript(i);
		if (hWeapon != null)
		{
			if (sWeaponClassname == "weapon_spawn" && hWeapon.GetClassname() == "weapon_spawn")
			{
				if (sWeaponModel == null) ReplaceWeapon(hWeapon);
				else if (NetProps.GetPropString(hWeapon, "m_ModelName") == sWeaponModel) ReplaceWeapon(hWeapon);
			}
			else if (hWeapon.GetClassname() == sWeaponClassname) ReplaceWeapon(hWeapon);
		}
	}
	if (iWeapons > 0) printf("[ReplaceWeaponSpawn] Replaced weapons with classname '%s': %d", sWeaponClassname, iWeapons);
}

/** Convert the time to clock/timer format
 * Signature: string ToClock(float time, bool bMs)
*/

function ToClock(flTime = 0.0, bMs = true)
{
	local min = (flTime / 60).tointeger();
	local sec = (flTime % 60).tointeger();
	local ms = split(format("%.03f", flTime), ".")[1];
	local hr = (min / 60);
	if (hr < 1) hr = "";
	else if (hr >= 1)
	{
		min = (min % 60).tointeger();
		hr = hr < 10 ? "0" + hr + ":" : hr + ":";
	}
	return hr + (min < 10 ? "0" + min : min) + (sec < 10 ? ":0" + sec : ":" + sec) + (bMs ? "," + ms : "");
}

/** Get an angle between entities
 * Signature: float GetAngleBetweenEntities(handle entity, handle target)
*/

function GetAngleBetweenEntities(hEntity = null, hTarget = null, vecCorrection = Vector(), bMethod2D = false)
{
	if (hEntity == null || hTarget == null || !hEntity.IsValid() || !hTarget.IsValid()) return printl("[GetAngleBetweenEntities] Entity doesn't exist");
	local vecAng = VMath.Forward(hEntity.IsPlayer() ? hEntity.EyeAngles() : hEntity.GetAngles());
	local vecPos = hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin();
	local _vecPos = hTarget.IsPlayer() ? hTarget.EyePosition() : hTarget.GetOrigin();
	local vecDir = (_vecPos - vecPos) + vecCorrection;
	if (bMethod2D)
	{
		vecPos.z = 0.0;
		_vecPos.z = 0.0;
	}
	return Math.RadToDeg(acos(VMath.Dot(vecAng, VMath.Normalize(vecDir))));
}

/** Collect alive survivors into a table
 * Signature: table CollectAliveSurvivors()
*/

function CollectAliveSurvivors()
{
	local hPlayer; local tSurvivors = {};
	while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
	{
		if (hPlayer.IsSurvivor())
		{
			if (CPlayer(hPlayer).IsAlive() && !hPlayer.IsIncapacitated())
			{
				tSurvivors[hPlayer.GetEntityIndex()] <- hPlayer;
			}
		}
	}
	return tSurvivors;
}

/** Collect alive players into a table
 * Signature: table CollectAlivePlayers()
*/

function CollectAlivePlayers()
{
	local hPlayer; local tPlayers = {};
	while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
	{
		if (hPlayer.IsSurvivor())
		{
			if (CPlayer(hPlayer).IsAlive())
			{
				tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;
			}
		}
		else
		{
			if (NetProps.GetPropInt(hPlayer, "m_iObserverMode") == 0)
			{
				tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;
			}
		}
	}
	return tPlayers;
}

/** Collect all players into a table
 * Signature: array CollectAliveSurvivors()
*/

function CollectPlayers()
{
	local hPlayer; local tPlayers = {};
	while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
	{
		tPlayers[hPlayer.GetEntityIndex()] <- hPlayer;
	}
	return tPlayers;
}

/** Send a command to a bot
 * Signature: void SendCommandToBot(int command, handle bot, handle target, vector position)
*/

function SendCommandToBot(iCommand = BOT_CMD_MOVE, hBot = null, hTarget = null, vecPos = null)
{
	local tCommands =
	{
		cmd = iCommand
		bot = hBot
	}
	if (hTarget != null) tCommands.rawset("target", hTarget);
	if (vecPos != null) tCommands.rawset("pos", vecPos);
	CommandABot(tCommands);
}

/** Send a server command
 * Signature: void ServerCommand(string command, float delay)
*/

function ServerCommand(sCommand = "", flDelay = 0.0)
{
	local hServerCommand = SpawnEntityFromTable("point_servercommand", {});
	AcceptEntityInput(hServerCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(hServerCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Send a client command to all
 * Signature: void ClientCommandToAll(string command, float delay)
*/

function ClientCommandToAll(sCommand = "", flDelay = 0.0)
{
	local hBroadcastClientCommand = SpawnEntityFromTable("point_broadcastclientcommand", {});
	AcceptEntityInput(hBroadcastClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), null);
	AcceptEntityInput(hBroadcastClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Do trace line
 * Signature: handle/Vector DoTraceLine(vector Start, vector Direction, int hittype, float distance, int masktype, handle ignoreEntity)
*/

function DoTraceLine(vecStart = Vector(), vecDir = Vector(), tr_type = Trace.Type_Hit, tr_dist = Trace.Distance, tr_mask = Trace.Mask_All, tr_ignore = null)
{
    local ent = null;
    local vecEnd = vecStart + VMath.Scale(vecDir, tr_dist);
    local hTrace =
    {
        start = vecStart
        end = vecEnd
        ignore = tr_ignore
        mask = tr_mask
    }
    TraceLine(hTrace);
    if (tr_type == Trace.Type_Hit)
        if (hTrace.hit)
            if ((ent = hTrace.enthit).GetEntityIndex() != 0)
                return ent;
    if (tr_type == Trace.Type_Pos) return hTrace.pos;
    return null;
}

/*===============================*\
 *     ConVar Class Functions    *
\*===============================*/

/** Create a new console variable
 * Signature: ConVar CreateConVar(string name, string defaultValue)
*/

function CreateConVar(sName, sDefaultValue)
{
	foreach (cvar in g_aConVars) if (cvar.GetName() == sName) return printf("[CreateConVar] ConVar '%s' already created", sName);
	sDefaultValue = sDefaultValue.tostring();
	local cvar = CConVar(sName, sDefaultValue);
	local cvar_value = Convars.GetStr(sName);
	ServerCommand(format("setinfo %s \"%s\"", sName, sDefaultValue));
	printf("[CreateConVar] ConVar '%s' with default value '%s' has been created", sName, sDefaultValue);
	g_aConVars.append(cvar);
	if (cvar_value != null)
		if (sDefaultValue != cvar_value)
			cvar.SetValue(cvar_value);
	return cvar;
}

/** Find a ConVar
 * Signature: ConVar FindConVar(string name)
*/

function FindConVar(sName)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == sName)
			return cvar;
	}
	return null;
}

/** Get a ConVar string
 * Signature: string GetConVarBool(ConVar cvar)
*/

function GetConVarString(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue();
		}
	}
}
/** Get a ConVar bool
 * Signature: bool GetConVarBool(ConVar cvar)
*/

function GetConVarBool(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			if (cvar.GetValue() == "1" || cvar.GetValue() == "true") return true;
			return false;
		}
	}
}

/** Get a ConVar integer
 * Signature: int GetConVarBool(ConVar cvar)
*/

function GetConVarInt(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue(true).tointeger();
		}
	}
}

/** Get a ConVar float
 * Signature: float GetConVarBool(ConVar cvar)
*/

function GetConVarFloat(convar)
{
	foreach (cvar in g_aConVars)
	{
		if (cvar.GetName() == convar.GetName())
		{
			return cvar.GetValue(true).tofloat();
		}
	}
}

/*===============================*\
 *     Entity Class Functions    *
\*===============================*/

/** Attach an entity
 * Signature: void CEntity(CBaseEntity entity).AttachEntity(handle target, string attachment, float delay)
*/

function CEntity::AttachEntity(hTarget, sAttachment = null, flDelay = 0.0)
{
	if (!IsEntityValid()) return;
	if (hTarget == null) return printl("[AttachEntity] Target entity doesn't exist");
	AcceptEntityInput(hTarget, "SetParent", "!activator", flDelay, hEntity);
	if (sAttachment != null) AcceptEntityInput(hTarget, "SetParentAttachment", sAttachment, flDelay, hEntity);
}

/** Remove an attachment
 * Signature: void CEntity(CBaseEntity entity).RemoveAttachment(handle target, float delay)
*/

function CEntity::RemoveAttachment(hTarget, flDelay = 0.0)
{
	if (!IsEntityValid()) return;
	if (hTarget == null) return printl("[RemoveAttachment] Target entity doesn't exist");
	AcceptEntityInput(hTarget, "ClearParent", "", flDelay, hEntity);
}

/** Get a distance between two entities
 * Signature: void CEntity(CBaseEntity entity).GetDistance(handle target, bool bMethod2D, bool bSquared)
*/

function CEntity::GetDistance(hTarget, bMethod2D = false, bSquared = false)
{
	if (!IsEntityValid()) return;
	if (hTarget == null) return printl("[GetDistance] Target entity doesn't exist");
	local flDistance;
	if (bSquared) flDistance = VMath.MagnitudeSqr(hEntity.GetOrigin() - hTarget.GetOrigin(), bMethod2D);
	else flDistance = VMath.Magnitude(hEntity.GetOrigin() - hTarget.GetOrigin(), bMethod2D);
	return flDistance;
}

/** Hurt an entity
 * Signature: void CEntity(CBaseEntity entity).Hurt(float damage, int damagetype, handle attacker)
*/

function CEntity::Hurt(flDamage = 0.0, iDamageType = DMG_GENERIC, hAttacker = null)
{
	if (!IsEntityValid()) return;
	hEntity.TakeDamage(flDamage, iDamageType, hAttacker == null ? hEntity : hAttacker);
}

/** Set entity angles by steps
 * Signature: void CEntity(CBaseEntity entity).SetAnglesBySteps(vector Angles, int steps, float deltaTime)
*/

function CEntity::SetAnglesBySteps(vecAng, iSteps, flDeltaTime = 0.01)
{
	if (!IsEntityValid()) return;
	local flTime = 0.0;
	local flDeltaYaw = 0.0;
	local flPitch = hEntity.IsPlayer() ? hEntity.EyeAngles().x : hEntity.GetAngles().x;
	local flYaw = hEntity.IsPlayer() ? hEntity.EyeAngles().y : hEntity.GetAngles().y;
	local flRoll = hEntity.IsPlayer() ? hEntity.EyeAngles().z : hEntity.GetAngles().z;
	local flYawAngle = vecAng.y;
	if (flYaw < 0)
	{
		flYaw *= -1;
		flYaw = 360.0 - flYaw;
	}
	if (flYawAngle < 0)
	{
		flYawAngle *= -1;
		flYawAngle = 360.0 - flYawAngle;
	}
	local flDifference = flYawAngle - flYaw;
	local flDeltaPitch = (vecAng.x - flPitch) / iSteps;
	local flDeltaRoll = (vecAng.z - flRoll) / iSteps;
	if (flDifference < -180.0) flDeltaYaw = ((360.0 - flYaw) + vecAng.y) / iSteps;
	else flDeltaYaw = flDifference / iSteps;
	for (local i = 0; i < iSteps; i++)
	{
		flPitch += flDeltaPitch;
		flYaw += flDeltaYaw;
		flRoll += flDeltaRoll;
		flTime += flDeltaTime;
		if (hEntity.IsPlayer())
		{
			CreateTimer(flTime, function(hEntity, vecAngles){
				if (g_bAllowChangingCameraAngles[hEntity.GetEntityIndex()])
					TeleportEntity(hEntity, null, vecAngles, null);
			}, hEntity, Vector(flPitch, flYaw, flRoll));
		}
		else
		{
			CreateTimer(flTime, function(hEntity, vecAngles){
				if (g_bAllowChangingCameraAngles[hEntity.GetEntityIndex()])
					hEntity.__KeyValueFromVector("angles", vecAngles);
			}, hEntity, Vector(flPitch, flYaw, flRoll));
		}
		if (i == iSteps - 1)
		{
			CreateTimer(flTime, function(hEntity){
				if ("SetCameraAnglesCompleted" in getroottable())
					SetCameraAnglesCompleted(hEntity);
			}, hEntity);
		}
		// if (hEntity.IsPlayer()) RunScriptCode(format("if (g_bAllowChangingCameraAngles[self.GetEntityIndex()]) TeleportEntity(self, null, Vector(%f, %f, %f), null)", flPitch, flYaw, flRoll), flTime, hEntity);
		// else RunScriptCode(format("if (g_bAllowChangingCameraAngles[self.GetEntityIndex()]) self.__KeyValueFromVector(\"angles\", Vector(%f, %f, %f))", flPitch, flYaw, flRoll), flTime, hEntity);
		// if (i == iSteps - 1) RunScriptCode("if (\"SetCameraAnglesCompleted\" in this) SetCameraAnglesCompleted(self)", flTime, hEntity);
	}
}

/** Set an entity angles to an entity
 * Signature: void CEntity(CBaseEntity entity).SetAnglesToEntity(handle entity, vector vecCorrection)
*/

function CEntity::SetAnglesToEntity(hTarget, vecCorrection = Vector())
{
    if (!IsEntityValid()) return;
	if (hTarget == null) return printl("[SetAnglesToEntity] Target entity doesn't exist");
    local vecDir = vecCorrection;
    if (hTarget.IsPlayer()) vecDir += hTarget.EyePosition() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
    else vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
    TeleportEntity(hEntity, null, VMath.VectorToQAngle(VMath.Normalize2(vecDir)), null);
}

/** Get an entity angles to anentity
 * Signature: void CEntity(CBaseEntity entity).GetAnglesToEntity(handle entity)
*/

function CEntity::GetAnglesToEntity(hTarget, vecCorrection = Vector())
{
    if (!IsEntityValid()) return;
	if (hTarget == null) return printl("[GetAnglesToEntity] Target entity doesn't exist");
	local vecDir = vecCorrection;
    if (hTarget.IsPlayer()) vecDir += hTarget.EyePosition() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
    else vecDir += hTarget.GetOrigin() - (hEntity.IsPlayer() ? hEntity.EyePosition() : hEntity.GetOrigin());
    return VMath.VectorToQAngle(VMath.Normalize2(vecDir));
}

/** Get a position to ground
 * Signature: vector CEntity(CBaseEntity entity).GetPositionToGround()
*/

function CEntity::GetPositionToGround()
{
    if (!IsEntityValid()) return;
	return DoTraceLine(hEntity.GetOrigin(), VMath.Forward(QAngle(90, 0, 0)), Trace.Type_Pos, Trace.Distance, Trace.Mask_Shot, hEntity);
}

/** Get a distance to ground
 * Signature: vector CEntity(CBaseEntity entity).GetDistanceToGround()
*/

function CEntity::GetDistanceToGround()
{
    if (!IsEntityValid()) return;
	return VMath.Magnitude(hEntity.GetOrigin() - DoTraceLine(hEntity.GetOrigin(), VMath.Forward(QAngle(90, 0, 0)), Trace.Type_Pos, Trace.Distance, Trace.Mask_Shot, hEntity));
}

/** Get entity's script scope table
 * Signature: table CEntity(CBaseEntity entity).GetScriptScope()
*/

function CEntity::GetScriptScope()
{
	if (!IsEntityValid()) return;
	hEntity.ValidateScriptScope();
	return hEntity.GetScriptScope();
}

/** Get entity's script scope variable
 * Signature: any CEntity(CBaseEntity entity).GetScriptScopeVar(any key)
*/

function CEntity::GetScriptScopeVar(key)
{
	if (!IsEntityValid()) return;
	hEntity.ValidateScriptScope();
	if (CEntity(hEntity).KeyInScriptScope(key)) return CEntity(hEntity).GetScriptScope()[key];
}

/** Set entity's script scope variable
 * Signature: void CEntity(CBaseEntity entity).SetScriptScopeVar(any key, any variable)
*/

function CEntity::SetScriptScopeVar(key, var)
{
	if (!IsEntityValid()) return;
	hEntity.ValidateScriptScope();
	hEntity.GetScriptScope()[key] <- var;
}

/** If a key in entity's script scope
 * Signature: bool CEntity(CBaseEntity entity).KeyInScriptScope(any key)
*/

function CEntity::KeyInScriptScope(key)
{
	if (!IsEntityValid()) return;
	hEntity.ValidateScriptScope();
	if (key in CEntity(hEntity).GetScriptScope()) return true;
	return false;
}

/** Remove entity's script scope key
 * Signature: void CEntity(CBaseEntity entity).RemoveScriptScopeKey(any key)
*/

function CEntity::RemoveScriptScopeKey(key)
{
	if (!IsEntityValid()) return;
	hEntity.ValidateScriptScope();
	if (CEntity(hEntity).KeyInScriptScope(key)) delete CEntity(hEntity).GetScriptScope()[key];
}

/*===============================*\
 *     Player Class Functions    *
\*===============================*/

/** Send a client command
 * Signature: void CPlayer(CBasePlayer player).ClientCommand(string command, float delay)
*/

function CPlayer::ClientCommand(sCommand = "", flDelay = 0.0)
{
	if (!IsPlayerValid()) return;
	local hClientCommand = SpawnEntityFromTable("point_clientcommand", {});
	AcceptEntityInput(hClientCommand, "Command", sCommand.tostring(), flDelay.tofloat(), hPlayer);
	AcceptEntityInput(hClientCommand, "Kill", "", flDelay.tofloat(), null);
}

/** Press a button
 * Signature: void CPlayer(CBasePlayer player).PressButton(int button, float releasedelay)
*/

function CPlayer::PressButton(iButton = 0, flReleaseDelay = 0.01)
{
	if (!IsPlayerValid()) return;
	NetProps.SetPropInt(hPlayer, "m_afButtonForced", NetProps.GetPropInt(hPlayer, "m_afButtonForced") | iButton);
	CreateTimer(flReleaseDelay, function(hPlayer, iButton){
		NetProps.SetPropInt(hPlayer, "m_afButtonForced", NetProps.GetPropInt(hPlayer, "m_afButtonForced") & ~iButton)
	}, hPlayer, iButton);
	// RunScriptCode(format("NetProps.SetPropInt(self, \"m_afButtonForced\", NetProps.GetPropInt(self, \"m_afButtonForced\") & ~%d)", iButton), flReleaseDelay, hPlayer);
}

/** Is a player the host
 * Signature: bool CPlayer(CBasePlayer player).IsHost()
*/

function CPlayer::IsHost()
{
	if (!IsPlayerValid()) return;
	local hGameRules = Entities.FindByClassname(null, "terror_gamerules");
	if (hGameRules == null) return false;
	if (hPlayer == Ent("!player") && NetProps.GetPropInt(hGameRules, "m_bIsDedicatedServer") == 0) return true;
	return false;
}

/** Is a player alive
 * Signature: bool CPlayer(CBasePlayer player).IsAlive()
*/

function CPlayer::IsAlive()
{
	if (!IsPlayerValid()) return;
	if (hPlayer.IsDead() || hPlayer.IsDying()) return false;
	return true;
}

/** Kill a player
 * Signature: void CPlayer(CBasePlayer player).Kill(handle attacker, int damageType)
*/

function CPlayer::Kill(hAttacker = null, iDamageType = DMG_GENERIC)
{
	if (!IsPlayerValid()) return;
	if (hPlayer.IsSurvivor()) hPlayer.SetReviveCount(2);
	CEntity(hPlayer).Hurt((1 << 30), DMG_GENERIC, hAttacker == null ? hPlayer : hAttacker);
}

/** Is a player attacked by a special infected
 * Signature: bool CPlayer(CBasePlayer player).IsAttackedBySI()
*/

function CPlayer::IsAttackedBySI()
{
	if (!IsPlayerValid()) return;
	if (hPlayer.IsSurvivor())
		if (NetProps.GetPropEntity(hPlayer, "m_pounceAttacker") != null ||
			NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker") != null ||
			NetProps.GetPropEntity(hPlayer, "m_pummelAttacker") != null ||
			NetProps.GetPropEntity(hPlayer, "m_carryAttacker") != null ||
			NetProps.GetPropEntity(hPlayer, "m_tongueOwner") != null)
			return true;
		return false;
	printl("[IsAttackedBySI] Player is not a survivor");
}

/** Get a special infected attacked a player
 * Signature: handle CPlayer(CBasePlayer player).IsAttackedBySI()
*/

function CPlayer::GetAttackerSI()
{
	if (!IsPlayerValid()) return;
	if (hPlayer.IsSurvivor())
	{
		if (NetProps.GetPropEntity(hPlayer, "m_pounceAttacker") != null) return NetProps.GetPropEntity(hPlayer, "m_pounceAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker") != null) return NetProps.GetPropEntity(hPlayer, "m_jockeyAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_pummelAttacker") != null) return NetProps.GetPropEntity(hPlayer, "m_pummelAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_carryAttacker") != null) return NetProps.GetPropEntity(hPlayer, "m_carryAttacker");
		else if (NetProps.GetPropEntity(hPlayer, "m_tongueOwner") != null) return NetProps.GetPropEntity(hPlayer, "m_tongueOwner");
		return null;
	}
	printl("[IsAttackedBySI] Player is not a survivor");
}

/** Is a player a special infected
 * Signature: bool CPlayer(CBasePlayer player).IsSpecialInfected()
*/

function CPlayer::IsSpecialInfected()
{
	if (!IsPlayerValid()) return;
	if (NetProps.GetPropInt(hPlayer, "m_iTeamNum") == 3)
	{
		local iType = hPlayer.GetZombieType();
		if (iType == ZOMBIE_SMOKER || iType == ZOMBIE_BOOMER || iType == ZOMBIE_HUNTER || iType == ZOMBIE_SPITTER || iType == ZOMBIE_JOCKEY || iType == ZOMBIE_CHARGER) return true;
		return false;
	}
	printl("[IsSpecialInfected] Player is not an infected");
}

/** Set player ammo
 * Signature: void CPlayer(CBasePlayer player).SetAmmo(int slot, int clips, int ammo, int upgradeammo)
*/

function CPlayer::SetAmmo(iSlot, iClip = null, iAmmo = null, iUpgrade = null)
{
	if (!IsPlayerValid()) return;
	if (iClip == null) return printl("[SetAmmo] Clips not specified");
	local tInv = {};
	GetInvTable(hPlayer, tInv);
	if (iSlot == 1)
	{
		if (!("slot1" in tInv) || tInv.slot1.GetClassname() == "weapon_melee") return printl("[SetAmmo] Invalid weapon");
		else NetProps.SetPropInt(tInv.slot1, "m_iClip1", iClip);
	}
	else if (iSlot == 0)
	{
		if (!("slot0" in tInv)) return printl("[SetAmmo] Invalid weapon");
		local hWeapon = tInv.slot0;
		NetProps.SetPropInt(hWeapon, "m_iClip1", iClip);
		if (iAmmo != null)
		{
			NetProps.SetPropIntArray(hPlayer, "m_iAmmo", iAmmo, NetProps.GetPropInt(hWeapon, "m_iPrimaryAmmoType"));
			if (iUpgrade != null)
			{
				local iUpgradeType = NetProps.GetPropInt(hWeapon, "m_upgradeBitVec");
				if (iUpgradeType & Upgrade.None || iUpgradeType & Upgrade.Laser) return printl("[SetAmmo] No upgrade ammo found"); 
				NetProps.SetPropInt(hWeapon, "m_nUpgradedPrimaryAmmoLoaded", iUpgrade);
			}
		}
		return;
	}
	else printl("[SetAmmo] Wrong inventory slot");
}

/** Do trace Line
 * Signature: handle/Vector CPlayer(CBasePlayer player).DoTraceLine(int hittype, float distance, int masktype)
*/

function CPlayer::DoTraceLine(tr_type = Trace.Type_Hit, tr_dist = Trace.Distance, tr_mask = Trace.Mask_All)
{
	if (!IsPlayerValid()) return;
	local ent = null;
	local vecStart = hPlayer.EyePosition();
	local vecEnd = vecStart + VMath.Scale(VMath.Forward(hPlayer.EyeAngles()), tr_dist);
	local hTrace =
	{
		start = vecStart
		end = vecEnd
		ignore = hPlayer
		mask = tr_mask
	}
	TraceLine(hTrace);
	if (tr_type == Trace.Type_Hit)
		if (hTrace.hit)
			if ((ent = hTrace.enthit).GetEntityIndex() != 0)
				return ent;
	if (tr_type == Trace.Type_Pos) return hTrace.pos;
	return null;
}

/*===============================*\
 *        Hook Functions         *
\*===============================*/

/* Game event hook */

/** Hook game event
 * Signature: void HookEvent(string event, handle callFunc)
*/

function HookEvent(sEvent = null, hFunction = null)
{
	if (typeof(sEvent) != "string" || typeof(hFunction) != "function") return printl("[HookEvent] Wrong type of variable");
	if (!(sEvent in g_hCallBack))
	{
		g_hCallBack[sEvent] <- {};
		g_hCallBack[sEvent]["CallBack_Functions"] <- [];
		g_hCallBack[sEvent]["OnGameEvent_" + sEvent] <- function(tParams)
		{
			foreach (func in g_hCallBack[sEvent]["CallBack_Functions"])
			{
				if ("userid" in tParams) tParams._player <- GetPlayerFromUserID(tParams.userid);
				if ("victim" in tParams) tParams._victim <- GetPlayerFromUserID(tParams.victim);
				if ("entityid" in tParams) tParams._entity <- EntIndexToHScript(tParams.entityid);
				if ("subject" in tParams) tParams._subject <- GetPlayerFromUserID(tParams.subject);
				if ("attacker" in tParams) tParams._attacker <- GetPlayerFromUserID(tParams.attacker);
				func = compilestring("return " + func)();
				func(tParams);
			}
		}
	}
	if (hFunction != null)
	{
		local sFunction = null;
		foreach (key, val in getroottable())
		{
			if (val == hFunction)
			{
				sFunction = key;
				break;
			}
		}
		if (sFunction == null) return printl("[HookEvent] The specified function was not found in the root table");
		foreach (func in g_hCallBack[sEvent]["CallBack_Functions"]) if (func == sFunction) return printf("[HookEvent] Event hook function '%s' already registered", sFunction);
		printf("[HookEvent] Event hook function '%s' has been registered for the game event '%s'", sFunction, sEvent);
		g_hCallBack[sEvent]["CallBack_Functions"].append(sFunction);
	}
	else return printl("[HookEvent] Invalid function specified");
	__CollectEventCallbacks(g_hCallBack[sEvent], "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
}

/** Unhook game event or function
 * Signature: void UnhookEvent(string event, handle callFunc)
*/

function UnhookEvent(sEvent = null, hFunction = null)
{
	if (typeof(sEvent) != "string") return printl("[UnhookEvent] Wrong type of variable");
	if (sEvent in g_hCallBack)
	{
		if (hFunction != null)
		{
			if (typeof(hFunction) != "function") return printl("[UnhookEvent] Wrong type of variable");
			local sFunction = null;
			foreach (key, val in getroottable())
			{
				if (val == hFunction)
				{
					sFunction = key;
					break;
				}
			}
			if (sFunction == null) return printl("[UnhookEvent] The specified function was not found in the root table");
			foreach (idx, func in g_hCallBack[sEvent]["CallBack_Functions"])
			{
				if (func == sFunction)
				{
					printf("[UnhookEvent] Event hook function '%s' has been unhooked for the game event '%s'", sFunction, sEvent);
					return g_hCallBack[sEvent]["CallBack_Functions"].remove(idx);
				}
			}
			return printf("[UnhookEvent] Event hook function '%s' not registered", sFunction);
		}
		else
		{
			printf("[UnhookEvent] Game event '%s' has been unhooked", sEvent);
			return delete g_hCallBack[sEvent];
		}
	}
	printf("[UnhookEvent] Event '%s' not registered", sEvent); 
}

/** Unhook all game events
 * Signature: void UnhookAllEvents()
*/

function UnhookAllEvents()
{
	foreach (event, val in g_hCallBack) delete g_hCallBack[event];
	printl("[UnhookAllEvents] All events have been unhooked");
}

/** Print callback table
 * Signature: void PrintCallBackTable(bool bDeepPrint)
*/

function PrintCallBackTable(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~~~~ g_hCallBack Table ~~~~~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (event, val in g_hCallBack)
	{
		printl("Game Event = " + event);
		if (bDeepPrint)
		{
			printl("{");
			foreach (key, value in g_hCallBack[event])
			{
				printl("\t" + key + " = " + value);
				if (key == "CallBack_Functions" && key.len() != 0)
				{
					printl("\t{");
					foreach (idx, func in g_hCallBack[event][key]) printl("\t\t" + func);
					printl("\t}");
				}
			}
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/* Registration of functions called after a certain interval */

/** Register loop function
 * Signature: void RegisterLoopFunction(string callFunc, float refireTime)
*/

function RegisterLoopFunction(sFunction = null, flRefireTime = 0.01)
{
	if (typeof(sFunction) != "string") return printl("[RegisterLoopFunction] Wrong type of variable");
	if (!IsFunctionExist(sFunction)) return printf("[RegisterLoopFunction] Function '%s' doesn't exist", sFunction);
	if (sFunction.find("(") != null) sFunction = split(sFunction, "(")[0];
	local bFound = false;
	foreach (func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			bFound = true;
			break;
		}
	}
	if (bFound) return printf("[RemoveLoopFunction] Function '%s' already registered", sFunction);
	local sName = LF_PREFIX + sFunction.tolower();
	local hTimer = Entities.FindByName(null, sName);
	if (hTimer == null)
	{
		hTimer = SpawnEntityFromTable("logic_script", {targetname = sName});
		CEntity(hTimer).SetScriptScopeVar("Think", function(){
			CallScriptFunction(sFunction, flRefireTime, self, self);
			CallScriptFunction("Think", flRefireTime, self, self);
		});
		CallScriptFunction(sFunction, 0.01, hTimer, hTimer);
		CallScriptFunction("Think", 0.01, hTimer, hTimer);
		g_aLoopFunctions.append(CLoopFunction(sFunction, flRefireTime));
		printf("[RegisterLoopFunction] Function '%s' with refire time '%.02f' has been registered", sFunction, flRefireTime);
	}
	else
	{
		hTimer.Kill();
		RegisterLoopFunction(sFunction, flRefireTime);
	}
}

/** Remove loop function
 * Signature: void RemoveLoopFunction(string callFunc)
*/

function RemoveLoopFunction(sFunction = null)
{
	if (typeof(sFunction) != "string") return printl("[RemoveLoopFunction] Wrong type of variable");
	if (!IsFunctionExist(sFunction)) return printf("[RemoveLoopFunction] Function '%s' doesn't exist", sFunction);
	local bFound = false;
	foreach (func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			bFound = true;
			break;
		}
	}
	if (!bFound) return printf("[RemoveLoopFunction] Function '%s' not registered", sFunction);
	foreach (idx, func in g_aLoopFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			printf("[RemoveLoopFunction] Function '%s' has been removed", sFunction);
			local hTimer = Entities.FindByName(null, func.GetTimerName());
			if (hTimer != null) hTimer.Kill();
			return g_aLoopFunctions.remove(idx);
		}
	}
}

/** Is loop function registered
 * Signature: bool IsLoopFunctionRegistered(string callFunc)
*/

function IsLoopFunctionRegistered(sFunction = null)
{
    if (typeof(sFunction) != "string") return printl("[IsLoopFunctionRegistered] Wrong type of variable");
    if (!IsFunctionExist(sFunction)) return printf("[IsLoopFunctionRegistered] Function '%s' doesn't exist", sFunction);
    foreach (func in g_aLoopFunctions) if (func.GetFunctionName() == sFunction) return true;
    return false;
}

/** Print loop functions
 * Signature: void PrintLoopFunctions(bool bDeepPrint)
*/

function PrintLoopFunctions(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~~ g_aLoopFunctions Array ~~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (func in g_aLoopFunctions)
	{
		printl("Function = " + func.GetFunctionName());
		if (bDeepPrint)
		{
			printl("{");
			printl("\tLogic Timer: " + func.GetTimerName());
			printl("\tRefire Time: " + func.GetRefireTime() + (func.GetRefireTime() == 0.01 ? " (per game tick)" : ""));
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/* Registration of functions called every tick */

/** Register on tick function
 * Signature: void RegisterOnTickFunction(string callFunc, args)
*/

function RegisterOnTickFunction(sFunction, ...)
{
	if (typeof(sFunction) != "string") return printl("[RegisterOnTickFunction] Wrong type of variable");
	if (!IsFunctionExist(sFunction)) return printl("[RegisterOnTickFunction] The specified function doesn't exist");
	foreach (func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetInputVariables();
			aVars.remove(0);
			if (IsArraysEqual(aVars, vargv)) return printf("[RegisterOnTickFunction] Function '%s' already registered", sFunction);
		}
	}
	if (vargv.len() > 0)
	{
		local sVars = "";
		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx) sVars += var;
			else sVars += var + ", ";
		}
		printf("[RegisterOnTickFunction] Function '%s' with input variables: '%s' has been registered", sFunction, sVars);
	}
	else printf("[RegisterOnTickFunction] Function '%s' has been registered", sFunction);
	g_aOnTickFunctions.append(COnTickFunction(sFunction, vargv));
}

/** Remove on tick function
 * Signature: void RemoveOnTickFunction(string callFunc, args)
*/

function RemoveOnTickFunction(sFunction, ...)
{
	if (typeof(sFunction) != "string") return printl("[RemoveOnTickFunction] Wrong type of variable");
	if (!IsFunctionExist(sFunction)) return printl("[RemoveOnTickFunction] The specified function doesn't exist");
	foreach (idx, func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			if (vargv.len() > 0)
			{
				local aVars = clone func.GetInputVariables();
				aVars.remove(0);
				if (IsArraysEqual(aVars, vargv))
				{
					local sVars = "";
					foreach (idx, var in vargv)
					{
						if (vargv.len() - 1 == idx) sVars += var;
						else sVars += var + ", ";
					}
					printf("[RemoveOnTickFunction] Function '%s' with input variables: '%s' has been removed", sFunction, sVars);
					return g_aOnTickFunctions.remove(idx);
				}
			}
			else
			{
				printf("[RemoveOnTickFunction] Function '%s' has been removed", sFunction);
				return g_aOnTickFunctions.remove(idx);
			}
		}
	}
	if (vargv.len() > 0)
	{
		local sVars = "";
		foreach (idx, var in vargv)
		{
			if (vargv.len() - 1 == idx) sVars += var;
			else sVars += var + ", ";
		}
		printf("[RemoveOnTickFunction] Function '%s' with input variables: '%s' not registered", sFunction, sVars);
	}
	else printf("[RemoveOnTickFunction] Function '%s' not registered", sFunction);
}

/** Is on tick function registered
 * Signature: bool IsOnTickFunctionRegistered(string callFunc, args)
*/

function IsOnTickFunctionRegistered(sFunction, ...)
{
	if (typeof(sFunction) != "string") return printl("[IsOnTickFunctionRegistered] Wrong type of variable");
	if (!IsFunctionExist(sFunction)) return printl("[IsOnTickFunctionRegistered] The specified function doesn't exist");
	local bFound = false;
	foreach (idx, func in g_aOnTickFunctions)
	{
		if (func.GetFunctionName() == sFunction)
		{
			local aVars = clone func.GetInputVariables();
			aVars.remove(0);
			if (IsArraysEqual(aVars, vargv)) bFound = true;
		}
	}
	return bFound;
}

/** Print on tick functions
 * Signature: void PrintOnTickFunctions(bool bDeepPrint)
*/

function PrintOnTickFunctions(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~ g_aOnTickFunctions Array ~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (func in g_aOnTickFunctions)
	{
		printl("Function = " + func.GetFunctionName());
		if (bDeepPrint)
		{
			if (func.GetInputVariables().len() == 1)
			{
				printl("\t");
				continue;
			}
			printl("{");
			foreach (idx, var in func.GetInputVariables())
			{
				if (idx == 0)
				{
					printl("\tInput Variables:");
					printl("\t{");
					continue;
				}
				printl("\t\tVar " + idx + " = " + var);
			}
			printl("\t}");
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/* Registration of custom chat commands */

/** Register chat command
 * Signature: void RegisterChatCommand(string command, string callFunc, bool bInputPlayerHandle, bool bInputValue)
*/

function RegisterChatCommand(sCommand = null, hFunction = null, bInputPlayerHandle = false, bInputValue = false)
{
	if (typeof(sCommand) != "string" || typeof(hFunction) != "function" || typeof(bInputPlayerHandle) != "bool" || typeof(bInputValue) != "bool") return printl("[RegisterChatCommand] Wrong type of variable");
	sCommand = sCommand.tolower();
	local ChatCommand = CChatCommand(sCommand, hFunction, bInputPlayerHandle, bInputValue);
	foreach (idx, command in g_aChatCommands)
	{
		if (typeof(command) == "instance")
		{
			if (sCommand == command.GetCommand())
			{
				g_aChatCommands[idx] = ChatCommand;
				return printf("[RegisterChatCommand] Already registered, but chat command '%s' has been replaced by an existing one", sCommand);
			}
		}
	}
	g_aChatCommands.append(ChatCommand);
	printf("[RegisterChatCommand] Chat command '%s' has been registered", sCommand);
}

/** Remove chat command
 * Signature: void RemoveChatCommand(string command)
*/

function RemoveChatCommand(sCommand = null)
{
	if (typeof(sCommand) != "string") return printl("[RemoveChatCommand] Wrong type of variable");
	sCommand = sCommand.tolower();
	foreach (idx, command in g_aChatCommands)
	{
		if (sCommand == command.GetCommand())
		{
			g_aChatCommands.remove(idx);
			return printf("[RemoveChatCommand] Chat command '%s' has been removed", sCommand);
		}
	}
	printf("[RemoveChatCommand] Chat command '%s' not registered", sCommand);
}

/** Print chat commands
 * Signature: void PrintChatCommands(bool bDeepPrint)
*/

function PrintChatCommands(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~~ g_aChatCommands Array ~~~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (command in g_aChatCommands)
	{
		printl("Command = " + command.GetCommand());
		if (bDeepPrint)
		{
			printl("{");
			printl("\tCalling Function: " + command.GetFunctionHandle());
			printl("\tInput Player Handle: " + command.GetInputPlayerHandle());
			printl("\tInput Value: " + command.GetInputValue());
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/* Registration of callback functions by pressing a button */

/** Register callback function for a specified button
 * Signature: void RegisterButtonListener(int button, string callFunc, int presstype, int team)
*/

function RegisterButtonListener(iButton = null, sFunction = null, iType = ButtonType.Pressed, iTeam = Team.Everyone)
{
	if (typeof(iButton) != "integer" || typeof(sFunction) != "string" || typeof(iTeam) != "integer" || typeof(iType) != "integer") return printl("[RegisterButtonListener] Wrong type of variable");
	if (ButtonType.Pressed < iType && iType > ButtonType.Hold || Team.Everyone < iTeam && iTeam > Team.Infected) return printl("[RegisterButtonListener] Invalid button type or team");
	foreach (button in g_aButtonsListener)
		if (button.GetButton() == iButton)
			if (button.GetFunction() == sFunction)
				return printf("[RegisterButtonListener] Button '%d' with a callback function '%s' already registered", iButton, sFunction);
	printf("[RegisterButtonListener] Button '%d' has been registered", iButton);
	g_aButtonsListener.append(CButtonListener(iButton, sFunction, iType, iTeam));
}

/** Remove registered button or bound callback function
 * Signature: void RemoveButtonListener(int button, string callFunc)
*/

function RemoveButtonListener(iButton = null, sFunction = null)
{
	if (typeof(iButton) != "integer") return printl("[RemoveButtonListener] Wrong type of variable");
	foreach (idx, button in g_aButtonsListener)
	{
		if (button.GetButton() == iButton)
		{
			if (sFunction != null)
			{
				if (button.GetFunction() == sFunction)
				{
					printf("[RemoveButtonListener] Callback function '%d' for the '%d' button has been removed", sFunction, iButton);
					return g_aButtonsListener.remove(idx);
				}
			}
			local shift = 0; local aButtons = [];
			for (local i = 0; i < g_aButtonsListener.len(); i++) if (g_aButtonsListener[i].GetButton() == iButton) aButtons.append(i);
			for (local j = 0; j < aButtons.len(); j++)
			{
				g_aButtonsListener.remove(aButtons[j] - shift);
				shift++;
			}
			printf("[RemoveButtonListener] Button '%d' has been removed", iButton);
		}
	}
	printf("[RemoveButtonListener] Button '%d' not registered", iButton);
}

/** Print array of registered buttons
 * Signature: void PrintButtonsListenerArray(bool bDeepPrint)
*/

function PrintButtonsListenerArray(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~~~~ g_aButtonsListener Array ~~~~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (button in g_aButtonsListener)
	{
		printl("Buttons = " + button.GetButton());
		if (bDeepPrint)
		{
			local sType = null;
			local sFunction = "doesn't exist";
			foreach (name, val in getroottable())
			{
				if (button.GetCallingFunction() == val)
				{
					sFunction = name;
					break;
				}
			}
			switch (button.GetType())
			{
				case ButtonType.Pressed:
				{
					sType = "pressed";
					break;
				}
				case ButtonType.Released:
				{
					sType = "released";
					break;
				}
				case ButtonType.Hold:
				{
					sType = "hold";
					break;
				}
			}
			printl("{");
			printl("\tCalling Function: " + sFunction);
			printl("\tButton Type: " + sType);
			printl("\tTeam: " + button.GetTeam());
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/**
 * Sending custom commands by using scripted_user_func
 * WARNING: C++ will call void UserConsoleCommand function only at the beginning of the round
 *
 * Example:
 *	 RegisterUserCommand("print_nick", @(idx = 1)sayf("%s", Ent(idx.tointeger()).GetPlayerName()), true, false);
 *	 scripted_user_func print_nick,1
*/

/** Register user command
 * Signature: void RegisterUserCommand(string command, handle callFunc, bool bInputValue, bool bInputPlayerHandle)
*/

function RegisterUserCommand(sCommand = null, hFunction = null, bInputValue = false, bInputPlayerHandle = true)
{
	if (typeof(sCommand) != "string" || typeof(hFunction) != "function" || typeof(bInputValue) != "bool" || typeof(bInputPlayerHandle) != "bool") return printl("[RegisterUserCommand] Wrong type of variable");
	sCommand = sCommand.tolower();
	foreach (usercmd in g_aUserCommands) if (usercmd.GetCommand() == sCommand) return printf("[RegisterUserCommand] User command '%s' already registered", sCommand);
	printf("[RegisterUserCommand] User command '%s' has been registered", sCommand);
	g_aUserCommands.append(CUserCommand(sCommand, hFunction, bInputValue, bInputPlayerHandle));
}

/** Remove user command
 * Signature: void RemoveUserCommand(string command)
*/

function RemoveUserCommand(sCommand = null)
{
	if (typeof(sCommand) != "string") return printl("[RemoveUserCommand] Wrong type of variable");
	sCommand = sCommand.tolower();
	foreach (idx, usercmd in g_aUserCommands)
	{
		if (usercmd.GetCommand() == sCommand)
		{
			printf("[RemoveUserCommand] User command '%s' has been removed", sCommand);
			return g_aUserCommands.remove(idx);
		}
	}
	printf("[RemoveUserCommand] User command '%s' not registered", sCommand);
}

/** Print user commands
 * Signature: void PrintUserCommands(bool bDeepPrint)
*/

function PrintUserCommands(bDeepPrint = true)
{
	printl("~~~~~~~~~~~~~~~~~~~~ g_aUserCommands Array ~~~~~~~~~~~~~~~~~~~~~" + (bDeepPrint ? "\n" : ""));
	foreach (usercmd in g_aUserCommands)
	{
		printl("Command = " + usercmd.GetCommand());
		if (bDeepPrint)
		{
			local sFunction = "doesn't exist";
			foreach (name, val in getroottable())
			{
				if (usercmd.GetCallingFunction() == val)
				{
					sFunction = name;
					break;
				}
			}
			printl("{");
			printl("\tCalling Function: " + sFunction);
			printl("\tInput Player Handle: " + usercmd.GetInputPlayerHandle());
			printl("\tInput Value: " + usercmd.GetInputValue());
			printl("}\n");
		}
	}
	printl("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}

/* Ready-made templates */

function OnTickCall()
{
	for (local i = 0; i < g_aOnTickFunctions.len(); i++)
	{
		bException = false;
		try
		{
			g_aOnTickFunctions[i].GetFunctionHandle().acall(g_aOnTickFunctions[i].GetInputVariables());
		}
		catch (i)
		{
			printl("[OnTickFunction Watchdog] An error has occurred, on tick function has been removed");
			bException = true;
		}
		if (bException)
		{
			g_aOnTickFunctions.remove(i);
			i--;
		}
	}
	for (local j = 0; j < g_aTimers.len(); j++)
	{
		if (g_aTimers[j].GetCallTime() <= Time())
		{
			try
			{
				g_aTimers[j].GetFunctionHandle().acall(g_aTimers[j].GetInputVariables());
			}
			catch (j)
			{
				printl("[Timer Watchdog] An error has occurred, calling task has been removed");
			}
			g_aTimers.remove(j);
			j--;
		}
	}
}

function OnRoundStart(tParams)
{
	if ("OnGameplayStart" in getroottable())
		::OnGameplayStart();
}

function OnPlayerDisconnect(tParams)
{
	if (tParams._player == null) return;
	local idx = tParams._player.GetEntityIndex();
	if (!g_bAutoBhop[idx]) g_bAutoBhop[idx] = true;
}

function OnPlayerSay(tParams)
{
	if (tParams._player == null) return;
	local hPlayer = tParams._player;
	local sText = tParams.text.tolower();
	foreach (command in g_aChatCommands)
	{
		if (split(sText, " ")[0] == command.GetCommand())
		{
			local sValue = null;
			local aArgs = [this];
			local hFunction = command.GetFunctionHandle();
			local bInputHandle = command.GetInputPlayerHandle();
			local bInputValue = command.GetInputValue();
			if (bInputValue)
			{
				local aArgs = split(sText, " ");
				foreach (idx, arg in aArgs)
				{
					if (idx > 0)
					{
						if (sValue == null) sValue = arg;
						else sValue += " " + arg;
					}
				}
				if (sValue == null) sValue = CC_EMPTY_ARGUMENT;
			}
			if (sValue != CC_EMPTY_ARGUMENT && sValue != null) sValue = sValue.tolower();
			if (!bInputHandle && bInputValue) aArgs.extend([sValue]);
			else if (bInputHandle && !bInputValue) aArgs.extend([hPlayer]);
			else if (bInputHandle && bInputValue) aArgs.extend([hPlayer, sValue]);
			hFunction.acall(aArgs);
		}
	}
}

function UserConsoleCommand(hPlayer, sArgs)
{
	if (sArgs == null) return;
	sArgs = sArgs.tolower();
	local aArgs = split(sArgs, ",");
	local sCommand = aArgs[0];
	foreach (usercmd in g_aUserCommands)
	{
		if (usercmd.GetCommand() == sCommand)
		{
			if (usercmd.GetInputValue())
			{
				if (aArgs.len() <= 1) return;
				local aInputVars = [];
				aInputVars = usercmd.GetInputPlayerHandle() ? [this, hPlayer] : [this];
				aArgs.remove(0);
				aInputVars.extend(aArgs);
				usercmd.GetCallingFunction().acall(aInputVars);
			}
			else usercmd.GetInputPlayerHandle() ? usercmd.GetCallingFunction()(hPlayer) : usercmd.GetCallingFunction()();
			break;
		}
	}
}

function ButtonsListener()
{
	foreach (button in g_aButtonsListener)
	{
		local hPlayer = null;
		local CheckButtons = function(hPlayer)
		{
			local idx = hPlayer.GetEntityIndex();
			local buttons = null;
			switch (button.GetType())
			{
				case ButtonType.Pressed:
				{
					buttons = NetProps.GetPropInt(hPlayer, "m_afButtonPressed");
					break;
				}
				case ButtonType.Released:
				{
					buttons = NetProps.GetPropInt(hPlayer, "m_afButtonReleased");
					break;
				}
				case ButtonType.Hold:
				{
					buttons = NetProps.GetPropInt(hPlayer, "m_nButtons");
					break;
				}
			}
			if (buttons & button.GetButton()) button.GetCallingFunction()(hPlayer);
		}
		switch (button.GetTeam())
		{
			case Team.Everyone:
			{
				while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null) CheckButtons(hPlayer);
				break;
			}
			case Team.Survivor:
			{
				while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null) if (hPlayer.IsSurvivor()) CheckButtons(hPlayer);
				break;
			}
			case Team.Infected:
			{
				while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null) if (!hPlayer.IsSurvivor()) CheckButtons(hPlayer);
				break;
			}
		}
	}
}

RegisterLoopFunction("OnTickCall");
RegisterOnTickFunction("AutoBhop");
RegisterOnTickFunction("ButtonsListener");

RegisterChatCommand("!localbhop", SwitchLocalAutoBhop, true);
RegisterChatCommand("!bhop", SwitchAutoBhop, true);

RegisterUserCommand("localbhop", SwitchLocalAutoBhop);
RegisterUserCommand("bhop", SwitchAutoBhop);

RegisterButtonListener(IN_ALT1, "LocalAutoBhop", ButtonType.Hold);

HookEvent("player_say", OnPlayerSay);
HookEvent("player_disconnect", OnPlayerDisconnect);
HookEvent("round_start", OnRoundStart);

/*===============================*\
 *  Fixed Vector/VectorXD/QAngle *
 *  /Quaternion Native Functions *
\*===============================*/

function Vector::ToKVString()
{
	return format("%f %f %f", x, y, z);
}

function Vector2D::ToKVString()
{
	return format("%f %f", x, y);
}

function Vector4D::ToKVString()
{
	return format("%f %f %f %f", x, y, z, w);
}

function QAngle::ToKVString()
{
	return format("%f %f %f", x, y, z);
}

function Quaternion::ToKVString()
{
	return format("%f %f %f %f", x, y, z, w);
}

/*===============================*\
 *         Math Functions        *
\*===============================*/

/** If a value is not a number
 * Signature: bool Math.IsNaN(float value)
*/

function Math::IsNaN(value)
{
	if (["1.#INF", "-1.#INF", "1.#IND", "-1.#IND"].find(value) != null) return true;
	return false;
}

/** Get the sign of value
 * Signature: bool Math.Sign(float value)
*/

function Math::Sign(value)
{
	return value <=> 0;
}

/** Get the minimum value
 * Signature: bool Math.Min(float value)
*/

function Math::Min(a, b)
{
	return a < b ? a : b;
}

/** Get the maximum value
 * Signature: bool Math.Min(float value)
*/

function Math::Max(a, b)
{
	return a > b ? a : b;
}

/** Sigmoid activation function
 * Signature: float Math.Sigmoid(float x)
*/

function Math::Sigmoid(x)
{
	return 1 / (1 + exp(-x));
}

/** Convert degrees to radians
 * Signature: float Math.DegToRad(float degrees)
*/

function Math::DegToRad(flDegrees)
{
    return flDegrees * PI / 180;
}

/** Convert radians to degrees
 * Signature: float Math.DegToRad(float radians)
*/

function Math::RadToDeg(flRadians)
{
    return flRadians * 180 / PI;
}

/** Linear Interpolation
 * Signature: float Math.LinearInterp(float x, float x_start, float x_end, float y_start, float y_end)
*/

function Math::LinearInterp(x, x_start, x_end, y_start, y_end)
{
	return y_start.tofloat() + ((x.tofloat() - x_start.tofloat()) * (y_end.tofloat() - y_start.tofloat()) / (x_end.tofloat() - x_start.tofloat()));
}

/** Returns the normalized angle
 * Signature: float Math.NormalizeAngle(float angle)
*/

function Math::NormalizeAngle(flAngle = null)
{
	if (type(flAngle) != "float") return printl("[NormalizeAngle] Invalid angle");
	while (flAngle < -180.0) flAngle += 360.0;
	while (flAngle > 180.0) flAngle -= 360.0;
	return flAngle;
}

/*===============================*\
 *     Vector Math Functions     *
\*===============================*/

/** Returns normalized vector/coordinate
 * Signature: vector VMath.Normalize(Vector vector, string axis, bool bMethod2D)
*/

function VMath::Normalize(vector = null, sAxis = "", bMethod2D = false)
{
	if (vector == null || type(vector) != "instance") return printl("[Normalize] Invalid vector");
	local vecLength = VMath.Magnitude(vector, bMethod2D);
	if (sAxis != "")
	{
		local aAxis = ["x", "y", "z"];
		if (aAxis.find(sAxis) != null)
		{
			if (bMethod2D && sAxis == "z") return printl("[Normalize] Invalid axis");
			switch (sAxis)
			{
				case aAxis[0]:
					return vector.x/vecLength;
				case aAxis[1]:
					return vector.y/vecLength;
				case aAxis[2]:
					return vector.z/vecLength;
			}
		}
		else return printl("[Normalize] Invalid axis");
	}
	return Vector((vector.x != 0.0) ? vector.x/vecLength : 0.0, (vector.y != 0.0) ? vector.y/vecLength : 0.0, bMethod2D ? 0.0 : (vector.z != 0.0) ? vector.z/vecLength : 0.0);
}

/** Returns normalized vector/coordinate with the 2nd method
 * Signature: vector VMath.Normalize2(Vector vector, string axis, bool bMethod2D)
*/

function VMath::Normalize2(vector = null, sAxis = "", bMethod2D = false)
{
	if (vector == null || type(vector) != "instance") return printl("[Normalize2] Invalid vector");
	if (bMethod2D) vector.z = 0.0;
	local vecLength = VMath.Magnitude(vector, bMethod2D);
	local vecNorm = vector.Scale(1 / vecLength);
	if (sAxis != "")
	{
		local aAxis = ["x", "y", "z"];
		if (aAxis.find(sAxis) != null)
		{
			if (bMethod2D && sAxis == "z") return printl("[Normalize2] Invalid axis");
			switch (sAxis)
			{
				case aAxis[0]:
					return vecNorm.x;
				case aAxis[1]:
					return vecNorm.y;
				case aAxis[2]:
					return vecNorm.z;
			}
		}
		else return printl("[Normalize2] Invalid axis");
	}
	return vecNorm;
}

/** Get the angle between two normalized vectors
 * Signature: float VMath.GetAngleBetweenVectors(Vector vector, Vector vector)
*/

function VMath::GetAngleBetweenVectors(vector_a = null, vector_b = null)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[GetAngleBetweenVectors] Invalid vector");
	return Math.RadToDeg(acos(VMath.Dot(vector_a, vector_b)));
}

/** Returns the normalized angles
 * Signature: float VMath.NormalizeVectorAngles(Vector angles)
*/

function VMath::NormalizeVectorAngles(vecAng = null)
{
	if (vecAng == null || type(vecAng) != "instance") return printl("[NormalizeVectorAngles] Invalid vector");
	while (vecAng.x < -90.0) vecAng.x += 180.0;
	while (vecAng.x > 90.0) vecAng.x -= 180.0;
	while (vecAng.y < -180.0) vecAng.y += 360.0;
	while (vecAng.y > 180.0) vecAng.y -= 360.0;
	while (vecAng.z < -50.0) vecAng.z += 100.0;
	while (vecAng.z > 50.0) vecAng.z -= 100.0;
	return vecAng;
}

/** The scalar product of two vectors
 * Signature: float VMath.Dot(Vector vector, Vector vector, bool bMethod2D)
*/

function VMath::Dot(vector_a = null, vector_b = null, bMethod2D = false)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[Dot] Invalid vector");
	return (vector_a.x * vector_b.x) + (vector_a.y * vector_b.y) + (bMethod2D ? 0.0 : vector_a.z * vector_b.z);
}

/** The vector product of two vectors. Returns a vector orthogonal to the input vectors.
 * Signature: vector VMath.Cross(Vector vector, Vector vector)
*/

function VMath::Cross(vector_a = null, vector_b = null)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[Cross] Invalid vector");
	return Vector((vector_a.y * vector_b.z) - (vector_b.y * vector_a.z), (vector_a.z * vector_b.x) - (vector_b.z * vector_a.x), (vector_a.x * vector_b.y) - (vector_b.x * vector_a.y));
}

/** Returns the projection of vector from direction
 * Signature: vector VMath.Project(Vector vector, Vector vector, bool bMethod2D)
*/

function VMath::Project(vector_a = null, vector_b = null, bMethod2D = false)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[Project] Invalid vector");
	local vecNorm = VMath.Normalize(vector_b);
	local vecScal = VMath.Dot(vector_a, vecNorm);
	return Vector(vecNorm.x * vecScal, vecNorm.y * vecScal, bMethod2D ? 0.0 : vecNorm.z * vecScal);
}

/** Returns the rejection of vector from direction
 * Signature: vector VMath.Reject(Vector vector, Vector vector, bool bMethod2D)
*/

function VMath::Reject(vector_a = null, vector_b = null, bMethod2D = false)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[Reject] Invalid vector");
	local vecNorm = VMath.Normalize(vector_b);
	local vecScal = VMath.Dot(vector_a, vecNorm);
	return vector_a - Vector(vecNorm.x * vecScal, vecNorm.y * vecScal, bMethod2D ? 0.0 : vecNorm.z * vecScal);
}

/** Returns the reflection of a vector off a surface that has the specified normal
 * Signature: vector VMath.Reflect(Vector vector, Vector vector, bool bRejectMethod, float factor)
*/

function VMath::Reflect(vector_a = null, vector_b = null, bRejectMethod = true, fFactor = 2.0)
{
	if (type(vector_a) != "instance" || type(vector_b) != "instance") return printl("[Reflect] Invalid vector");
	if (bRejectMethod)
	{
		local vecRej = VMath.Reject(vector_a, vector_b);
		return (vecRej * fFactor) - vector_a;
	}
	else
	{
		local vecProj = VMath.Project(vector_a, vector_b);
		return vector_a - (vecProj * fFactor);
	}
}

/** Returns the angle of the vector
 * Signature: vector VMath.VectorToQAngle(Vector vector)
*/

function VMath::VectorToQAngle(vector, flRoll = 0.0)
{
	if (type(vector) != "instance") return printl("[VectorToQAngle] Invalid vector");
	if (VMath.MagnitudeSqr(vector) == 0) return QAngle(0, 0, flRoll);
	local flPitch = -Math.RadToDeg(atan(vector.z / VMath.Magnitude(vector, true)));
	local flYaw = Math.RadToDeg(atan(vector.y / vector.x));
	if (vector.x < 0) flYaw += 180;
	return QAngle(flPitch, flYaw, flRoll);
}

/** Returns the angle of the normalized vector
 * Signature: vector VMath.VectorToQAngle2(Vector direction)
*/

function VMath::VectorToQAngle2(vecNorm)
{
	if (type(vecNorm) != "instance") return printl("[VectorToQAngle2] Invalid vector");
    local flPitch = asin(vecNorm.z);
    local flYaw = Math.RadToDeg(asin(vecNorm.y / cos(flPitch)));
	flPitch = Math.RadToDeg(flPitch * -1);
    if (vecNorm.x < 0)
	{
		flYaw *= -1;
		flYaw -= 180;
	}
    return VMath.NormalizeVectorAngles(QAngle(flPitch, flYaw, 0));
}

/** Returns the Forward Vector of the angles
 * Signature: vector VMath.Forward(QAngle angles)
*/

function VMath::Forward(vecAng = null)
{
	if (type(vecAng) != "instance") return printl("[Forward] Invalid vector");
	local flPitch = Math.DegToRad(vecAng.x);
	local flYaw = Math.DegToRad(vecAng.y);
	return Vector(cos(flPitch) * cos(flYaw), sin(flYaw) * cos(flPitch), sin(flPitch*-1));
}

/** Returns the Left Vector of the angles
 * Signature: vector VMath.Left(QAngle angles)
*/

function VMath::Left(vecAng = null, bPlaneYaw = true)
{
	if (type(vecAng) != "instance") return printl("[Left] Invalid vector");
	local flPitch = Math.DegToRad(vecAng.x);
	local flYaw = Math.DegToRad(vecAng.y + 90.0);
	return Vector(cos(flPitch) * cos(flYaw), sin(flYaw) * cos(flPitch), (bPlaneYaw ? 0.0 : sin(flPitch*-1)));
}

/** Returns the Up Vector of the angles
 * Signature: vector VMath.Up(QAngle angles)
*/

function VMath::Up(vecAng = null, bPlaneYaw = true)
{
	if (type(vecAng) != "instance") return printl("[Up] Invalid vector");
	local flPitch = Math.DegToRad(vecAng.x - 90.0);
	local flYaw = Math.DegToRad(vecAng.y);
	return Vector(cos(flPitch) * cos(flYaw), sin(flYaw) * cos(flPitch), (bPlaneYaw ? 0.0 : sin(flPitch*-1)));
}

/** Scales the vector magnitude
 * Signature: vector VMath.Scale(Vector direction, float Scale)
*/

function VMath::Scale(vecNorm = null, flScale = 1000.0)
{
	if (type(vecNorm) != "instance") return printl("[Scale] Invalid vector");
	return vecNorm * flScale;
}

/** Magnitude of the vector
 * Signature: vector VMath.Magnitude(Vector vector, bool bMethod2D)
*/

function VMath::Magnitude(vector = null, bMethod2D = false)
{
	if (type(vector) != "instance") return printl("[Magnitude] Invalid vector");
	return sqrt(pow(vector.x, 2) + pow(vector.y, 2) + (bMethod2D ? 0.0 : pow(vector.z, 2)));
}

/** The magnitude of the vector squared
 * Signature: vector VMath.MagnitudeSqr(Vector vector, bool bMethod2D)
*/

function VMath::MagnitudeSqr(vector = null, bMethod2D = false)
{
	if (type(vector) != "instance") return printl("[Magnitude] Invalid vector");
	return pow(vector.x, 2) + pow(vector.y, 2) + (bMethod2D ? 0.0 : pow(vector.z, 2));
}

function SpawnTrigger(sName, vecPos, vecMaxs = null, vecMins = null, sFunc = null, iType = null, sOutput = null, sClass = "trigger_multiple")
{
	if (vecMaxs == null) vecMaxs = Vector(64, 64, 128);
	if (vecMins == null) vecMins = Vector(-64, -64, 0);
	if (sFunc == null) sFunc = "OnTriggerTouch";
	if (iType == null) iType = TR_CLIENTS;
	if (sOutput == null) sOutput = "OnStartTouch";
	local hEntity = SpawnEntityFromTable(sClass, {targetname = sName, origin = vecPos, spawnflags = iType});
	hEntity.__KeyValueFromVector("maxs", vecMaxs);
	hEntity.__KeyValueFromVector("mins", vecMins);
	hEntity.__KeyValueFromInt("solid", 2);
	hEntity.__KeyValueFromString(sOutput, format("!caller,RunScriptCode,%s()", sFunc));
	hEntity.ValidateScriptScope();
	return hEntity;
}

local hTable = {}
local hEntity;

EntFire("prop_physics", "AddOutput", "disableshadows 1");
EntFire("prop_door_rotating_checkpoint", "Close")
EntFire("info_particle_system", "Kill");
EntFire("prop_door_rotating", "Close");
EntFire("trigger_hurt_ghost", "Kill");
EntFire("env_player_blocker", "Kill");
EntFire("physprop_top_floor", "Kill");
EntFire("info_changelevel", "Kill");
EntFire("ambient_generic", "Kill");
EntFire("elevator_button", "Kill");
EntFire("func_breakable", "Kill");
EntFire("trigger_hurt", "Kill");
EntFire("trigger_once", "Kill");
EntFire("prop_ragdoll", "Kill");

SpawnTrigger("trigger_start", Vector(1633.743, 4585.546, 1184.031), Vector(28.687, 46.285, 88.873), Vector());
SpawnTrigger("trigger_finish", Vector(-510.273, 7199.619, 2797.574), Vector(48.938, 29.770, 95.818), Vector());
SpawnTrigger("trigger_elevator", Vector(2071.707, 5721.596, 2464.031), Vector(190.416, 180.453, 127.065), Vector());

if ((hEntity = Entities.FindByModel(hEntity, "models/props_critters/seagull_group.mdl")) != null) hEntity.Kill();
if ((hEntity = Entities.FindInSphere(null, Vector(1810.791, 7227.514, 2464.031), 50.0)) != null) hEntity.Kill();
if ((hEntity = Entities.FindInSphere(null, Vector(1810.966, 6592.707, 2464.031), 50.0)) != null) hEntity.Kill();
if ((hEntity = Entities.FindInSphere(null, Vector(1815.477, 6590.738, 2656.031), 50.0)) != null) hEntity.Kill();
if ((hEntity = Entities.FindInSphere(null, Vector(1826.281, 6848.158, 2656.031), 50.0)) != null) hEntity.Kill();

SpawnEntityFromTable("weapon_pain_pills", {origin = Vector(1618.022, 4743.177, 1208.112), angles = Vector(90.000, 45.000, 0.000)});
SpawnEntityFromTable("weapon_pain_pills", {origin = Vector(1607.174, 4745.750, 1208.112), angles = Vector(90.000, -45.000, 0.000)});
SpawnEntityFromTable("weapon_pain_pills", {origin = Vector(1595.831, 4746.704, 1208.112), angles = Vector(-90.000, 45.000, 0.000)});
SpawnEntityFromTable("weapon_first_aid_kit", {origin = Vector(1576.051, 4733.838, 1208.112), angles = Vector(90.000, 0.000, 0.000)});
SpawnEntityFromTable("weapon_pistol_magnum", {origin = Vector(1593.062, 4558.572, 1208.112), angles = Vector(-0.254, 63.780, -90.776)});
SpawnEntityFromTable("weapon_pistol_magnum", {origin = Vector(1597.619, 4542.722, 1208.112), angles = Vector(0.254, -63.780, -90.776)});
SpawnEntityFromTable("prop_physics", {origin = Vector(2322.000, 6436.156, 2667.500), angles = Vector(0.000, -90.000, 0.000), model = "models/props_junk/gnome.mdl"});

CreateInvisibleWall("physics_blocker", Vector(1855.545, 5377.362, 3003.225), Vector(13.626, 255.494, 611.016), Vector());
CreateInvisibleWall("physics_blocker", Vector(771.025, 5367.812, 3000.878), Vector(1083.160, 21.046, 553.636), Vector());
CreateInvisibleWall("physics_blocker", Vector(2308.446, 5527.940, 2912.031), Vector(44.977, 711.588, 674.042), Vector());
CreateInvisibleWall("physics_blocker", Vector(2315.033, 5056.218, 3003.795), Vector(0.271, 470.067, 527.001), Vector());
CreateInvisibleWall("physics_blocker", Vector(1860.655, 5631.111, 3048.281), Vector(315.554, 330.215, 589.588), Vector());
CreateInvisibleWall("physics_blocker", Vector(1647.370, 6399.450, 2480.031), Vector(16.848, 1122.954, 99.279), Vector());
CreateInvisibleWall("physics_blocker", Vector(385.598, 6230.871, 2691.061), Vector(1261.130, 8.449, 81.457), Vector());
CreateInvisibleWall("physics_blocker", Vector(2355.894, 6175.641, 2656.031), Vector(157.918, 6.581, 900.207), Vector());
CreateInvisibleWall("physics_blocker", Vector(2514.171, 6186.338, 2656.031), Vector(9.896, 295.596, 909.927), Vector());
CreateInvisibleWall("physics_blocker", Vector(2342.302, 6485.600, 2656.031), Vector(170.482, 6.222, 901.248), Vector());
CreateInvisibleWall("physics_blocker", Vector(2342.488, 6493.094, 2656.031), Vector(25.476, 1376.721, 899.513), Vector());
CreateInvisibleWall("physics_blocker", Vector(-764.417, 6836.461, 2228.293), Vector(954.150, 2.935, 1138.704), Vector());
CreateInvisibleWall("physics_blocker", Vector(2299.931, 4865.167, 2912.031), Vector(12.145, 220.671, 331.198), Vector());
CreateInvisibleWall("physics_blocker", Vector(2163.508, 5945.590, 3008.537), Vector(144.623, 14.160, 715.513), Vector());
CreateInvisibleWall("physics_blocker", Vector(186.600, 6836.422, 2221.544), Vector(5.862, 352.007, 1469.812), Vector());
CreateInvisibleWall("physics_blocker", Vector(2451.914, 7665.837, 1687.123), Vector(482.543, 6.436, 783.905), Vector());
CreateInvisibleWall("physics_blocker", Vector(2289.075, 7664.722, 2629.299), Vector(167.738, 13.982, 0.000), Vector(0.000, 0.000, -927.577));
// hotel roof skip blocker
CreateInvisibleWall("physics_blocker", Vector(2171.00, 7674.00, 2824.00), Vector(164.00, 12.00, 256.00), Vector(-128.00, -8.0, -8.0));
// hotel roof exit blocker (not an actual skip AFAIK, but just in case)
CreateInvisibleWall("physics_blocker", Vector(1856.00, 7673.00, 2961.00), Vector(208.00, 8.00, 128.00), Vector(-208.00, -8.0, -8.0));

//============================================================
//============================================================

hTable =
{
	model = "models/props_equipment/elevator_buttons.mdl"
	targetname = "ent_prop1"
	origin = Vector(2048.000, 5696.000, 2516.170)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/elevator_arrows.mdl"
	targetname = "ent_prop2"
	origin = Vector(2006.000, 5696.000, 2555.790)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/elevator_arrows.mdl"
	targetname = "ent_prop3"
	origin = Vector(2092.000, 5696.000, 2555.790)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_equipment/elevator_buttons.mdl"
	targetname = "ent_prop4"
	origin = Vector(2048.000, 5696.000, 2708.170)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/elevator_arrows.mdl"
	targetname = "ent_prop5"
	origin = Vector(2099.000, 5696.000, 2747.790)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/elevator_arrows.mdl"
	targetname = "ent_prop6"
	origin = Vector(2001.000, 5696.000, 2747.790)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop7"
	origin = Vector(44.862, 5606.525, 2842.188)
	angles = Vector(90.000, -90.750, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_unique/elevator_pulley01.mdl"
	targetname = "ent_prop8"
	origin = Vector(1890.000, 5812.000, 1361.730)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_unique/elevator_pulley01.mdl"
	targetname = "ent_prop9"
	origin = Vector(1984.000, 5812.000, 1361.730)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_wallcollapse.mdl"
	targetname = "ent_prop10"
	origin = Vector(1019.000, 5648.000, 2498.000)
	angles = Vector(0.000, 270.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/ghostanim.mdl"
	targetname = "ent_prop11"
	origin = Vector(599.000, 5710.000, 2842.000)
	angles = Vector(0.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop12"
	origin = Vector(2392.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop13"
	origin = Vector(2488.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop14"
	origin = Vector(2488.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop15"
	origin = Vector(2584.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop16"
	origin = Vector(2103.990, 5392.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop17"
	origin = Vector(2104.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop18"
	origin = Vector(2200.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop19"
	origin = Vector(2200.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop20"
	origin = Vector(1720.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop21"
	origin = Vector(1816.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop22"
	origin = Vector(1912.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop23"
	origin = Vector(2296.000, 5392.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop24"
	origin = Vector(2488.000, 5392.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop25"
	origin = Vector(2392.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop26"
	origin = Vector(1432.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop27"
	origin = Vector(1432.000, 5424.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop28"
	origin = Vector(1528.000, 5488.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop29"
	origin = Vector(1144.000, 5584.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop30"
	origin = Vector(888.000, 5520.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop31"
	origin = Vector(223.000, 6152.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop32"
	origin = Vector(223.000, 5768.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop33"
	origin = Vector(512.000, 6120.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop34"
	origin = Vector(800.000, 6120.000, 1184.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence001_256.mdl"
	targetname = "ent_prop35"
	origin = Vector(1831.636, 4591.496, 1184.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop36"
	origin = Vector(1214.542, 4866.555, 1198.031)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop37"
	origin = Vector(450.838, 4523.891, 1184.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop38"
	origin = Vector(1433.240, 4690.383, 1184.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop39"
	origin = Vector(1430.192, 4686.088, 1223.063)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop40"
	origin = Vector(1437.384, 4539.217, 1184.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop41"
	origin = Vector(1437.916, 4544.527, 1223.063)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop42"
	origin = Vector(1438.945, 4548.912, 1262.094)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop43"
	origin = Vector(1319.301, 4648.128, 1184.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop44"
	origin = Vector(1316.932, 4646.644, 1223.063)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop45"
	origin = Vector(1314.719, 4649.832, 1262.094)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop46"
	origin = Vector(1317.420, 4639.079, 1301.125)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop47"
	origin = Vector(1213.277, 4549.885, 876.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop48"
	origin = Vector(1111.475, 4648.110, 908.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop49"
	origin = Vector(1451.668, 4767.110, 1431.845)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop50"
	origin = Vector(1591.531, 4793.063, 1432.667)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop51"
	origin = Vector(1635.662, 4796.498, 1432.667)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop52"
	origin = Vector(1613.479, 4816.219, 1491.589)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop53"
	origin = Vector(1628.359, 4793.810, 1511.620)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop54"
	origin = Vector(1333.523, 4899.542, 1600.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop55"
	origin = Vector(1188.352, 4839.724, 1600.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop56"
	origin = Vector(1183.842, 4842.428, 1639.063)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop57"
	origin = Vector(1137.800, 4671.069, 1574.827)
	angles = Vector(-0.000, 0.000, 9.866)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop58"
	origin = Vector(1137.801, 4665.845, 1611.448)
	angles = Vector(-9.866, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop59"
	origin = Vector(1008.286, 4440.573, 1536.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop60"
	origin = Vector(1006.428, 4441.316, 1575.063)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop61"
	origin = Vector(1007.716, 4443.169, 1614.094)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop62"
	origin = Vector(1131.818, 4659.519, 1648.052)
	angles = Vector(-0.000, 0.000, 9.866)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop63"
	origin = Vector(815.213, 4389.483, 1536.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop64"
	origin = Vector(816.874, 4390.364, 1575.063)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop65"
	origin = Vector(814.944, 4387.800, 1614.094)
	angles = Vector(0.000, -32.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop66"
	origin = Vector(383.969, 5233.902, 1930.725)
	angles = Vector(-90.000, -368.000, 8.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/electrical_box01.mdl"
	targetname = "ent_prop67"
	origin = Vector(381.969, 5148.347, 1924.627)
	angles = Vector(-1.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop68"
	origin = Vector(383.969, 5329.938, 2101.236)
	angles = Vector(-90.250, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop69"
	origin = Vector(191.969, 5595.136, 2000.153)
	angles = Vector(0.000, -90.000, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop70"
	origin = Vector(1760.000, 7201.000, 2465.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop71"
	origin = Vector(1760.000, 6561.000, 2465.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_destruction/dest_fire_ceilingtilesonly.mdl"
	targetname = "ent_prop72"
	origin = Vector(1792.000, 7329.000, 2465.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop73"
	origin = Vector(409.969, 6177.252, 1867.317)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop74"
	origin = Vector(-52.785, 6177.378, 1536.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop75"
	origin = Vector(427.469, 5664.021, 1867.858)
	angles = Vector(-90.000, -0.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop76"
	origin = Vector(-53.179, 5667.819, 1536.000)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop77"
	origin = Vector(-95.001, 5556.680, 1534.000)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop78"
	origin = Vector(-523.253, 5556.687, 1534.000)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop79"
	origin = Vector(-735.792, 5556.418, 1534.000)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop80"
	origin = Vector(-52.828, 6177.265, 2048.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop81"
	origin = Vector(-78.797, 6177.294, 2058.851)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop82"
	origin = Vector(-51.748, 6169.484, 2058.117)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop83"
	origin = Vector(218.789, 5972.031, 1916.049)
	angles = Vector(-0.000, -0.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit01.mdl"
	targetname = "ent_prop84"
	origin = Vector(350.969, 6077.867, 1951.701)
	angles = Vector(-0.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop85"
	origin = Vector(251.764, 5996.081, 1931.699)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop86"
	origin = Vector(-61.753, 6168.734, 2081.969)
	angles = Vector(0.000, 0.000, 77.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop87"
	origin = Vector(-49.227, 5672.408, 2252.464)
	angles = Vector(-0.000, 0.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop88"
	origin = Vector(-43.196, 6176.488, 2254.808)
	angles = Vector(-0.000, -90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop89"
	origin = Vector(-45.231, 5668.671, 2259.458)
	angles = Vector(-0.000, -90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop90"
	origin = Vector(193.969, 5899.501, 2296.865)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop91"
	origin = Vector(385.969, 6043.251, 2332.325)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop92"
	origin = Vector(383.969, 6104.412, 2352.571)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop93"
	origin = Vector(341.938, 6107.148, 2351.712)
	angles = Vector(-0.000, 90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop94"
	origin = Vector(352.622, 6108.414, 2372.602)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fairgrounds/fairgrounds_electric_box001.mdl"
	targetname = "ent_prop95"
	origin = Vector(313.584, 5972.031, 2377.362)
	angles = Vector(2.500, 90.000, 1.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/electrical_box01.mdl"
	targetname = "ent_prop96"
	origin = Vector(384.469, 6033.733, 2454.996)
	angles = Vector(-1.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop97"
	origin = Vector(268.576, 5972.031, 2612.306)
	angles = Vector(0.500, 0.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop98"
	origin = Vector(193.969, 5821.060, 2551.884)
	angles = Vector(-90.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop99"
	origin = Vector(-45.232, 5668.432, 2551.873)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop100"
	origin = Vector(-52.228, 5673.907, 2552.232)
	angles = Vector(-0.000, 0.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop101"
	origin = Vector(-46.197, 5820.845, 2551.596)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop102"
	origin = Vector(614.469, 6173.805, 2632.495)
	angles = Vector(-0.000, 90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/stair_metal_01.mdl"
	targetname = "ent_prop103"
	origin = Vector(189.022, 5773.087, 2551.790)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop104"
	origin = Vector(407.566, 4480.234, 1536.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop105"
	origin = Vector(407.681, 4908.328, 1536.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop106"
	origin = Vector(138.143, 5536.278, 2654.094)
	angles = Vector(-89.000, 88.492, -177.992)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop107"
	origin = Vector(137.419, 5620.760, 2655.822)
	angles = Vector(-92.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop108"
	origin = Vector(37.278, 5535.625, 2654.055)
	angles = Vector(93.000, 90.000, 0.026)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop109"
	origin = Vector(37.387, 5621.201, 2655.794)
	angles = Vector(90.000, -90.750, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/stair_metal_01.mdl"
	targetname = "ent_prop110"
	origin = Vector(184.967, 5765.424, 2740.790)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop111"
	origin = Vector(46.125, 5859.387, 2740.023)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop112"
	origin = Vector(142.930, 5859.387, 2739.682)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop113"
	origin = Vector(143.162, 5777.353, 2739.444)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop114"
	origin = Vector(45.631, 5777.353, 2740.173)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop115"
	origin = Vector(144.496, 5526.602, 2842.279)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop116"
	origin = Vector(44.862, 5526.352, 2842.784)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop117"
	origin = Vector(144.342, 5606.525, 2842.188)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop118"
	origin = Vector(139.237, 5771.961, 2927.708)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop119"
	origin = Vector(38.971, 5771.961, 2929.914)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop120"
	origin = Vector(139.481, 5857.412, 2927.317)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop121"
	origin = Vector(36.786, 5857.162, 2930.068)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop122"
	origin = Vector(1736.873, 4914.493, 1599.531)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop123"
	origin = Vector(1738.521, 4645.142, 1569.796)
	angles = Vector(-0.000, 0.000, 9.866)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop124"
	origin = Vector(1737.434, 4351.482, 1535.531)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop125"
	origin = Vector(1738.267, 4165.733, 1504.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop126"
	origin = Vector(378.218, 5831.553, 2992.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop127"
	origin = Vector(353.852, 5630.592, 2992.031)
	angles = Vector(0.000, -24.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop128"
	origin = Vector(253.916, 5572.860, 2992.031)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop129"
	origin = Vector(208.891, 6146.170, 2957.326)
	angles = Vector(-142.000, -156.000, -36.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop130"
	origin = Vector(220.004, 6396.470, 2835.222)
	angles = Vector(-142.000, -164.000, -30.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop131"
	origin = Vector(242.938, 6580.846, 2766.143)
	angles = Vector(-136.000, -192.000, -10.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop132"
	origin = Vector(305.203, 6705.600, 2760.300)
	angles = Vector(-138.000, -220.000, 4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop133"
	origin = Vector(408.665, 6801.391, 2762.192)
	angles = Vector(-144.000, 122.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop134"
	origin = Vector(532.372, 6867.455, 2759.839)
	angles = Vector(-142.000, 106.000, 4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop135"
	origin = Vector(744.530, 6898.438, 2762.979)
	angles = Vector(-142.000, 90.000, 2.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop136"
	origin = Vector(1020.322, 6907.384, 2763.813)
	angles = Vector(-140.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop137"
	origin = Vector(1302.813, 6908.424, 2763.836)
	angles = Vector(-140.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop138"
	origin = Vector(1519.459, 6911.670, 2763.997)
	angles = Vector(-140.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop139"
	origin = Vector(2260.968, 6559.950, 2672.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop140"
	origin = Vector(1995.729, 6720.767, 2656.031)
	angles = Vector(-0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop141"
	origin = Vector(1813.024, 6731.811, 2656.031)
	angles = Vector(0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop142"
	origin = Vector(1721.148, 6730.438, 2656.031)
	angles = Vector(-0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop143"
	origin = Vector(1656.754, 7004.809, 2672.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop144"
	origin = Vector(1657.780, 7486.747, 2672.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop145"
	origin = Vector(1827.324, 7491.376, 2656.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop146"
	origin = Vector(1826.945, 7233.037, 2656.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop147"
	origin = Vector(1656.839, 7329.021, 2672.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop148"
	origin = Vector(2259.903, 7201.316, 2672.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop149"
	origin = Vector(2257.896, 7523.608, 2672.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop150"
	origin = Vector(2335.632, 6403.251, 2672.031)
	angles = Vector(-0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop151"
	origin = Vector(2215.181, 7680.031, 2687.043)
	angles = Vector(-0.000, -0.000, -90.000)
	disableshadows = 1
	glowstate = 3
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop152"
	origin = Vector(2064.031, 7828.909, 2730.683)
	angles = Vector(90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fairgrounds/fairgrounds_electric_box001.mdl"
	targetname = "ent_prop153"
	origin = Vector(2012.770, 7882.031, 2699.095)
	angles = Vector(2.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop154"
	origin = Vector(1760.150, 7880.031, 2787.418)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop155"
	origin = Vector(1728.173, 7679.662, 2656.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/mill_railing_128.mdl"
	targetname = "ent_prop156"
	origin = Vector(1667.969, 7813.998, 2836.076)
	angles = Vector(-0.000, 90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop157"
	origin = Vector(1730.963, 7484.238, 2818.031)
	angles = Vector(0.754, -0.008, -0.610)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop158"
	origin = Vector(1823.975, 7353.121, 2817.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop159"
	origin = Vector(1821.395, 7357.462, 2856.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acvent01.mdl"
	targetname = "ent_prop160"
	origin = Vector(1869.477, 7115.842, 2818.715)
	angles = Vector(1.219, 90.000, -0.754)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop161"
	origin = Vector(2172.696, 5696.151, 2881.000)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop162"
	origin = Vector(2116.627, 6796.532, 2960.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop163"
	origin = Vector(-52.346, 5667.917, 2048.031)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop164"
	origin = Vector(-54.979, 6169.221, 1867.890)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop165"
	origin = Vector(2234.644, 5957.679, 2889.110)
	angles = Vector(0.000, 90.000, 0.326)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop166"
	origin = Vector(2308.215, 5663.721, 2886.488)
	angles = Vector(1.361, 0.024, 0.751)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop167"
	origin = Vector(2307.684, 6093.308, 2891.061)
	angles = Vector(0.325, 0.014, 0.460)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop168"
	origin = Vector(1377.628, 6241.173, 3024.507)
	angles = Vector(180.000, 90.000, 0.146)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop169"
	origin = Vector(944.685, 6238.764, 3022.396)
	angles = Vector(178.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop170"
	origin = Vector(1858.309, 5527.112, 2882.750)
	angles = Vector(0.000, 0.000, 0.750)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop171"
	origin = Vector(1567.337, 5388.279, 2881.602)
	angles = Vector(-0.000, 90.000, -0.037)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop172"
	origin = Vector(1048.859, 5384.882, 2882.688)
	angles = Vector(0.000, 90.000, 0.146)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop173"
	origin = Vector(1612.654, 5807.410, 2880.640)
	angles = Vector(-0.143, -0.001, 0.320)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop174"
	origin = Vector(1509.168, 5646.926, 2880.757)
	angles = Vector(0.553, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop175"
	origin = Vector(1509.208, 5647.512, 2920.013)
	angles = Vector(0.000, 90.000, 0.553)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop176"
	origin = Vector(1367.199, 5787.590, 2881.927)
	angles = Vector(1.146, 0.009, 0.448)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop177"
	origin = Vector(1363.507, 5788.589, 2920.957)
	angles = Vector(-0.448, 90.000, 1.146)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop178"
	origin = Vector(1364.984, 5787.557, 2959.737)
	angles = Vector(1.146, 0.009, 0.448)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop179"
	origin = Vector(767.140, 5403.773, 2756.047)
	angles = Vector(0.146, -0.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop180"
	origin = Vector(775.899, 6205.896, 2758.781)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop181"
	origin = Vector(390.871, 6205.751, 2762.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop182"
	origin = Vector(393.098, 5405.274, 2756.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop183"
	origin = Vector(517.435, 6212.785, 3138.724)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop184"
	origin = Vector(709.574, 6212.785, 3138.907)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop185"
	origin = Vector(517.483, 6076.912, 3138.825)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop186"
	origin = Vector(709.608, 6076.912, 3139.000)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop187"
	origin = Vector(645.813, 5940.895, 3139.114)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop188"
	origin = Vector(453.578, 5940.895, 3138.608)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop189"
	origin = Vector(645.679, 5805.020, 3138.796)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop190"
	origin = Vector(453.598, 5804.770, 3138.302)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop191"
	origin = Vector(517.864, 5668.995, 3138.768)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop192"
	origin = Vector(709.344, 5669.245, 3138.918)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop193"
	origin = Vector(645.675, 5533.277, 3138.247)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop194"
	origin = Vector(453.750, 5533.777, 3138.249)
	angles = Vector(90.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop195"
	origin = Vector(632.362, 6199.666, 3141.255)
	angles = Vector(-0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop196"
	origin = Vector(439.906, 6155.212, 3141.255)
	angles = Vector(-0.000, -44.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop197"
	origin = Vector(388.021, 5818.371, 3141.139)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop198"
	origin = Vector(387.279, 5461.763, 3140.780)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop199"
	origin = Vector(764.663, 6062.440, 3141.531)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop200"
	origin = Vector(768.612, 5536.531, 3140.778)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop201"
	origin = Vector(764.323, 5851.938, 3141.645)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop202"
	origin = Vector(697.928, 5412.549, 3140.278)
	angles = Vector(-0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop203"
	origin = Vector(-704.122, 7093.536, 1536.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop204"
	origin = Vector(-715.260, 7611.547, 1538.000)
	angles = Vector(0.000, -12.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop205"
	origin = Vector(-218.366, 7627.008, 1539.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop206"
	origin = Vector(-204.165, 7109.573, 1543.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop207"
	origin = Vector(-702.127, 7105.331, 2256.051)
	angles = Vector(0.000, -178.500, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop208"
	origin = Vector(-722.836, 7609.916, 2253.455)
	angles = Vector(-0.000, -88.500, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop209"
	origin = Vector(-220.741, 7616.664, 2255.073)
	angles = Vector(0.000, 1.500, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop210"
	origin = Vector(-710.245, 7095.091, 2254.851)
	angles = Vector(-0.000, -88.500, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop211"
	origin = Vector(-704.109, 7222.662, 2257.765)
	angles = Vector(90.000, 1.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop212"
	origin = Vector(-710.865, 7479.086, 2257.256)
	angles = Vector(90.000, 1.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop213"
	origin = Vector(-431.604, 7229.197, 2257.370)
	angles = Vector(90.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop214"
	origin = Vector(-438.046, 7485.800, 2257.862)
	angles = Vector(90.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop215"
	origin = Vector(-223.093, 7490.074, 2257.272)
	angles = Vector(90.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop216"
	origin = Vector(-216.678, 7234.583, 2256.725)
	angles = Vector(90.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop217"
	origin = Vector(-431.532, 7229.037, 2257.040)
	angles = Vector(90.000, 1.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop218"
	origin = Vector(-438.277, 7485.726, 2257.423)
	angles = Vector(90.000, 1.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop219"
	origin = Vector(-719.587, 7109.713, 1931.597)
	angles = Vector(-90.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop220"
	origin = Vector(-716.452, 7105.079, 1932.461)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop221"
	origin = Vector(-218.847, 7105.245, 1928.742)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop222"
	origin = Vector(-215.379, 7614.530, 1932.551)
	angles = Vector(-90.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop223"
	origin = Vector(2440.020, 6334.683, 2473.531)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop224"
	origin = Vector(2336.846, 6403.917, 2468.531)
	angles = Vector(-0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop225"
	origin = Vector(2262.174, 6563.874, 2480.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop226"
	origin = Vector(2260.039, 6880.047, 2480.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop227"
	origin = Vector(2258.400, 7201.732, 2480.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop228"
	origin = Vector(2260.532, 7524.194, 2480.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop229"
	origin = Vector(1660.219, 6564.291, 2672.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop230"
	origin = Vector(1659.419, 6433.037, 2672.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop231"
	origin = Vector(467.064, 5997.752, 3141.356)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop232"
	origin = Vector(462.555, 6042.331, 3141.356)
	angles = Vector(-0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop233"
	origin = Vector(465.814, 6016.103, 3180.387)
	angles = Vector(-2.000, -42.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop234"
	origin = Vector(1727.577, 6923.310, 2656.031)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop235"
	origin = Vector(424.875, 5329.436, 3175.261)
	angles = Vector(-136.500, -180.000, 24.500)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop236"
	origin = Vector(473.803, 5204.787, 3127.800)
	angles = Vector(-136.000, -171.000, 24.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop237"
	origin = Vector(533.357, 5087.851, 3082.325)
	angles = Vector(-136.500, -167.000, 24.500)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop238"
	origin = Vector(647.709, 4922.222, 3029.255)
	angles = Vector(-137.000, -157.000, 19.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop239"
	origin = Vector(817.181, 4721.233, 2981.693)
	angles = Vector(-138.000, -137.500, 7.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop240"
	origin = Vector(1039.697, 4564.361, 2958.264)
	angles = Vector(138.000, 60.500, -5.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop241"
	origin = Vector(1296.001, 4458.923, 2942.687)
	angles = Vector(137.000, 72.000, -1.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop242"
	origin = Vector(1964.284, 4490.563, 2626.026)
	angles = Vector(-139.000, 118.000, -40.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop243"
	origin = Vector(2186.351, 4476.975, 2524.910)
	angles = Vector(-136.000, 104.000, -28.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acvent01.mdl"
	targetname = "ent_prop244"
	origin = Vector(-224.386, 5013.400, 1728.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop245"
	origin = Vector(201.734, 6185.357, 1402.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop246"
	origin = Vector(2366.467, 4450.377, 2471.383)
	angles = Vector(-135.988, 84.000, -4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop247"
	origin = Vector(2986.610, 4315.084, 2439.859)
	angles = Vector(-144.000, -60.000, -2.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop248"
	origin = Vector(2716.701, 4287.926, 2406.579)
	angles = Vector(40.000, -90.000, 184.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop249"
	origin = Vector(2854.124, 4281.670, 2416.536)
	angles = Vector(42.000, -82.000, -172.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop250"
	origin = Vector(4604.379, 16303.912, -1615.969)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop251"
	origin = Vector(4464.215, 9107.707, -1615.969)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop252"
	origin = Vector(11601.150, 9590.348, -1615.969)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop253"
	origin = Vector(11599.121, 16304.642, -1615.969)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop254"
	origin = Vector(11599.304, 16304.198, -886.688)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop255"
	origin = Vector(11598.308, 9597.816, -886.688)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop256"
	origin = Vector(4605.468, 16301.607, -886.688)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop257"
	origin = Vector(3253.548, 4859.943, 2531.139)
	angles = Vector(-150.000, -2.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop258"
	origin = Vector(3103.442, 5997.600, 2392.459)
	angles = Vector(-222.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop259"
	origin = Vector(3141.813, 4863.509, 2321.266)
	angles = Vector(-153.500, -2.000, -179.691)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop260"
	origin = Vector(3033.069, 5876.916, 1235.500)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop261"
	origin = Vector(3277.676, 5877.793, 1249.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop262"
	origin = Vector(3275.127, 5753.027, 1246.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop263"
	origin = Vector(3030.380, 5755.353, 1252.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop264"
	origin = Vector(2652.245, 5372.031, 1998.972)
	angles = Vector(-0.000, -0.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop265"
	origin = Vector(2156.031, 5868.628, 1999.229)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop266"
	origin = Vector(2654.074, 5867.398, 1536.000)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop267"
	origin = Vector(3034.309, 5816.194, 1725.281)
	angles = Vector(-90.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop268"
	origin = Vector(3273.754, 5815.977, 1725.618)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_interiors/stair_metal_01.mdl"
	targetname = "ent_prop269"
	origin = Vector(3235.236, 5748.642, 1533.000)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/barricade001_128_reference.mdl"
	targetname = "ent_prop270"
	origin = Vector(3228.861, 5551.924, 1647.903)
	angles = Vector(-90.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/barricade001_128_reference.mdl"
	targetname = "ent_prop271"
	origin = Vector(3043.024, 5551.496, 1648.147)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop272"
	origin = Vector(3507.826, 7589.419, 1664.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop273"
	origin = Vector(3462.682, 7597.897, 1664.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop274"
	origin = Vector(2308.792, 5225.962, 2880.746)
	angles = Vector(0.326, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop275"
	origin = Vector(3349.316, 7596.208, 1664.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop276"
	origin = Vector(3347.735, 7594.229, 1703.063)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop277"
	origin = Vector(3347.978, 7596.031, 1742.094)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop278"
	origin = Vector(4469.101, 9114.572, -886.688)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop279"
	origin = Vector(2653.564, 6385.658, 1768.188)
	angles = Vector(0.000, 0.000, 90.001)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop280"
	origin = Vector(2668.033, 6165.573, 1753.375)
	angles = Vector(1.000, 89.750, -51.250)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop281"
	origin = Vector(2362.851, 5850.659, 1999.450)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop282"
	origin = Vector(2647.532, 6165.754, 1769.052)
	angles = Vector(-90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop283"
	origin = Vector(2653.280, 6165.211, 1763.021)
	angles = Vector(-0.000, 0.000, 180.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/electrical_box01.mdl"
	targetname = "ent_prop284"
	origin = Vector(2651.969, 5542.425, 2007.003)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop285"
	origin = Vector(2653.859, 5867.489, 2048.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop286"
	origin = Vector(2505.559, 5544.031, 2209.828)
	angles = Vector(90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop287"
	origin = Vector(2652.130, 5859.456, 2356.499)
	angles = Vector(0.000, 0.000, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop288"
	origin = Vector(2647.828, 5865.326, 2356.406)
	angles = Vector(-0.000, 90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop289"
	origin = Vector(2352.031, 5625.125, 2267.352)
	angles = Vector(-0.000, -90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop290"
	origin = Vector(2352.031, 5775.609, 2298.737)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop291"
	origin = Vector(2651.627, 5648.912, 2364.529)
	angles = Vector(0.000, 54.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fairgrounds/fairgrounds_electric_box001.mdl"
	targetname = "ent_prop292"
	origin = Vector(2544.880, 5548.121, 2373.261)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_fortifications/concrete_barrier001_96_reference.mdl"
	targetname = "ent_prop293"
	origin = Vector(2352.031, 5624.147, 2475.170)
	angles = Vector(-90.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop294"
	origin = Vector(2654.411, 5859.456, 2551.819)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop295"
	origin = Vector(2173.275, 5823.886, 2881.500)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop296"
	origin = Vector(2173.319, 5760.746, 2912.250)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop297"
	origin = Vector(2173.415, 5887.732, 2912.250)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop298"
	origin = Vector(2045.557, 5631.269, 2464.031)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop299"
	origin = Vector(2175.485, 5565.348, 2464.031)
	angles = Vector(-0.000, -90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop300"
	origin = Vector(2142.142, 5095.161, 2463.727)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop301"
	origin = Vector(1823.774, 5092.609, 2461.727)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop302"
	origin = Vector(1502.518, 5096.444, 2463.977)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop303"
	origin = Vector(1180.863, 5096.299, 2657.477)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop304"
	origin = Vector(863.447, 5095.426, 2654.727)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop305"
	origin = Vector(542.302, 5096.152, 2656.727)
	angles = Vector(0.000, 90.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/elevator01_framework.mdl"
	targetname = "ent_prop306"
	origin = Vector(2659.015, 5242.792, 2881.380)
	angles = Vector(-0.955, -0.017, 1.005)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/elevator01_cage.mdl"
	targetname = "ent_prop307"
	origin = Vector(2653.111, 5218.190, 3291.457)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	glowstate = 3
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop308"
	origin = Vector(3473.562, 7598.615, 1703.062)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop309"
	origin = Vector(2582.945, 5363.674, 3282.440)
	angles = Vector(-137.250, -180.750, -25.500)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop310"
	origin = Vector(2619.186, 5488.881, 3242.937)
	angles = Vector(-136.000, -182.000, -20.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop311"
	origin = Vector(2653.186, 5619.196, 3206.884)
	angles = Vector(-136.000, -180.000, -20.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop312"
	origin = Vector(3276.375, 5994.871, 2391.172)
	angles = Vector(-136.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop313"
	origin = Vector(2688.254, 5752.081, 3167.839)
	angles = Vector(-136.000, -180.000, -20.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop314"
	origin = Vector(3118.073, 5465.348, 1568.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop315"
	origin = Vector(3486.178, 5466.255, 1568.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop316"
	origin = Vector(2582.629, 7669.116, 1568.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop317"
	origin = Vector(3158.487, 7669.726, 1568.031)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop318"
	origin = Vector(2714.754, 5880.483, 3128.339)
	angles = Vector(-136.000, 184.000, -20.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop319"
	origin = Vector(2766.239, 6077.109, 3067.179)
	angles = Vector(-42.000, 0.000, 158.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop320"
	origin = Vector(2999.094, 6647.512, 2857.923)
	angles = Vector(-220.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop321"
	origin = Vector(2994.168, 7216.554, 2845.193)
	angles = Vector(-138.000, 3.000, 2.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop322"
	origin = Vector(2847.769, 6645.100, 2865.646)
	angles = Vector(-144.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop323"
	origin = Vector(2301.051, 8340.223, 2665.611)
	angles = Vector(-142.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop324"
	origin = Vector(1734.957, 8343.273, 2664.290)
	angles = Vector(-142.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop325"
	origin = Vector(1161.489, 8345.268, 2662.287)
	angles = Vector(-142.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop326"
	origin = Vector(2939.567, 7634.951, 2817.999)
	angles = Vector(-41.410, -169.250, -172.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop327"
	origin = Vector(2853.217, 7897.346, 2787.153)
	angles = Vector(42.000, 15.000, 171.415)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop328"
	origin = Vector(2743.095, 8151.969, 2745.883)
	angles = Vector(-222.000, 202.000, -8.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade4.mdl"
	targetname = "ent_prop329"
	origin = Vector(2186.339, 8192.092, 2653.749)
	angles = Vector(138.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop330"
	origin = Vector(808.200, 8334.979, 2650.895)
	angles = Vector(-138.000, 102.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop331"
	origin = Vector(666.190, 8289.200, 2644.147)
	angles = Vector(-138.000, 110.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop332"
	origin = Vector(543.134, 8232.937, 2644.040)
	angles = Vector(-138.000, -232.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop333"
	origin = Vector(442.247, 8142.625, 2646.178)
	angles = Vector(-138.000, 138.000, -4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop334"
	origin = Vector(302.384, 7991.503, 2650.216)
	angles = Vector(-138.000, -220.000, -4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop335"
	origin = Vector(429.439, 7885.882, 2657.071)
	angles = Vector(-146.000, -44.000, 4.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop336"
	origin = Vector(58.874, 7565.762, 2500.385)
	angles = Vector(136.000, 143.250, 26.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop337"
	origin = Vector(-651.613, 7499.663, 2259.787)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop338"
	origin = Vector(-649.985, 7456.753, 2259.787)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop339"
	origin = Vector(-650.162, 7481.952, 2298.819)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop340"
	origin = Vector(-703.291, 7093.343, 2262.281)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop341"
	origin = Vector(-204.779, 7109.572, 2270.281)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop342"
	origin = Vector(-218.376, 7624.353, 2264.281)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mall/column_04.mdl"
	targetname = "ent_prop343"
	origin = Vector(-714.437, 7613.066, 2267.281)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop344"
	origin = Vector(-621.801, 7341.423, 2260.296)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop345"
	origin = Vector(-621.811, 7342.219, 2299.327)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop346"
	origin = Vector(-622.527, 7342.806, 2338.359)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop347"
	origin = Vector(-499.410, 7266.330, 2259.901)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop348"
	origin = Vector(-503.503, 7270.472, 2298.933)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop349"
	origin = Vector(-506.421, 7271.216, 2337.964)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop350"
	origin = Vector(-506.138, 7270.821, 2376.995)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop351"
	origin = Vector(-214.606, 7111.490, 2486.706)
	angles = Vector(0.000, 91.500, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop352"
	origin = Vector(-700.486, 7104.376, 2486.768)
	angles = Vector(0.000, 1.500, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop353"
	origin = Vector(-204.284, 7117.217, 2486.619)
	angles = Vector(0.000, 1.500, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop354"
	origin = Vector(-214.253, 7621.184, 2486.581)
	angles = Vector(-0.000, -87.500, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop355"
	origin = Vector(-368.808, 7198.575, 2259.571)
	angles = Vector(-0.000, -180.000, -0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop356"
	origin = Vector(-370.240, 7199.334, 2298.603)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop357"
	origin = Vector(-367.617, 7198.555, 2337.634)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop358"
	origin = Vector(-373.312, 7201.126, 2376.665)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop359"
	origin = Vector(-364.433, 7199.558, 2415.696)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop360"
	origin = Vector(-215.513, 7360.611, 2483.978)
	angles = Vector(-0.000, -88.500, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop361"
	origin = Vector(-704.207, 7476.856, 2487.420)
	angles = Vector(90.000, 1.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop362"
	origin = Vector(-297.080, 7488.008, 2486.160)
	angles = Vector(89.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop363"
	origin = Vector(-433.064, 7484.040, 2486.971)
	angles = Vector(90.000, -178.500, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop364"
	origin = Vector(-427.820, 7782.972, 2633.073)
	angles = Vector(-90.000, 91.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop365"
	origin = Vector(-300.930, 7556.092, 2565.771)
	angles = Vector(56.998, 90.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade3.mdl"
	targetname = "ent_prop366"
	origin = Vector(-553.192, 7546.006, 2706.003)
	angles = Vector(57.000, -89.000, -90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop367"
	origin = Vector(-701.176, 7630.503, 2795.367)
	angles = Vector(-0.000, -0.000, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop368"
	origin = Vector(-695.145, 7615.482, 2792.396)
	angles = Vector(-90.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop369"
	origin = Vector(-221.312, 7607.451, 2794.865)
	angles = Vector(0.000, -0.000, 90.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop370"
	origin = Vector(-227.343, 7154.952, 2796.278)
	angles = Vector(-90.000, 2.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop371"
	origin = Vector(-693.145, 7423.511, 2789.915)
	angles = Vector(-90.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop372"
	origin = Vector(-736.145, 7280.934, 2794.267)
	angles = Vector(90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop373"
	origin = Vector(-600.438, 7280.984, 2795.043)
	angles = Vector(90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop374"
	origin = Vector(-466.151, 7282.235, 2794.570)
	angles = Vector(90.000, -0.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_256.mdl"
	targetname = "ent_prop375"
	origin = Vector(-195.343, 7281.906, 2795.279)
	angles = Vector(90.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop376"
	origin = Vector(655.843, 4339.641, 1448.031)
	angles = Vector(0.000, 26.323, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop377"
	origin = Vector(531.361, 4407.069, 1464.031)
	angles = Vector(-0.000, -91.221, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop378"
	origin = Vector(352.350, 4418.447, 1492.000)
	angles = Vector(-0.000, -102.660, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop379"
	origin = Vector(217.935, 4500.282, 1508.000)
	angles = Vector(-0.000, -139.532, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop380"
	origin = Vector(56.765, 4421.410, 1536.000)
	angles = Vector(-0.000, -125.717, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop381"
	origin = Vector(-7.825, 5111.242, 1608.000)
	angles = Vector(-0.000, 19.035, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop382"
	origin = Vector(98.606, 5210.587, 1644.000)
	angles = Vector(-0.000, -15.813, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop383"
	origin = Vector(213.962, 5314.852, 1676.000)
	angles = Vector(0.000, 9.267, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop384"
	origin = Vector(213.257, 5314.995, 1688.000)
	angles = Vector(-180.000, 7.955, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop385"
	origin = Vector(96.743, 5209.987, 1660.750)
	angles = Vector(-180.000, -15.625, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop386"
	origin = Vector(-7.901, 5110.236, 1745.750)
	angles = Vector(0.000, -70.853, -180.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop387"
	origin = Vector(3138.670, 5992.580, 1500.000)
	angles = Vector(0.000, 166.955, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop388"
	origin = Vector(3090.051, 6136.628, 1536.000)
	angles = Vector(-0.000, -176.765, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop389"
	origin = Vector(3145.973, 6316.161, 1536.000)
	angles = Vector(0.000, 164.579, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop390"
	origin = Vector(3157.873, 6477.021, 1536.000)
	angles = Vector(-0.000, 147.683, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop391"
	origin = Vector(3126.718, 6634.507, 1520.000)
	angles = Vector(-0.000, 132.899, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop392"
	origin = Vector(3215.429, 6803.910, 1530.000)
	angles = Vector(-1.000, 104.563, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop393"
	origin = Vector(3331.427, 6973.176, 1496.000)
	angles = Vector(0.000, 76.051, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop394"
	origin = Vector(3194.352, 7496.077, 1536.000)
	angles = Vector(-0.000, 106.323, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop395"
	origin = Vector(3065.462, 7356.940, 1500.000)
	angles = Vector(-0.000, 151.467, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop396"
	origin = Vector(2990.555, 7235.876, 1520.000)
	angles = Vector(-0.000, 178.307, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop397"
	origin = Vector(2929.214, 7091.697, 1533.000)
	angles = Vector(-0.000, 145.747, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop398"
	origin = Vector(2826.167, 6959.173, 1505.000)
	angles = Vector(-0.000, 162.555, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop399"
	origin = Vector(2685.494, 6867.418, 1534.000)
	angles = Vector(-0.000, -150.453, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop400"
	origin = Vector(2624.546, 6728.979, 1536.000)
	angles = Vector(-0.000, 158.507, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop401"
	origin = Vector(2629.896, 6573.598, 1511.000)
	angles = Vector(-0.000, -156.261, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop402"
	origin = Vector(2596.174, 6408.159, 1536.000)
	angles = Vector(-0.000, -143.589, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop403"
	origin = Vector(3335.132, 7151.269, 1477.000)
	angles = Vector(-0.000, 1.523, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_rooftop/acunit2.mdl"
	targetname = "ent_prop404"
	origin = Vector(255.393, 5555.969, 2045.967)
	angles = Vector(-90.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop405"
	origin = Vector(2067.362, 6443.254, 2717.000)
	angles = Vector(-0.000, -157.749, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop406"
	origin = Vector(2066.385, 6635.247, 2765.000)
	angles = Vector(0.000, 59.443, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop407"
	origin = Vector(1279.042, 5678.080, 2788.952)
	angles = Vector(-0.000, -124.749, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop408"
	origin = Vector(1157.743, 5762.200, 2812.381)
	angles = Vector(-0.000, 138.627, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop409"
	origin = Vector(1027.884, 5683.604, 2841.319)
	angles = Vector(-0.000, -138.301, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_cemetery/cemetery_column.mdl"
	targetname = "ent_prop410"
	origin = Vector(851.742, 5752.455, 2860.698)
	angles = Vector(-0.000, 148.923, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_street/police_barricade2.mdl"
	targetname = "ent_prop411"
	origin = Vector(3093.375, 4412.198, 2449.804)
	angles = Vector(-146.000, -32.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop412"
	origin = Vector(1259.071, 5211.969, 2893.569)
	angles = Vector(-0.178, -181.016, -79.752)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop413"
	origin = Vector(1272.507, 5211.969, 2884.510)
	angles = Vector(2.500, -0.250, 78.750)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop414"
	origin = Vector(1271.486, 5223.216, 2895.031)
	angles = Vector(78.000, -99.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop415"
	origin = Vector(1295.004, 5269.339, 2876.080)
	angles = Vector(-0.573, 6.000, 78.500)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_mill/column_01.mdl"
	targetname = "ent_prop416"
	origin = Vector(1291.288, 5265.308, 2895.664)
	angles = Vector(0.000, 0.000, 82.500)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop417"
	origin = Vector(521.189, 5801.292, 2848.000)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop418"
	origin = Vector(518.536, 5748.603, 2848.000)
	angles = Vector(-0.000, 90.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_crates/static_crate_40.mdl"
	targetname = "ent_prop419"
	origin = Vector(512.759, 5770.279, 2884.956)
	angles = Vector(-0.000, 0.000, -6.340)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop420"
	origin = Vector(2440.020, 6314.683, 2650.531)
	angles = Vector(-0.000, -180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_equipment/securitycheckpoint.mdl"
	targetname = "ent_prop421"
	origin = Vector(1647.762, 4608.034, 1184.031)
	angles = Vector(0.000, 0.000, 0.000)
	disableshadows = 1
	glowstate = 3
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_equipment/securitycheckpoint.mdl"
	targetname = "ent_prop422"
	origin = Vector(-485.813, 7214.794, 2797.574)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	glowstate = 3
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop423"
	origin = Vector(2168.702, 5712.225, 2455.031)
	angles = Vector(0.000, 90.000, 0.000)
	disableshadows = 1
	glowstate = 3
	rendermode = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================

hTable =
{
	model = "models/props_urban/fence_cover001_128.mdl"
	targetname = "ent_prop424"
	origin = Vector(2344.798, 5622.466, 2672.031)
	angles = Vector(0.000, 180.000, 0.000)
	disableshadows = 1
	solid = 6
}
SpawnEntityFromTable("prop_dynamic", hTable);

//============================================================
//============================================================