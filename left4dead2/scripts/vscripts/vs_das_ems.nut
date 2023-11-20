//Squirrel

const MAXCLIENTS = 32;
const MODE_TIMER = 120.0;
const COUNTDOWN = 20.0;
::START_POS <- Vector(-14550.0, -16050.0, 8000.0);

::g_bIsPlayerStarted <- array(MAXCLIENTS + 1, false);
::g_fTime <- array(MAXCLIENTS + 1, 0.0);
::g_bMode <- false;
::g_hHUD <-
{
    Fields =
    {
        countdown = {slot = HUD_SCORE_1, special = HUD_SPECIAL_TIMER0, flags = HUD_FLAG_NOTVISIBLE | HUD_FLAG_COUNTDOWN_WARN | HUD_FLAG_BEEP}
        info = {slot = HUD_SCORE_2, dataval = 0, flags = HUD_FLAG_NOTVISIBLE}
        leaderboard = {slot = HUD_SCORE_3, dataval = 0, flags = HUD_FLAG_NOTVISIBLE | HUD_FLAG_ALIGN_LEFT}
    }
}
::g_hMode <-
{
    player = array(MAXCLIENTS + 1, false)
    total = 0
    size = 0.0
    winner = "N/A"
}

if (!("g_bIsSourceMod" in getroottable()))
{
    ::g_bIsSourceMod <- false;
}

Convars.SetValue("z_difficulty", "Easy");
Convars.SetValue("director_afk_timeout", 999999);
Convars.SetValue("director_no_bosses", 1);
Convars.SetValue("director_no_mobs", 1);
Convars.SetValue("director_no_specials", 1);
Convars.SetValue("director_no_death_check", 1);
Convars.SetValue("z_common_limit", 0);
Convars.SetValue("sb_stop", 1);

Convars.SetValue("god", 1);
Convars.SetValue("sv_noclipspeed", 15);
Convars.SetValue("sv_specspeed", 15);

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
    IncludeScript("vs_das.nut");
}

function OnGameEvent_player_spawn(event)
{
    local hPlayer = GetPlayerFromUserID(event.userid);
    if (IsPlayerABot(hPlayer))
    {
        DoEntFire("!self", "AddOutput", "origin -6709.877441, 12065.308594, 181.974670", 0.1, null, hPlayer);
    }
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
            DAS_Teleport(client);
        }
        else if (sText == "!mode")
        {
            DAS_Mode(client);
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
            if (!IsPlayerABot(activator))
            {
                activator.SetVelocity(Vector());
                activator.SetOrigin(START_POS);
            }
        }
        else if (sName == "trigger_teleport2")
        {
            EmitSoundOn("EDIT_TOGGLE_PLACE_MODE", activator);
            activator.SetVelocity(Vector());
            activator.SetOrigin(START_POS);
        }
        else if (sName == "trigger_start")
        {
            g_bIsPlayerStarted[client] = true;
            g_fTime[client] = Time();
        }
        else if (sName == "trigger_finish")
        {
            if (g_bIsPlayerStarted[client])
            {
                local fTime = Time() - g_fTime[client];
                local sSound = "";
                local sSkill = "";
                if (fTime < 80.0)
                {
                    sSound = "npc/moustachio/strengthlvl5_sostrong.wav";
                    if (fTime < 75.0)
                    {
                        sSkill = "♛☆ϟ✪★";
                    }
                    else if (fTime < 76.0)
                    {
                        sSkill = "★✪♛ϟ";
                    }
                    else if (fTime < 77.5)
                    {
                        sSkill = "★✪♛";
                    }
                    else
                    {
                        sSkill = "★✪☆☆☆";
                    }
                }
                else if (fTime < 90.0)
                {
                    sSound = "npc/moustachio/strengthlvl4_notbad.wav";
                    if (fTime < 82.5)
                    {
                        sSkill = "★✪☆☆";
                    }
                    else if (fTime < 85.0)
                    {
                        sSkill = "★✪☆";
                    }
                    else
                    {
                        sSkill = "★☆☆☆";
                    }
                }
                else if (fTime < 100.0)
                {
                    sSound = "npc/moustachio/strengthlvl3_oldpeanut.wav";
                    if (fTime < 95.0)
                    {
                        sSkill = "★☆☆";
                    }
                    else
                    {
                        sSkill = "★☆";
                    }
                }
                else if (fTime < 110.0)
                {
                    sSound = "npc/moustachio/strengthlvl2_babypeanut.wav";
                    if (fTime < 105.0)
                    {
                        sSkill = "☆☆☆";
                    }
                    else
                    {
                        sSkill = "☆☆";
                    }
                }
                else
                {
                    sSound = "npc/moustachio/strengthlvl1_littlepeanut.wav";
                    if (fTime < 120.0)
                    {
                        sSkill = "☆";
                    }
                }
                EmitSoundOn(sSound, activator);
                Say(null, "Finished " + activator.GetPlayerName() + " in " + format("%.03f", fTime) + "s " + sSkill, false);
                g_bIsPlayerStarted[client] = false;
                if (g_bMode && !g_hMode.player[client] && g_hMode.total < 5)
                {
                    g_hMode.player[client] = true;
                    g_hMode.total++;
                    g_hMode.size += 0.03;
                    local sPlace = "";
                    local sShortName = activator.GetPlayerName();
                    if (sShortName.len() > 20)
                    {
                        sShortName = sShortName.slice(0, 20);
                    }
                    if (g_hMode.total == 1)
                    {
                        g_hHUD.Fields.leaderboard.flags = g_hHUD.Fields.leaderboard.flags & ~g_MapScript.HUD_FLAG_NOTVISIBLE;
                        g_hMode.winner = activator.GetPlayerName();
                        sPlace = format("%dst", g_hMode.total);
                    }
                    else if (g_hMode.total == 2)
                    {
                        sPlace = format("%s\n%dnd", g_hHUD.Fields.leaderboard.dataval, g_hMode.total);
                    }
                    else if (g_hMode.total == 3)
                    {
                        sPlace = format("%s\n%drd", g_hHUD.Fields.leaderboard.dataval, g_hMode.total);
                    }
                    else
                    {
                        sPlace = format("%s\n%dth", g_hHUD.Fields.leaderboard.dataval, g_hMode.total);
                    }
                    g_hHUD.Fields.leaderboard.dataval = format("%s %s", sPlace, sShortName);
                    HUDPlace(g_MapScript.HUD_SCORE_3, 0.77, 0.011, 0.22, g_hMode.size);
                }
            }
        }
    }
}

::DAS_Teleport <- function(client)
{
    local hPlayer = PlayerInstanceFromIndex(client);
    if (hPlayer.IsSurvivor() && !hPlayer.IsDead())
    {
        hPlayer.SetVelocity(Vector());
        hPlayer.SetOrigin(START_POS);
    }
}

::DAS_Mode <- function(client)
{
    local hPlayer = PlayerInstanceFromIndex(client);
    if (!g_bMode && hPlayer.IsSurvivor())
    {
        g_bMode = true;
        Say(null, "Player " + hPlayer.GetPlayerName() + " started the match.", false);
        g_hHUD.Fields.info.dataval = "Get ready...";
        g_hHUD.Fields.info.flags = 0;
        HUDPlace(g_MapScript.HUD_SCORE_2, 0.435, 0.011, 0.13, 0.03);
        HUDPlace(g_MapScript.HUD_SCORE_1, 0.4655, 0.011, 0.07, 0.03);
        HUDSetLayout(g_hHUD);
        EntFire("worldspawn", "RunScriptCode", "DAS_Timer()", 5.0);
        EntFire("ent_clip1", "Enable");
        local hPlayer = null;
        while ((hPlayer = Entities.FindByClassname(hPlayer, "player")) != null)
        {
            if (hPlayer.IsSurvivor() && !hPlayer.IsDead())
            {
                if (!IsPlayerABot(hPlayer))
                {
                    hPlayer.SetVelocity(Vector());
                    hPlayer.SetOrigin(START_POS);
                }
            }
        }
    }
}

::DAS_Timer <- function(value = 0)
{
    if (value == 0)
    {
        g_hHUD.Fields.info.flags = g_MapScript.HUD_FLAG_NOTVISIBLE;
        g_hHUD.Fields.countdown.flags = g_hHUD.Fields.countdown.flags & ~g_MapScript.HUD_FLAG_NOTVISIBLE;
        HUDManageTimers(g_MapScript.HUD_SPECIAL_TIMER0, g_MapScript.TIMER_COUNTDOWN, COUNTDOWN - 5.0);
        SpawnEntityFromTable("logic_timer", {targetname = "ent_frame_timer", refiretime = 0.01}).ConnectOutput("OnTimer", "DAS_Timer_Think");
    }
    else if (value == 1)
    {
        g_hHUD.Fields.info.flags = g_MapScript.HUD_FLAG_NOTVISIBLE;
    }
    else if (value == 2)
    {
        Say(null, format("Winner is %s\nMatch can be restarted.", g_hMode.winner), false);
        g_bMode = false;
        if (g_hMode.total > 0)
        {
            g_hHUD.Fields.leaderboard.flags = g_hHUD.Fields.leaderboard.flags | g_MapScript.HUD_FLAG_BLINK;
        }
    }
    else if (value == 3)
    {
        g_hMode.player = array(MAXCLIENTS + 1, false);
        g_hMode.total = 0;
        g_hMode.size = 0.0;
        g_hMode.winner = "N/A";
        g_hHUD.Fields.leaderboard.dataval = 0;
        g_hHUD.Fields.leaderboard.flags = g_hHUD.Fields.leaderboard.flags | g_MapScript.HUD_FLAG_NOTVISIBLE;
        g_hHUD.Fields.leaderboard.flags = g_hHUD.Fields.leaderboard.flags & ~g_MapScript.HUD_FLAG_BLINK;
    }
}

::DAS_Timer_Think <- function()
{
    if (HUDReadTimer(g_MapScript.HUD_SPECIAL_TIMER0) <= 1.0)
    {
        g_hHUD.Fields.countdown.flags = g_hHUD.Fields.countdown.flags | g_MapScript.HUD_FLAG_NOTVISIBLE;
        g_hHUD.Fields.info.dataval = "Start!";
        g_hHUD.Fields.info.flags = 0;
        HUDSetLayout(g_hHUD);
        HUDManageTimers(g_MapScript.HUD_SPECIAL_TIMER0, g_MapScript.TIMER_DISABLE, 0.0);
        EntFire("worldspawn", "RunScriptCode", "DAS_Timer(1)", 5.0);
        EntFire("worldspawn", "RunScriptCode", "DAS_Timer(2)", MODE_TIMER);
        EntFire("worldspawn", "RunScriptCode", "DAS_Timer(3)", MODE_TIMER + 10.0);
        EntFire("ent_clip1", "Disable");
        EntFire("ent_frame_timer", "Kill");
    }
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