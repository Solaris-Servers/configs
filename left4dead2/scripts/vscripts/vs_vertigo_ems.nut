//Squirrel

const MAXCLIENTS = 32;
const MAX_HEALTH = 10000;
const ADRENALINE_HEALTH = 750;
const FIERYPILLS_TIME = 5.0;

::g_bIsPlayerStarted <- array(MAXCLIENTS + 1, false);
::g_fTime <- array(MAXCLIENTS + 1, 0.0);
::g_hPlayerPos <- array(MAXCLIENTS + 1, null);
::g_fDamage <- array(MAXCLIENTS + 1, 0.0);
::g_nTeleports <- array(MAXCLIENTS + 1, 0);
::g_nSaves <- array(MAXCLIENTS + 1, 0);
::g_bIsNoDmg <- array(MAXCLIENTS + 1, false);
if (!("g_bIsSourceMod" in getroottable()))
{
    ::g_bIsSourceMod <- false;
    ::g_bMode <- false;
}

Convars.SetValue("z_difficulty", "Easy");
Convars.SetValue("director_afk_timeout", 60);
Convars.SetValue("director_no_bosses", 1);
Convars.SetValue("director_no_mobs", 1);
Convars.SetValue("director_no_specials", 1);
Convars.SetValue("director_no_death_check", 1);
Convars.SetValue("z_common_limit", 0);
Convars.SetValue("sb_stop", 1);

Convars.SetValue("sv_noclipspeed", 5);
Convars.SetValue("sv_specspeed", 5);

//========================================================================================================================
//Hooks
//========================================================================================================================

function OnGameEvent_player_use(event)
{
    if (EntIndexToHScript(event.targetid).GetClassname() == "weapon_pistol")
    {
        local iCount = 0;
        local hEntity = null;
        while ((hEntity = Entities.FindByClassname(hEntity, "weapon_pistol")) != null)
        {
            iCount++;
            if (iCount >= 16)
            {
                hEntity.Kill();
            }
        }
    }
}

function OnGameEvent_round_start(event)
{
    IncludeScript("vs_vertigo.nut");
    IncludeScript("vertigo_scripts/vs_mannequin_horror.nut");
    if (g_bMode)
    {
        Say(null, "INSANE MODE ACTIVATED!\nGodmode is disabled.\nAdrenaline adds " + ADRENALINE_HEALTH + " hp and 260 vel. to run speed.\nFiery Pills ignore damage for " + FIERYPILLS_TIME + " sec.\nMedkit adds 65% hp.\nGood luck!", false);
        IncludeScript("vertigo_scripts/vs_insane_items.nut");
        Convars.SetValue("god", 0);
        Convars.SetValue("survivor_incap_max_fall_damage", 0);
        Convars.SetValue("survivor_incap_health", 3);
        Convars.SetValue("first_aid_kit_max_heal", MAX_HEALTH);
        Convars.SetValue("first_aid_heal_percent", 0.65);
        Convars.SetValue("adrenaline_health_buffer", 0);
        Convars.SetValue("pain_pills_health_threshold", MAX_HEALTH);
        Convars.SetValue("pain_pills_health_value", 0);
        Convars.SetValue("z_survivor_respawn_health", MAX_HEALTH/3);
        SendToServerConsole("kick bill; kick francis; kick zoey; kick louis");
    }
    else
    {
        Convars.SetValue("god", 1);
    }
}

function OnGameEvent_player_spawn(event)
{
    local hPlayer = GetPlayerFromUserID(event.userid);
    if (g_bMode)
    {
        NetProps.SetPropInt(hPlayer, "m_iMaxHealth", MAX_HEALTH);
    }
    else
    {
        DoEntFire("!self", "DisableLedgeHang", "", 0.0, null, hPlayer);
    }
}

function OnGameEvent_pills_used(event)
{
    local hPlayer = GetPlayerFromUserID(event.subject);
    g_bIsNoDmg[hPlayer.GetEntityIndex()] = true;
    DoEntFire("!self", "IgnoreFallDamageWithoutReset", "" + FIERYPILLS_TIME, 0.0, null, hPlayer);
    DoEntFire("!self", "IgniteLifeTime", "" + FIERYPILLS_TIME, 0.0, null, hPlayer);
    DoEntFire("!self", "RunScriptCode", "g_bIsNoDmg[" + hPlayer.GetEntityIndex() + "] = false", FIERYPILLS_TIME, null, hPlayer);
}

function OnGameEvent_adrenaline_used(event)
{
    local hPlayer = GetPlayerFromUserID(event.subject);
    if ((MAX_HEALTH - hPlayer.GetHealth()) <= ADRENALINE_HEALTH)
    {
        hPlayer.GiveItem("health");
    }
    else
    {
        hPlayer.SetHealth(hPlayer.GetHealth() + ADRENALINE_HEALTH);
    }
}

function OnGameEvent_player_falldamage(event)
{
    local client = GetPlayerFromUserID(event.userid).GetEntityIndex();
    if (!g_bIsNoDmg[client])
    {
        g_fDamage[client] += event.damage;
    }
}

function OnGameEvent_player_death(event)
{
    local hPlayer = null;
    while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
    {
        if (!IsPlayerABot(hPlayer) && !hPlayer.IsDead())
        {
            return;
        }
    }
    Convars.SetValue("mp_restartgame", 1);
}

function OnGameEvent_player_disconnect(event)
{
    local hPlayer = GetPlayerFromUserID(event.userid);
    if (hPlayer != null)
    {
        g_bIsPlayerStarted[hPlayer.GetEntityIndex()] = false;
    }
}

function InterceptChat(msg, hPlayer)
{
    if (!g_bIsSourceMod && hPlayer != null)
    {
        local client = hPlayer.GetEntityIndex();
        local sText = msg.slice((hPlayer.GetPlayerName().len() + 2), msg.len() - 1);
        if (sText == "!tp")
        {
            VertigoTeleport(client);
        }
        else if (sText == "!save")
        {
            VertigoSave(client);
        }
        else if (sText == "!reset")
        {
            VertigoReset(client);
        }
        else if (sText == "!mode" && hPlayer == Ent("!player"))
        {
            VertigoMode();
        }
        else if (sText == "!bhop" && hPlayer == Ent("!player"))
        {
            local hEntity = null;
            if ((hEntity = Entities.FindByName(null, "ent_vertigo_bhop_ent")) == null)
            {
                Say(null, "AutoBhop ON", false);
                SpawnEntityFromTable("logic_timer", {targetname = "ent_vertigo_bhop_ent", RefireTime = 0.01, OnTimer = "!caller,RunScriptCode,AutoBhop()"});
            }
            else
            {
                Say(null, "AutoBhop OFF", false);
                hEntity.Kill();
                local hPlayer = null;
                while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
                {
                    NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", NetProps.GetPropInt(hPlayer, "m_afButtonDisabled") & ~IN_JUMP);
                }
            }
        }
    }
}

//========================================================================================================================
//Funcs
//========================================================================================================================

::CallbackStartTouch <- function()
{
    if (activator != null)
    {
        local client = activator.GetEntityIndex();
        local sName = caller.GetName();
        if (sName == "trigger_teleport1")
        {
            if (g_bMode)
            {
                activator.SetHealth(MAX_HEALTH);
            }
            g_bIsPlayerStarted[client] = false;
        }
        else if (sName == "trigger_start")
        {
            if (!g_bIsPlayerStarted[client])
            {
                EmitSoundOn("EDIT_TOGGLE_PLACE_MODE", activator);
                g_bIsPlayerStarted[client] = true;
                g_fTime[client] = Time();
                g_hPlayerPos[client] = null;
                g_fDamage[client] = 0.0;
                g_nTeleports[client] = 0;
                g_nSaves[client] = 0;
                g_bIsNoDmg[client] = false;
            }
        }
        else if (sName == "trigger_finish")
        {
            if (g_bIsPlayerStarted[client])
            {
                EmitSoundOn("Bot.StuckSound", activator);
                Say(null, "Finished " + activator.GetPlayerName() + " in " + format("%.03f", (Time() - g_fTime[client])) + "s\n" + g_fDamage[client].tointeger() + " hp total damage.\n" + g_nTeleports[client] + " teleports.\n" + g_nSaves[client] + " saves.", false);
                g_bIsPlayerStarted[client] = false;
            }
        }
        else if (sName == "trigger_ignoredamage")
        {
            g_bIsNoDmg[client] = true;
            DoEntFire("!self", "RunScriptCode", "g_bIsNoDmg[" + client + "] = false", 3.0, null, activator);
        }
        else if (sName.find("trigger_teleport", 0) != null)
        {
            activator.SetVelocity(Vector());
            EmitSoundOn("EDIT_TOGGLE_PLACE_MODE", activator);
        }
    }
}

::VertigoTeleport <- function(client)
{
    local hPlayer = PlayerInstanceFromIndex(client);
    if (g_hPlayerPos[client] != null && NetProps.GetPropEntity(hPlayer, "m_hGroundEntity") != null)
    {
        if (NetProps.GetPropEntity(hPlayer, "m_hUseEntity") == null)
        {
            hPlayer.SetVelocity(Vector());
            hPlayer.SetOrigin(g_hPlayerPos[client]);
            g_nTeleports[client]++;
        }
    }
}

::VertigoSave <- function(client)
{
    local hPlayer = PlayerInstanceFromIndex(client);
    if (NetProps.GetPropEntity(hPlayer, "m_hGroundEntity") != null)
    {
        g_hPlayerPos[client] = hPlayer.GetOrigin();
        EmitSoundOn("Buttons.snd37", hPlayer);
        g_nSaves[client]++;
    }
}

::VertigoReset <- function(client)
{
    if (!g_bMode)
    {
        local hPlayer = PlayerInstanceFromIndex(client);
        if (hPlayer.IsSurvivor() && !hPlayer.IsDead())
        {
            hPlayer.SetVelocity(Vector());
            hPlayer.SetOrigin(Vector(5401.283691, 8429.540039, 5561.027344));
        }
    }
}

::VertigoMode <- function()
{
    g_bMode = !g_bMode;
    Convars.SetValue("mp_restartgame", 1);
}

::AutoBhop <- function()
{
    local hPlayer = null;
    while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
    {
        if (!(NetProps.GetPropInt(hPlayer, "m_fFlags") & (1 << 0)))
        {
            if (NetProps.GetPropInt(hPlayer, "m_MoveType") != 9)
            {
                if (NetProps.GetPropInt(hPlayer, "m_nWaterLevel") < 2)
                {
                    NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", NetProps.GetPropInt(hPlayer, "m_afButtonDisabled") | g_MapScript.IN_JUMP);
                    continue;
                }
            }
        }
        NetProps.SetPropInt(hPlayer, "m_afButtonDisabled", NetProps.GetPropInt(hPlayer, "m_afButtonDisabled") & ~g_MapScript.IN_JUMP);
    }
}