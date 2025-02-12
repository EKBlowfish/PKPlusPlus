PK++ Mod for Painkiller
=======================

Date:      15:44 16/05/2005
Site:      http://www.pkeuro.com
Contact:   mods@pkeuro.com
Version:   1.2.1.64

General Mod Overview
====================

PK++ is a modification for the game Painkiller, specifically made for
tournaments, online, and offine play. The mod consists of the follow .Pak files:

	PKPlus.pak
	PKPlusData.pak
	Fonts.pak
	Locs.pak
	Waypoints.pak
	Mapview.pak
	Hitsounds.pak

Which are to be located in your \Painkiller\Data\ directory. To start the game
with PK++ loaded, add -lscripts PKPlus.pak in the command line, such that the
game is run:

\Painkiller\Bin\Painkiller.exe -lscripts PKPlus.pak

On running the first time, your game may create some external folders. You may
edit the contents at your own risk.

NOTE: How to run with ASE, QTracker etc. :

	Edit your game executable in the application options to run 
		
	Painkiller.exe -lscripts pkplus.pak

NOTE: This mod requires that you have the latest PK version installed.


Running Windows or Linux Dedicated Server
=========================================

Windows:

\Painkiller\Bin\Painkiller.exe -dedicated -config config.ini -lscripts PKPlus.pak

Linux:

Rename the PKPlus.pak to LScripts.pak replacing the original one. Run in the 
usual way. The 1.62 PK Linux server is not accepting command lines parameters due
to PCF's oversight, so renaming of PKPlus.pak to LScripts.pak is required.

The following descriptions give information on all available commands (and their
options) for PK++ for Painkiller for both clients and the server console.

=============
PK++ Features
=============

Some features requires PK++ to be installed on server. NOTE: It will take up to 20 seconds for you to auth with a PK++ server, be patient! Once authed you will recieve stats and info in spec HUD.

These features include rcon, referee, stats, spectator hud information.

================
Rcon and Referee
================

Rcon allows a client to type directly into the server console. This only happens if a rconpassword is set on the server, AND if the client's rconpassword matches the server's.

To set an rcon password, edit the config.ini file and type in Cfg.RconPass = "", if this is left blank (i.e. = ""), rcon is disabled. Alternatively type \rconpass <password> directly into the server console whilst the server is running.

On the client, connect to the server, and type 

\rconpass <password>

where <password> matches the server password exactly.

Following this you can type \rcon commands. Examples of these might be

\rcon map dm_sacred
\rcon restartmap
\rcon kickid 4
\rcon quit

Obviously if you wish to change your rconpassword via rcon, you can do this also:

\rcon rconpassword <newpassword>

But you will need to set your new password on the client immediately after.


Referee works like rcon, except for two important differences. Firstly that the commands a referee uses can only be callvote-enabled commands, and secondly, a client can be made referee either by using a refereepassword, OR by being callvoted to referee status.

To set an referee password, edit the config.ini file and type in Cfg.RefPass = "", if this is left blank (i.e. = ""), referee is disabled. Alternatively type \refpass <password> directly into the server console whilst the server is running.

On the client, connect to the server, and type 

\refpass <password>

where <password> matches the server password exactly.

Alternatively, a referee status can be callvoted. For this, firstly the clientID is required. This can be found on client or server by typing the command: \players . This will return something like the following.

4 maniax
6 outs

Using these numbers, a player status can be callvoted, for example:

\callvote referee 4

Will callvote maniax to referee status.

Following this you can type \ref commands. Examples of these might be

\ref map dm_sacred
\ref restartmap

A referee password cannot be changed remotely unless the client uses rcon.

========
Commands
========

    addbot		-		Server only. Adds a bot to the server.
    addloc		-		Server only. Adds a location name.
    addwaypoint		-		Server only. Adds a waypoint.
    allowbrightskins		-		Server only. Toggles brightskins on/off.
    allowbunnyhopping		-		Server only. Toggles bunnyhopping on/off
    allowforwardrj		-		Server only. Toggles forward rocket jumping on/off.
    allready		-		Server only. Sets all players to ready.
    allunready		-		Server only. Sets all players to unready.
    altscoreboard		-		Client only. Toggles alternative scoreboard colours (on new scoreboard).
    ammolist		-		Client only. Toggles rendering of HUD ammolist.
    ammolisthideweapons		-		Client only. Toggles rendering of weapons in ammolist.
    autorecord		-		Client only. Toggles the automatic recording of matches.
    autoscreenshot		-		Client only. Toggles the automatic screenshot of final scoreboard.
    bankick		-		Server only. Kicks and bans a player from the server by specified name.
    bankickid		-		Server only. Kicks and bans a player from the server by specified clientID.
    benchmark		-		Client only. Performs a rendering benchmark test.
    bind		-		Client only. Binds a command to a key.
    botattack		-		Server only. Toggles whether bots will attack.
    botchat		-		Server only. Toggles whether bots talk.
    botminplayers		-		Server only. Specifies the number of player below which bots are added.
    botskill		-		Server only. Specifies the aiming skill level of the bot. 1-10.
    break		-		Client only. Indicates you want to stop a match.
    breakmatch		-		Server only. Stops a match.
    brightskinenemy		-		Client only. Sets the brightskin colour of enemy players.
    brightskinteam		-		Client only. Sets the brightskin colour of team players.
    callvote		-		Client only. Calls a vote.
    camerainterpolateangle		-		Client only. Not used.
    camerainterpolateposition		-		Client only. Not used.
    camerainterpolation		-		Client only. Not used.
    camerapitch		-		Client only. Sets the camera pitch in spectator mode.
    camerayaw		-		Client only. Sets the camera yaw in spectator mode.
    capturelimit		-		Server only. Sets the capture limit for CTF.
    clientbandwidth		-		Client only. Sets the maximum upstream bandwidth.
    coloredicons		-		Client only. Toggles the rendering of coloured HUD icons.
    colouredicons		-		Client only. Toggles the rendering of coloured HUD icons.
    configuremapview		-		Client only. Toggles configure mode for mapview.
    connect		-		Client only. Connects to a specified IP.
    connectpktv		-		Client only. Not used.
    crosshair		-		Client only. Toggles the rendering of a crosshair.
    crosshairnames		-		Client only. Toggles the rendering of crosshair names.
    crosshairnamesteamonly		-		Client only. Toggles the whether crosshair names are shown for team only.
    deadbodyfix		-		Server only. Not used.
    demolist		-		Client only. Displays list of demos.
    demoplay		-		Client only. Plays a specified demo.
    demoplaybmp		-		Client only. Plays a specified demo and outputs screenshots for each frame.
    demorecord		-		Client only. Records a demo to a specified file name.
    demostop		-		Client only. Stops recording a demo.
    directinput		-		Client only. Toggles Direct Input.
    disablehud		-		Client only. Toggles rendering of HUD.
    disconnect		-		Client only. Disconnects from a server.
    enemyinterpolation		-		Client only. Toggles player interpolation (smoothing movement).
    entityplayer		-		Both. Debug.
    entityplayerstats		-		Both. Debug.
    exec		-		Both. Loads the settings from a specified config.
    exit		-		Both. Exits the game.
    expo		-		Both. Debug.
    fallingdamage		-		Server only. Toggles falling damage.
    fixedcolors		-		Client only. Toggles whether brightskins swap depending on your team.
    fixedcolours		-		Client only. Toggles whether brightskins swap depending on your team.
    forcejoin		-		Server only. Forces a specified clientID to join the game.
    forcespec		-		Server only. Toggles force spectator mode while game is playing.
    forcespectator		-		Server only. Forces a specified clientID to spectate.
    fov		-		Client only. Sets your Field Of Vision.
    fraglimit		-		Server only. Sets the fraglimit.
    freezerfix		-		Server only. Not used.
    gamemode		-		Server only. Sets the gamemode.
    get		-		Both. Returns the value of a config setting.
    hmrecord		-		Client only. Not used.
    hmtest		-		Client only. Not used.
    hudsize		-		Client only. Sets the size at which the HUD is rendered.
    impureclientwarning		-		Server only. Toggles whether impure clients are warned about in console publically.
    kick		-		Server only. Kicks the specified player by name.
    kickallbots		-		Server only. Kicks all the bots from the server.
    kickbot		-		Server only. Kicks the last bot to join the server.
    kickid		-		Server only Kicks the specified player by clientID.
    kill		-		Client only. Kills yourself.
    lmslives		-		Server only. Sets the LMS gamemode lives.
    logging		-		Both. Toggles whether console is logged to file.
    map		-		Server only. Changes to a specified map.
    maplist		-		Both. Lists the maps currently available.
    mapview		-		Client only. Toggles rendering of mapview overview in spectator mode.
    mapviewshowrespawns		-		Client only. Toggles the rendering of spawn locations in spectator mode (used for configuration).
    maxplayers		-		Server only. Sets the maximum number of players for a match.
    maxspectators		-		Server only. Sets the maximum number of spectators.
    motd		-		Server only. Sets the Message of the Day.
    msensitivity		-		Client only. Sets the mouse sensitivity.
    msmooth		-		Client only. Toggles mouse smoothing.
    name		-		Client only. Sets your player name.
    netstats		-		Client only. Toggles rendering of network statistics on HUD. Debug.
    netstatsavgfrom		-		Client only. Sets the number of frames from which to take the average for statistics.
    netstatsupdatedelay		-		Client only. Sets how often network statistics are updated on HUD.
    noblood		-		Client only. Toggles the rendering of blood effects.
    nodecals		-		Client only. Toggles the rendering of decals/ marks on walls.
    noexplosions		-		Client only. Toggles the rendering of explosions.
    noflames		-		Client only. Toggles the rendering of flames.
    nogibs		-		Client only. Toggles the rendering of gibs
    nosmoke		-		Client only. Toggles the rendering of smoke.
    nospawneffects		-		Client only. Toggles the rendering of spawn effects.
    notready		-		Client only. Indicates you are not ready to start a match.
    oldscoreboard		-		Client only. Toggles the use of the old VPK scoreboard.
    overtime		-		Server only. Sets the amount of overtime in the event of a tied game.
    pitabotenabled		-		Server only. Toggles the use of advanced pitabot scorebot features.
    pkalwaysgib		-		Single player cheat.
    pkammo		-		Single player cheat.
    pkcards		-		Single player cheat.
    pkdemon		-		Single player cheat.
    pkgod		-		Single player cheat.
    pkgold		-		Single player cheat.
    pkhaste		-		Single player cheat.
    pkhealth		-		Single player cheat.
    pkkeepbodies		-		Single player cheat.
    pkkeepdecals		-		Single player cheat.
    pkpower		-		Single player cheat.
    pkweakenemies		-		Single player cheat.
    pkweaponmodifier		-		Single player cheat.
    pkweapons		-		Single player cheat.
    playdemo		-		Client only. Plays a demo from the specified file name.
    players		-		Both. Lists clientID's against player names.
    playersgame		-		Both. Debug.
    playersplayerstats		-		Both. Debug.
    pos		-		Both. Debug.
    powerupdrop		-		Server only. Toggles whether power ups are dropped on kill.
    powerups		-		Server only. Toggles use of power ups.
    print		-		Both. Prints a message to the console.
    printstatsall		-		Both. Prints all weapon statistics for all players.
    proplus		-		Server only. Toggles proplus settings.
    quit		-		Both. Quits the game.
    rcon		-		Client only. Sends specified command via rcon.
    rconpass		-		Both. Sets the rcon password.
    ready		-		Client only. Indicates you are ready to play a match.
    reconnect		-		Client only. Reconnects to last IP.
    recorddemo		-		Client only. Records a demo to a specified file name.
    ref		-		Client only. Sends a specified command via ref.
    referee		-		Server only. Changes a player to referee by specified clientID
    refpass		-		Both. Sets the referee password.
    reloadmap		-		Server only. Reloads the current map.
    reloadwaypoints		-		Server only. Reloads the bot waypoints for the current map.
    restartmap		-		Server only. Restarts the current map.
    rocketexplosionstrength		-		Server only. Not used.
    rocketfactor		-		Server only. Not used.
    rocketfactororder		-		Server only. Not used.
    rocketfix		-		Server only. Toggles the use of PK++ rocketfix.
    rocketlogging		-		Server only. Not used.
    rot		-		Server only. Debug.
    saferespawn		-		Server only. Toggles spawn telefragging safety.
    say		-		Both. Broadcasts a say to all.
    scoreboardfontsize		-		Client only. Changes the font size for the scoreboard.
    scoreboardshowpacketloss		-		Client only. Toggles the rendering of packetloss in the scoreboard.
    server		-		Client only. Not used.
    serverframerate		-		Client only. Sets the number of frames which the client wishes to receive per second.
    serverinfo		-		Both. Shows the server information.
    serverpassword		-		Server only. Sets server password.
    set		-		Both. Sets a config value to a specified string.
    setb		-		Both. Sets a config value to a specified boolean [1/0]
    setmaxfps		-		Client only. Sets the maximum rendering rate (and upstream packet rate)
    setn		-		Both. Sets a config value to a specified number.
    sets		-		Both. Sets a config value to a specified string.
    showfps		-		Client only. Toggles rendering of frame rate in HUD
    showping		-		Client only. Toggles rendering of client ping in HUD
    showpingx		-		Client only. Sets fraction of screen width for ping to be rendered.
    showpingy		-		Client only. Sets fraction of screen height for ping to be rendered.
    showtimer		-		Client only. Toggles the rendering of timer in HUD.
    showtimercountup		-		Client only. Toggles whether timer should count up/down.
    showtimerfontsize		-		Client only. Sets the font size for the timer.
    showtimerx		-		Client only. Sets the fraction of screen width for timer to be rendering.
    showtimery		-		Client only. Sets the fraction of screen height for timer to be rendering.
    showweapon		-		Client only. Toggles the rendering of the gun.
    simplehud		-		Client only. Toggles whether the simplified HUD should be used.
    spectator		-		Client only. Toggles the desired spectator/non-spectator mode.
    speedmeter		-		Client only. Toggles the rendering of a speedmeter.
    startupweapon		-		Server only. Sets the respawn weapon.
    stats		-		Both. Displays weapon statistics.
    statsall		-		Both. Displays weapon statistics.
    statsdump		-		Both. Displays weapon statistics and writes to file.
    stresstest		-		Client only. Performs stress test.
    team		-		Client only. Indicates a team r/b.
    teamdamage		-		Server only. Toggles whether damage is received from teammates.
    teamlock		-		Server only. Toggles whether a team is locked during a game.
    teamoverlay		-		Client only. Toggles rendering of team overlay in HUD.
    teamoverlayfontsize		-		Client only. Sets the font size for the team overlay.
    teamoverlayw		-		Client only. Sets the width of the team overlay.
    teamoverlayx		-		Client only. Sets the fraction of the screen width for the team overlay to be displayed.
    teamoverlayy		-		Client only. Sets the fraction of the screen height for the team overlay to be displayed.
    teamsay		-		Client only. Says a message to teammates.
    teamscores		-		Client only. Toggles the rendering of teamscores in HUD.
    teamscoresfontsize		-		Client only. Sets the font size for teamscores.
    teamscoresshadow		-		Client only. Toggles the rendering of shadow for teamscores text.
    teamscoresx		-		Client only. Sets the fraction of screen width for teamscores to be rendered.
    teamscoresy		-		Client only. Sets the fraction of screen height for teamscores to be rendered.
    time		-		Client only. Displays the local time.
    timedemo		-		Client only. Plays a demo at timed speed.
    timelimit		-		Server only. Sets the timelimit.
    toggleconsole		-		Client only. Toggles the console open/closed.
    tpp		-		Both. Debug.
    version		-		Both. Displays the current PK++ version.
    vote		-		Client only. Vote for yes or no, as specified.
    warmupdamage		-		Server only. Toggles damage during warmup.
    weaponprediction		-		Client only. Not used.
    weaponrespawntime		-		Server only. Sets the weapon respawn time.
    weaponspecular		-		Client only. Toggles weapon specular.
    weaponsstay		-		Server only. Toggles whether weapons stay after pickup.
    where		-		Client only. Debug.
    writeconfig		-		Both. Writes all settings to a config with the specified name.

========
Settings
========

		Cfg.Admin		-		Server only. Sets the admin name which is displayed in a server poll.
		Cfg.AllowBrightskins		-		Server only. Sets whether brightskins are used.
		Cfg.AllowBunnyhopping		-		Server only. Sets whether bunnyhopping is allowed.
		Cfg.AllowForwardRJ		-		Server only. Sets whether forward rocket jumping is allowed.
		Cfg.AltScoreboard		-		Client only. Sets whether alternative scoreboard is used.
		Cfg.AmbientSounds		-		Client only. Sets whether ambient sounds are played.
		Cfg.AmbientVolume		-		Client only. Sets sound volume.
		Cfg.AmmolistHideWeapons		-		Client only. Sets whether weapons are displayed in ammolist.
		Cfg.AutoChangeWeapon		-		Client only. Sets whether weapons are switched to on pickup.
		Cfg.AutoScreenshot		-		Client only. Sets whether a screenshot is taken at the end of a game.
		Cfg.AutoStatsDump		-		Both. Sets whether stats are logged to file at match end.
		Cfg.AutoTeamLock		-		Server only. Sets whether teams are locked during games.
		Cfg.Autorecord		-		Client only. Sets whether demos are automatically recorded.
		Cfg.BestExplosives		-		Client only. Sets which weapons are the best for best explosive key.
		Cfg.BestNonExplosives		-		Client only. Sets which weapons are the best for best non-explosive key.
		Cfg.BestWeapons1		-		Client only. Sets which weapons are the best for bestweapon1 key.
		Cfg.BestWeapons2		-		Client only. Sets which weapons are the best for bestweapon2 key.
		Cfg.BlackEdition		-		Both. Indicates whether the game is blackedition.
		Cfg.Bloom		-		Client only. Sets whether bloom rendering is used.
		Cfg.BotAttack		-		Server only. Sets whether bots attack.
		Cfg.BotChat		-		Server only. Sets whether bots chat.
		Cfg.BotCheckStubNose		-		Server only. Sets whether bots will stub their noses. Ow!
		Cfg.BotEliza		-		Server only. Sets whether bots respond using Eliza-based code to things you say.
		Cfg.BotFakePing		-		Server only. Sets whether bots have a fake ping.
		Cfg.BotFindItems		-		Server only. Sets whether bots notice items nearby.
		Cfg.BotMinPlayers		-		Server only. Sets the number of players on a server below which bots are added.
		Cfg.BotNames		-		Server only. Sets the array of random bot names.
		Cfg.BotQuickRespawn		-		Server only. Sets whether bots respawn quickly or not.
		Cfg.BotSkill		-		Server only. Sets the aiming skill of the bots.
		Cfg.BotTaunts		-		Server only. Sets the comments the bots make randomly during gameplay.
		Cfg.Brightness		-		Client only. Sets the rendering brightness.
		Cfg.BrightskinEnemy		-		Client only. Sets the enemy brightskin colour. Or red team with fixed colours on.
		Cfg.BrightskinTeam		-		Client only. Sets the team brightskin colour. Or blue team with fixed colours on.
		Cfg.CameraInterpolateAngle		-		Client only. Not used.
		Cfg.CameraInterpolatePosition		-		Client only. Not used.
		Cfg.CameraInterpolation		-		Client only. Not used.
		Cfg.CaptureLimit		-		Server only. Sets the CTF capture limit.
		Cfg.CharacterShadow		-		Client only. Sets whether the player has a shadow or not.
		Cfg.ClientConsoleLockdown		-		Server only. Sets whether clients consoles are locked or not.
		Cfg.ClipPlane		-		Client only. Sets the rendering clip plane.
		Cfg.ColouredIcons		-		Client only. Sets whether coloured icons are used or not.
		Cfg.ConfigMapView		-		Client only. Sets whether mapview is in configure mode.
		Cfg.ConnectionSpeed		-		Client only. Sets the network connection speed settings.
		Cfg.Contrast		-		Client only. Sets the rendering contrast.
		Cfg.Coronas		-		Client only. Sets whether coronas are rendered.
		Cfg.Credits		-		Client only. Sets the credits information.
		Cfg.Crosshair		-		Client only. Sets the crosshair used.
		Cfg.CrosshairB		-		Client only. Sets the blue value of the crosshair colour.
		Cfg.CrosshairG		-		Client only. Sets the green value of the crosshair colour.
		Cfg.CrosshairNames		-		Client only. Sets whether crosshair names are rendered or not.
		Cfg.CrosshairNamesDisableInDuel		-		Client only. Sets whether crosshair names are shown in duel.
		Cfg.CrosshairNamesTeamOnly		-		Client only. Sets whether crosshair names are only shown for teammates.
		Cfg.CrosshairR		-		Client only. Sets the red value of the crosshair colour.
		Cfg.CrosshairSize		-		Client only. Sets the size of the crosshair.
		Cfg.CrosshairTrans		-		Client only. Sets the transparency of the crosshair.
		Cfg.CustomCrosshairLocation		-		Client only. Sets whether the crosshair is rendered at a custom location.
		Cfg.CustomCrosshairLocationX		-		Client only. Sets the fraction of the screen width for the custom crosshair location
		Cfg.CustomCrosshairLocationY		-		Client only. Sets the fraction of the screen height for the custom crosshair location
		Cfg.Decals		-		Client only. Sets the level of decal rendering.
		Cfg.DecalsStayTime		-		Client only. Sets the decal stay time.
		Cfg.DedicatedServer		-		Both. Not used.
		Cfg.DetailTextures		-		Client only. Sets the rendering detail level for textures.
		Cfg.DisableHud		-		Client only. Sets whether HUD is disabled or not.
		Cfg.DisableMOTDRendering		-		Client only. Sets whether MOTD is rendered or not.
		Cfg.DisturbSound3DFreq		-		Client only. Sets the sound frequency for 3D sounds.
		Cfg.DuelQueue		-		Server only. Sets whether duel queue is being used.
		Cfg.DynamicLights		-		Client only. Sets whether dynamic lights are used.
		Cfg.EAXAcoustics		-		Client only. Sets whether acoustics are used.
		Cfg.Email		-		Server only. Sets the email information for server poll.
		Cfg.FOV		-		Client only. Sets the Field of Vision.
		Cfg.FPS		-		Client only. Not used.
		Cfg.FallingDamage		-		Server only. Sets whether falling damage is on or off.
		Cfg.FixedColors		-		Client only. Sets whether brightskins are based on teams.
		Cfg.ForceModel		-		Server only. Sets whether client models are forced or not.
		Cfg.ForceSpec		-		Server only. Sets whether new comers are forced to spec on join.
		Cfg.FragLimit		-		Server only. Sets the fraglimit.
		Cfg.Fullscreen		-		Both. Not used.
		Cfg.GameMode		-		Server only. Sets the default gamemode.
		Cfg.Gamma		-		Client only. Sets the gamma level.
		Cfg.GraphicsQuality		-		Client only. Sets the graphics level.
		Cfg.HUDSize		-		Client only. Sets the HUD size.
		Cfg.HUDTransparency		-		Client only. Sets the HUD transparency.
		Cfg.HUD_AmmoList		-		Client only. Sets whether the ammo list is on or not.
		Cfg.HUD_CurrentWeapon_Icon		-		Client only. Sets whether the current weapon icon is rendered.
		Cfg.HUD_FragMessage		-		Client only. Sets whetehr frag messages are shown on the HUD.
		Cfg.HeadBob		-		Client only. Sets the amount of head bobbing.
		Cfg.ImpureClientWarning		-		Server only. Sets whether public warnings of impure clients is used.
		Cfg.InvertMouse		-		Client only. Sets whether the mouse is inverted or not.
		Cfg.ItemRespawnFix		-		Server only. Sets whether PK++ item respawn fix is used or not.
		Cfg.KeyAlternativeAlternativeFire		-		Client only. Key binding
		Cfg.KeyAlternativeBulletTime		-		Client only. Key binding
		Cfg.KeyAlternativeFire		-		Client only. Key binding
		Cfg.KeyAlternativeFireBestWeapon1		-		Client only. Key binding
		Cfg.KeyAlternativeFireBestWeapon2		-		Client only. Key binding
		Cfg.KeyAlternativeFireSwitch		-		Client only. Key binding
		Cfg.KeyAlternativeFireSwitchToggle		-		Client only. Key binding
		Cfg.KeyAlternativeFlashlight		-		Client only. Key binding
		Cfg.KeyAlternativeForwardRocketJump		-		Client only. Key binding
		Cfg.KeyAlternativeJump		-		Client only. Key binding
		Cfg.KeyAlternativeMenu		-		Client only. Key binding
		Cfg.KeyAlternativeMoveBackward		-		Client only. Key binding
		Cfg.KeyAlternativeMoveForward		-		Client only. Key binding
		Cfg.KeyAlternativeNextWeapon		-		Client only. Key binding
		Cfg.KeyAlternativePause		-		Client only. Key binding
		Cfg.KeyAlternativePreviousWeapon		-		Client only. Key binding
		Cfg.KeyAlternativeQuickLoad		-		Client only. Key binding
		Cfg.KeyAlternativeQuickSave		-		Client only. Key binding
		Cfg.KeyAlternativeRocketJump		-		Client only. Key binding
		Cfg.KeyAlternativeSayToAll		-		Client only. Key binding
		Cfg.KeyAlternativeSayToTeam		-		Client only. Key binding
		Cfg.KeyAlternativeScoreboard		-		Client only. Key binding
		Cfg.KeyAlternativeScreenshot		-		Client only. Key binding
		Cfg.KeyAlternativeSelectBestWeapon1		-		Client only. Key binding
		Cfg.KeyAlternativeSelectBestWeapon2		-		Client only. Key binding
		Cfg.KeyAlternativeStrafeLeft		-		Client only. Key binding
		Cfg.KeyAlternativeStrafeRight		-		Client only. Key binding
		Cfg.KeyAlternativeUseCards		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon1		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon10		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon11		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon12		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon13		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon14		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon2		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon3		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon4		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon5		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon6		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon7		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon8		-		Client only. Key binding
		Cfg.KeyAlternativeWeapon9		-		Client only. Key binding
		Cfg.KeyAlternativeZoom		-		Client only. Key binding
		Cfg.KeyPrimaryAlternativeFire		-		Client only. Key binding
		Cfg.KeyPrimaryBulletTime		-		Client only. Key binding
		Cfg.KeyPrimaryFire		-		Client only. Key binding
		Cfg.KeyPrimaryFireBestWeapon1		-		Client only. Key binding
		Cfg.KeyPrimaryFireBestWeapon2		-		Client only. Key binding
		Cfg.KeyPrimaryFireSwitch		-		Client only. Key binding
		Cfg.KeyPrimaryFireSwitchToggle		-		Client only. Key binding
		Cfg.KeyPrimaryFlashlight		-		Client only. Key binding
		Cfg.KeyPrimaryForwardRocketJump		-		Client only. Key binding
		Cfg.KeyPrimaryJump		-		Client only. Key binding
		Cfg.KeyPrimaryMenu		-		Client only. Key binding
		Cfg.KeyPrimaryMoveBackward		-		Client only. Key binding
		Cfg.KeyPrimaryMoveForward		-		Client only. Key binding
		Cfg.KeyPrimaryNextWeapon		-		Client only. Key binding
		Cfg.KeyPrimaryPause		-		Client only. Key binding
		Cfg.KeyPrimaryPreviousWeapon		-		Client only. Key binding
		Cfg.KeyPrimaryQuickLoad		-		Client only. Key binding
		Cfg.KeyPrimaryQuickSave		-		Client only. Key binding
		Cfg.KeyPrimaryRocketJump		-		Client only. Key binding
		Cfg.KeyPrimarySayToAll		-		Client only. Key binding
		Cfg.KeyPrimarySayToTeam		-		Client only. Key binding
		Cfg.KeyPrimaryScoreboard		-		Client only. Key binding
		Cfg.KeyPrimaryScreenshot		-		Client only. Key binding
		Cfg.KeyPrimarySelectBestWeapon1		-		Client only. Key binding
		Cfg.KeyPrimarySelectBestWeapon2		-		Client only. Key binding
		Cfg.KeyPrimaryStrafeLeft		-		Client only. Key binding
		Cfg.KeyPrimaryStrafeRight		-		Client only. Key binding
		Cfg.KeyPrimaryUseCards		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon1		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon10		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon11		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon12		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon13		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon14		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon2		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon3		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon4		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon5		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon6		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon7		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon8		-		Client only. Key binding
		Cfg.KeyPrimaryWeapon9		-		Client only. Key binding
		Cfg.KeyPrimaryZoom		-		Client only. Key binding
		Cfg.LMSLives		-		Server only. Sets the LMS lives.
		Cfg.Language		-		Both. Sets the language being used.
		Cfg.LimitServerFPS		-		Server only. Sets whether the server FPS is limited or not. Not used.
		Cfg.Location		-		Server only. Sets the server location for server poll.
		Cfg.Logfile		-		Both. Sets the console logging file name.
		Cfg.LogfileDaily		-		Both. Sets whether logging is by day or not.
		Cfg.Logging		-		Both. Sets whether console logging is on or not.
		Cfg.LowQualityMultiplayerSFX		-		Client only. Sets whether low mp gfx is used or not.
		Cfg.MOTD		-		Server only. Sets Message of the Day.
		Cfg.ManualIP		-		Client only. Sets the default connect to IP.
		Cfg.MapView		-		Client only. Sets whether mapview is on or not
		Cfg.MapViewShowRespawns		-		Client only. Sets whether mapview shows respawns or not.
		Cfg.MasterVolume		-		Client only. Sets the master sound volume.
		Cfg.MaxFpsMP		-		Client only. Sets the maximum framerate.
		Cfg.MaxPlayers		-		Server only. Sets the maximum number of players.
		Cfg.MaxSpectators		-		Server only. Sets the maximum number of spectators.
		Cfg.MessagesKeys		-		Client only. Sets pre-defined messages.
		Cfg.MessagesSayAll		-		Client only. Sets pre-defined messages.
		Cfg.MessagesTexts		-		Client only. Sets pre-defined messages.
		Cfg.ModName		-		Server only. Sets the mod name being used. For server poll.
		Cfg.MouseSensitivity		-		Client only. Sets the mouse sensitivity.
		Cfg.Multisample		-		Client only. Sets whether textures are aliased or not.
		Cfg.MusicVolume		-		Client only. Sets the music volume.
		Cfg.NetcodeClientMaxBytesPerSecond		-		Client only. Sets the maximum upstream bandwidth
		Cfg.NetcodeEnemyPredictionInterpolation		-		Client only. Sets player interpolation (movement smoothing).
		Cfg.NetcodeEnemyPredictionInterpolationFactor		-		Client only. Sets the amount of interpolation.
		Cfg.NetcodeLocalPlayerSynchroEveryNFrames		-		Client only. Sets the degree of synchronous'ness
		Cfg.NetcodeMaxPlayerActionsPassed		-		Client only. Sets the queue size before reliable data is sent.
		Cfg.NetcodeMinUpstreamFrameSize		-		Client only. Sets the minimum upstream packet size.
		Cfg.NetcodeServerFramerate		-		Client only. Sets the maximum number of frames to be received.
		Cfg.NetcodeStatsNumberToAverageFrom		-		Client only. Debug.
		Cfg.NetcodeStatsUpdateDelay		-		Client only. Debug.
		Cfg.NetworkInterface		-		Both. Sets the network interface IP.
		Cfg.Newhitsound		-		Client only. Sets whether the newer PK++ hitsound is used or not.
		Cfg.NoAmmoSwitch		-		Client only. Sets whether weapons are changed to with no ammo.
		Cfg.NoBlood		-		Client only. Sets whether blood is rendered.
		Cfg.NoExplosions		-		Client only. Sets whether explosions rendered.
		Cfg.NoFlames		-		Client only. Sets whether flames are rendered.
		Cfg.NoGibs		-		Client only. Sets whether gibs are rendered.
		Cfg.NoSmoke		-		Client only. Sets whether smoke is rendered.
		Cfg.NoSpawnEffects		-		Client only. Sets whether spawn effects are rendered.
		Cfg.NoWarmup		-		Server only. Sets whether there is a warmup mode.
		Cfg.OldScoreboard		-		Client only. Sets whether the old VPK scoreboard is used.
		Cfg.Overtime		-		Server only. Sets the amount of overtime for a tied match.
		Cfg.PKTV		-		Server only. Not used.
		Cfg.PKTVDelay		-		Server only. Not used.
		Cfg.PKTVFps		-		Server only. Not used.
		Cfg.PKTVPassword		-		Server only. Not used.
		Cfg.ParticlesDetail		-		Client only. Sets the amount of particle detail.
		Cfg.PiTaBOT		-		Server only. Sets whether advanced pitabot is loaded or not.
		Cfg.PitabotEnabled		-		Server only. Sets whether to load advanced pitabot.
		Cfg.PlayerModel		-		Both. Sets the player model to be used.
		Cfg.PlayerName		-		Client only. Sets the name.
		Cfg.PowerupDrop		-		Server only. Sets whether power ups are dropped.
		Cfg.Powerups		-		Server only. Sets whether power ups are used.
		Cfg.PrecacheData		-		Both. Sets whether data is precached.
		Cfg.ProPlus		-		Server only. Sets whether proplus settings are used.
		Cfg.Projectors		-		Client only. Sets whether projector rendering is used.
		Cfg.PublicServer		-		Server only. Sets whether it is public or not.
		Cfg.PureScripts		-		Server only. Sets whether only paks are used.
		Cfg.RconPass		-		Both. Sets the rcon password.
		Cfg.RefPass		-		Both. Sets the ref password.
		Cfg.RenderSky		-		Client only. Sets rendering of the sky.
		Cfg.Resolution		-		Client only. Sets the rendering resolution.
		Cfg.RestartMaps		-		Server only. Sets whether maps are restarted or not.
		Cfg.ReverseStereo		-		Client only. Sets whether stereo is reversed.
		Cfg.RocketFix		-		Server only. Sets whether PK++ rocketfix is on or not.
		Cfg.RocketLogging		-		Both. Not used.
		Cfg.RocketsFromGun		-		Client only. Not used.
		Cfg.SafeRespawn		-		Server only. Sets whether telefragginf from spawns is on safe or not.
		Cfg.ScoreboardFontSize		-		Client only. Sets scoreboard font size.
		Cfg.ScoreboardShowPacketLoss		-		Client only. Sets whether packet loss is shown on scoreboard.
		Cfg.ServerFPS		-		Server only. Sets server FPS. Not used?
		Cfg.ServerMaps		-		Server only. Sets default maps.
		Cfg.ServerMapsCLA		-		Server only. Sets default maps.
		Cfg.ServerMapsCTF		-		Server only. Sets default maps.
		Cfg.ServerMapsDUE		-		Server only. Sets default maps.
		Cfg.ServerMapsFFA		-		Server only. Sets default maps.
		Cfg.ServerMapsLMS		-		Server only. Sets default maps.
		Cfg.ServerMapsPCF		-		Server only. Sets default maps.
		Cfg.ServerMapsTDM		-		Server only. Sets default maps.
		Cfg.ServerMapsTLB		-		Server only. Sets default maps.
		Cfg.ServerMapsVSH		-		Server only. Sets default maps.
		Cfg.ServerName		-		Server only. Sets server name for server poll.
		Cfg.ServerPassword		-		Server only. Sets server password.
		Cfg.ServerPort		-		Server only. Sets server port.
		Cfg.SfxVolume		-		Client only. Sets sound effects volume.
		Cfg.Shadows		-		Client only. Sets rendering of shadows.
		Cfg.ShowDaydreamWarning		-		Client only. Not used.
		Cfg.ShowFPSShadow		-		Client only. Sets shadow on showfps.
		Cfg.ShowPing		-		Client only. Sets showping rendering.
		Cfg.ShowPingShadow		-		Client only. Sets showping shadow.
		Cfg.ShowPingX		-		Client only. Sets showping fraction of screen width
		Cfg.ShowPingY		-		Client only. Sets showping fraction of screen height
		Cfg.ShowTimer		-		Client only. Sets timer rendering.
		Cfg.ShowTimerCountUp		-		Client only. Sets timer count up/down.
		Cfg.ShowTimerFontSize		-		Client only. Sets timer font size.
		Cfg.ShowTimerShadow		-		Client only. Sets timer shadow.
		Cfg.ShowTimerX		-		Client only. Sets timer fraction of screen width
		Cfg.ShowTimerY		-		Client only. Sets timer fraction of screen height
		Cfg.Simplehud		-		Client only. Sets whether simple HUD is used.
		Cfg.SmoothMouse		-		Client only. Sets whether mouse input is smoothed.
		Cfg.SoundFalloffSpeed		-		Client only. Sets amount of sound degradation.
		Cfg.SoundPan		-		Client only. Sets sound panning
		Cfg.SoundProvider3D		-		Client only. Sets sound driver.
		Cfg.SoundQuality		-		Client only. Sets sound quality.
		Cfg.SpeakersSetup		-		Client only. Sets speaker set up.
		Cfg.StartupWeapon		-		Server only. Sets respawn weapon.
		Cfg.StopMatchOnTeamQuit		-		Server only Sets whether a match should stop when one team leaves.
		Cfg.SwitchFire		-		Client only. Sets whether firing modes 1/2 are switched.
		Cfg.Team		-		Client only. Sets team.
		Cfg.TeamDamage		-		Server only. Sets whether team damage is on.
		Cfg.TeamOverlay		-		Client only. Sets whether teamoverlay is on.
		Cfg.TeamOverlayFontSize		-		Client only. Sets font size for teamoverlay.
		Cfg.TeamOverlayW		-		Client only. Sets width fraction for teamoverlay
		Cfg.TeamOverlayX		-		Client only. Sets fraction of screen width for teamoverlay.
		Cfg.TeamOverlayY		-		Client only. Sets fraction of screen height for teamoverlay.
		Cfg.TeamScores		-		Client only. Sets whether teamscores is rendered.
		Cfg.TeamScoresFontSize		-		Client only. Sets font size for teamscores.
		Cfg.TeamScoresShadow		-		Client only Sets whether font shadow is on for teamscores.
		Cfg.TeamScoresX		-		Client only. Sets fraction of screen width for teamscores
		Cfg.TeamScoresY		-		Client only. Sets fraction of screen height for teamscores
		Cfg.TextureFiltering		-		Client only. Sets whether textures are filtered.
		Cfg.TextureQuality		-		Client only. Sets texture quality.
		Cfg.TextureQualityArchitecture		-		Client only. Sets texture quality.
		Cfg.TextureQualityCharacters		-		Client only. Sets texture quality.
		Cfg.TextureQualitySkies		-		Client only. Sets texture quality.
		Cfg.TextureQualityWeapons		-		Client only. Sets texture quality.
		Cfg.TimeLimit		-		Server only. Sets timelimit.
		Cfg.TournamentSettings		-		Client only. Sets whether console is disabled.
		Cfg.URL		-		Server only. Sets URL for server poll.
		Cfg.UserAllowBrightskins		-		Server only. Callvote enable flag.
		Cfg.UserAllowBunnyhopping		-		Server only. Callvote enable flag.
		Cfg.UserAllowForwardRJ		-		Server only. Callvote enable flag.
		Cfg.UserBankick		-		Server only. Callvote enable flag.
		Cfg.UserCaptureLimit		-		Server only. Callvote enable flag.
		Cfg.UserFragLimit		-		Server only. Callvote enable flag.
		Cfg.UserGameMode		-		Server only. Callvote enable flag.
		Cfg.UserKick		-		Server only. Callvote enable flag.
		Cfg.UserLMSLives		-		Server only. Callvote enable flag.
		Cfg.UserMapChange		-		Server only. Callvote enable flag.
		Cfg.UserMaxPlayers		-		Server only. Callvote enable flag.
		Cfg.UserMaxSpectators		-		Server only. Callvote enable flag.
		Cfg.UserPowerupDrop		-		Server only. Callvote enable flag.
		Cfg.UserPowerups		-		Server only. Callvote enable flag.
		Cfg.UserReloadMap		-		Server only. Callvote enable flag.
		Cfg.UserStartupWeapon		-		Server only. Callvote enable flag.
		Cfg.UserTeamDamage		-		Server only. Callvote enable flag.
		Cfg.UserTimeLimit		-		Server only. Callvote enable flag.
		Cfg.UserWeaponRespawnTime		-		Server only. Callvote enable flag.
		Cfg.UserWeaponsStay		-		Server only. Callvote enable flag.
		Cfg.ViewWeaponModel		-		Client only. Sets whether the gun model is shown.
		Cfg.WarmUpTime		-		Server only. Sets the amount of warmup time.
		Cfg.WarmupDamage		-		Server only. Sets whether there is damage in warmup.
		Cfg.WarpEffects		-		Client only. Sets whether warp effects are rendered.
		Cfg.WaterFX		-		Client only. Sets how water effects are rendered.
		Cfg.WeaponBob		-		Client only. Sets whether the gun bobs as you walk.
		Cfg.WeaponNormalMap		-		Client only. Sets whether the gun uses a normal map.
		Cfg.WeaponPrediction		-		Client only. Sets whether weapon prediction is on.
		Cfg.WeaponPriority		-		Client only. Sets how guns are selected.
		Cfg.WeaponRespawnTime		-		Server only. Sets the respawn time for weapons.
		Cfg.WeaponSpecular		-		Client only. Sets specular rendering.
		Cfg.WeaponsStay		-		Server only. Sets whether weapons remain after pickup.
		Cfg.WeatherEffects		-		Client only. Sets whether weather effects are on.
		Cfg.WheelSensitivity		-		Client only. Sets the sensitivity of the mouse wheel.
		Cfg.ZoomFOV		-		Client only. Sets the zoom fov for bolt gun.
		Cfg.overtime		-		Server only. Not used.


=============
SPECIAL NOTES
=============

Cfg.BotMinPlayers			

					Sets the minimum number of players
					before which bots are added.

					If botminplayers equals the maximum
					number of players allowed on a server, 
					then a space will be kept for players
					joining.

					If botminplayers is one greater than the
					maximum number of players allowed on a 
					server, then a space will be kept for
					spectators to join the game.
					
					If botminplayers is more than one
					greater than the maximum number of players 
					allowed on a server, then the bots
					will be added until the maximum number 
					of players allowed on a server is
					reached.

=====================================
Rockets and Rocket Jumping in ProPlus
=====================================

TO NOTE: Rocket jumping, rocket behaviour, movement and other core gameplay features have not been touched outside of ProPlus mode. ProPlus constitutes a purely community-driven adaption of PK gameplay.

Firstly please read the enclosed pdf, PainkillerRockets.pdf, titled 'A Rough Guide to Rocket Behaviour in Painkiller'. If you have questions, or wish to know more information other than that documented here, contact mods@pkeuro.com

In this document, the reasons and details of what was changed and why is discussed. It is clear that both 1.5 and 1.62 are against the design intents or ideals of PCF in this respect. And after a period of play-testing, it is clear the changes are detrimental to the game[1].

The solution proposed for play-testing in ProPlus is to adjust the rocket blast based on rocket direction. Intuitively this is the most sound solution. Even though the defaults were selected after a large amount of play-testing and experimentation; the same variables used to tweak the solution have been left available for further experimentation, but will be locked at some point in the near future.

Testing should be done on dedicated servers. Use of rcon to adjust values while testing is recommended. Make sure that proplus is enabled. As always, features in PK++ are open for discussion. PLEASE ENSURE YOU RETURN THE VALUES TO DEFAULTS FOR PUBLIC SERVERS - this will be locked after 0.8.1.62.

These settings are:

rocketfactor [number]			Multiplied by the vertical velocity fraction, becomes one less than base of the rocket factor used.

rocketfactororder [number]		Sets the exponent of the rocket factor used.

...and should be set, serverside.

Rocketfactor linearly affects the base of the overall factor which is related to rocket direction, whereas rocketfactororder affects the exponent and therefore order of magnitude of the overall factor; again, as related to rocket direction.

Physics for the equivalent of 1.5 rockets (for rj) would be rocketfactor 0, rocketfactororder 1

Physics for the equivalent of 1.62 rockets (for rj) would be rocketfactor 10, rocketfactororder 10 or so. This is not exactly the same, but

These indicate the two extremes of what has been done in PK.

By qualitative analogy only, 1.35 and/or the ideal is somewhere between, where the balance of sensible effects from rocket jumping and rocket fights are matched. The defaults as set as close as possible to match this.

NOTES:
------

Lowering rocketfactor will increase the amount of knockback an opponent occurs from a hit in fights.

Increasing rocketfactor and/or rocketfactororder will decrease the amount of horizontal knockback you recieve from a rocket jump.

A higher rocketfactororder will increase the rate of reduction of the amount of horizontal knockback you recieve from a rocket jump, as the rocket angle approaches vertically down.

If you adjust the values remember that what feels good is not necessarily good for gameplay and rocket fights. The temptation is always to increase both values, letting rocket jumps improve and overall rocket fight gameplay deteriorate. Rocket jumping is a skill, and values should not make it *too* easy.

NOTES ON DEFAULTS:
------------------

Selected defaults are set to:

rocketfactor 0.6
rocketfactororder 1

The low rocketfactor keeps rocket fights sensible, with players getting horizontal knockback from rockets, as well as retaining the possibility for off-the-wall pushes. The high rocketfactororder leads to less horizontal knockback in true rocket jumps.

----------------------

[1] http://forums.thecpl.com/ubb/ultimatebb.php?ubb=get_topic;f=27;t=000272

Thanks to lioNR at al., TsN and various others for articulating the exact issues.


==================
Notes on Loc Files
==================

Loc files are the means by which team player locations are generated for the
teamoverlay. A 'loc' files consists of a large array of named points. From these
named points, the current position of the player is determined. You can find
these files in \data\locs, and the defaults are stored in locs.pak, and are
named after tha map itself with extension '.loc'. You can open these using any
text editor, but you edit at your own risk.

If you wish to generate your own loc files for a new map, or one currently
unsupported by PK++, the process is simple. All that is required is to wander
around the map, typing \addloc <locationname> and the loc file will
automatically be generated and reloaded.

The recommended approach is firstly to place location points at the main
locations on the map. Following this more points should be added when incorrect
location names are found. Intuitively, you should add these points in the centre
of the misnamed section.

Finally you will find it useful to walk along the walls finding misnamed points
until finally all possible locations are named correctly.

Remember: Less is more. The fewer points you use to define the map the better,
since it will require less processing.

If you generate loc files and are pleased with the results, please consider
contributing them to the PK++ project by emailing them to mods@pkeuro.com

REMEMBER TO BACK UP YOUR FILES BEFORE UPGRADING PK++

===========================
Notes on Bot Waypoint Files
===========================

Bot waypoint files are to be found in \data\waypoints, and determine how the
bots understand to move around the map. A waypoint file consists of an array of
points (which in the waypoint files are named using the loc-file location.

Waypoint files heavily affect how well the bot plays, and the defaults supplied
with PK++ can always be improved on.

If you wish to add waypoints yourself to the map, to 'teach' the bot to play and
experiment yourself, the process is relatively straightforward, although you may
wish to try a few times before to see what works and what doesn't.

Firstly start by removing (if it exists), the waypoint file for the map you wish
to regenerate. You will find these in \data\waypoints, with file extension
'.bwp'.

Next start PK++ in tdm mode, add a bot using '\addbot' ensuring \maxplayers is 2
or greater and \botminplayers is 1. After your bot has joined, join the same
team as it.

Now find your bot on the map, once you have located him, you can add the first
waypoint using the \addwaypoint command. You will see the bot come towards you
and stand at the point you just created. By adding more points you will guide
the routes available ot the bot.

Observe the following, that:

1. If a large number of points are used in a given area, the bot will spend a
long time in that area, and its movement may be erratic as it moves between
them.

2. For a detailed 'run' between two points, more points should be used in a
line. By using these you will find you can make the bot do a large number of
difficult manovers.

3. Less is more, the fewer total points which are used, the less processing PK
requires.

4. The bot will ignore waypoints it can see when their evelation is much higher
than the bot. If you wish, for instance to guide a bot up stairs, you will
require some points midway up.

5. Waypoints should be included towards and on top of key items.

Again, if you generate files and are pleased with the results, please consider
contributing them to the PK++ project by emailing them to mods@pkeuro.com

REMEMBER TO BACK UP YOUR FILES BEFORE UPGRADING PK++

======================
Notes on Mapview Files
======================

Mapview files are to be found in \data\mapview and consist of an overhead map
image, and a config file which scales/aligns the image to the screen, and
scales/aligns the players to the image.

If you wish to add your own mapviews, or adjust the position and scale of the
mapview, you may do so.

Notes on creating new mapview images
------------------------------------

Mapview images are created using Painkiller's Editor. Start the editor and load
the map, then press 'f' to enter fly mode. Move yourself using the W,A,S,D keys
to a long way above the map. If you find the map vanishes or goes misty increase
the FarClipDist under properties on the right panel, and/or set Fog to No Fog.

Once you are a long way above the map, set the FOV to 10 to remove perspective
effects. You may find with this new FOV you need to move even higher above the
map.

Once you have a complete view of the map, hit F10 which will put you in
fullscreen mode, then F12 to take a screenshot. The final required resolution is
320x240, but it is highly recommended that you take the screenshot at 800x600 or
more.

Once you have a good screenshot, open it up in a picture editor; Adobe Photoshop
is recommended, and is the example used here.

Crop the image as required, and resize to 320x240, Save As .tga into
\data\mapview\ with the file name the same as the required map name.

Next you will need to create an alpha channel for the map. The alpha channel is
a black and white (technically greycsale) image which masks out transparency
within PK.

When you have the map image open in Photoshop, enable viewing of the channels
from Window->Channels.

If the alpha channel does not exist you will need to create it, you can do so
using the small icon at the bottom of the Channels panel. Within the Channels
panel you should now see RGB, R, G, B, and Alpha 1 channels. The default Alpha
channel is just a plain black image.

Next is to construct the alpha mask from a greyscale copy of the map itself. To
do this make a copy of the map image using Image->Duplicate.

Firstly if your background from your screenshot is the default blue used in the
editor, you can replace the colour using Photoshop's replace colour option. You
can find this in Image->Adjustments->Replace Colour.. select the colour and
replace with black.

Ensuring you are working on your duplicate image, turn it into greyscale mode..
Image->Mode->Greyscale.

You wish to have the areas you wish to see on the screen completely white.
However, you will find from direct greyscale conversion, you will have a large
number of grey artifacts. You can remove these by adjusting the contrast of the
image. Image->Adjustments->Brightness and Contrast, and set the Contrast slider
between +50 and +100. This will remove the majority of the grey in the map area.
Select a brush, with ink set to white to remove the rest by hand. Additionally
you can apply some blurring to the edges to soften the transparency edges.

When completed, copy and paste the greyscale mask into the alpha channel of your
original image. Save changes.

You may need to rotate the image using Photoshop, but you will not be able to
determine this until you've loaded it into PK.

Notes on Config Files
---------------------

Start by making a copy of an existing .cfg file and rename to match the map name
for which you are making a mapview. This will fix the screen location and image
scale (the tool previously used for this in-game was removed from the release
version since it was considered obfuscate the process, and allow too many
configuration errors).

The config format is in the form:

<globalscale>,<globaltranslatex>,<globaltranslatey>,<globaltranslaterot>,<imagescale>,<imagetranslatex>,<imagetranslatey>

In the above list, the prefix of 'global' refers to mapping the player coordinates onto the screen. 
globaltranslaterot is however, currently disabled.

The prefix 'image' refers purely to the mapview image and where it is located on the screen.

In your config for Painkiller, in \Painkiller\Bin\config.ini, set the values:

	Cfg.ConfigMapView = true,
	Cfg.MapView = true,
	Cfg.MapViewShowRespawns = true,

Respawns are used to quickly align player positions to images, although you can
rely on player locations alone.

Spectate a game, probably a bot game is easiest, and ensure mapview is on.

Weapon keys 1-6 will you to configure the player positions, and configs are
saved in real time. Weapon keys 1-2 are to scale the player positions. 3-4 and
5-6 are for horizontal and verical translations.

Use these keys to position the respawns to your image. If your image is
incorrect and needs rotation you may need to do this.

Again, if you generate files and are pleased with the results, please consider
contributing them to the PK++ project by emailing them to mods@pkeuro.com

REMEMBER TO BACK UP YOUR FILES BEFORE UPGRADING PK++
