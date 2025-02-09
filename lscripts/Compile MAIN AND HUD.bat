@echo Are you sure?
@pause
@echo Are you really sure?
@pause
@echo Are you REALLY sure?
@pause
@echo Are you REALLY REALLY sure?
@pause
@echo No going back, okay?
@pause
@echo okay
@pause 
@echo You said you were sure, right?
@pause 

erase /s *.bak
luac.exe -o Main\Bot.luac Main\Bot.lua
luac.exe -o Main\Cache.luac Main\Cache.lua
luac.exe -o Main\Cfg.luac Main\Cfg.lua
luac.exe -o Main\Definitions.luac Main\Definitions.lua
luac.exe -o Main\Game.luac Main\Game.lua
luac.exe -o Main\GameMP.luac Main\GameMP.lua
luac.exe -o Main\GameMPComms.luac Main\GameMPComms.lua
luac.exe -o Main\GameMPStats.luac Main\GameMPStats.lua
luac.exe -o Main\GameMPUtils.luac Main\GameMPUtils.lua
luac.exe -o Main\GObjects.luac Main\GObjects.lua
luac.exe -o Main\Languages.luac Main\Languages.lua
luac.exe -o Main\Loc.luac Main\Loc.lua
luac.exe -o Main\Logfile.luac Main\Logfile.lua
luac.exe -o Main\Mapview.luac Main\Mapview.lua
luac.exe -o Main\Network.luac Main\Network.lua
luac.exe -o Main\Profiler.luac Main\Profiler.lua
luac.exe -o Main\SaveGame.luac Main\SaveGame.lua
luac.exe -o Main\Tweak.luac Main\Tweak.lua
luac.exe -o Main\Utils.luac Main\Utils.lua
luac.exe -o Main\Waypoint.luac Main\Waypoint.lua
luac.exe -o Main\Eliza.luac Main\Eliza.lua

rename Main\Bot.lua Bot.luab
rename Main\Cache.lua Cache.luab
rename Main\Cfg.lua Cfg.luab
rename Main\Definitions.lua Definitions.luab
rename Main\Game.lua Game.luab
rename Main\GameMP.lua GameMP.luab
rename Main\GameMPComms.lua GameMPComms.luab
rename Main\GameMPStats.lua GameMPStats.luab
rename Main\GameMPUtils.lua GameMPUtils.luab
rename Main\GObjects.lua GObjects.luab
rename Main\Languages.lua Languages.luab
rename Main\Loc.lua Loc.luab
rename Main\Logfile.lua Logfile.luab
rename Main\Mapview.lua Mapview.luab
rename Main\Network.lua Network.luab
rename Main\Profiler.lua Profiler.luab
rename Main\SaveGame.lua SaveGame.luab
rename Main\Tweak.lua Tweak.luab
rename Main\Utils.lua Utils.luab
rename Main\Waypoint.lua Waypoint.luab
rename Main\Eliza.lua Eliza.luab

rename Main\Bot.luac Bot.lua
rename Main\Cache.luac Cache.lua
rename Main\Cfg.luac Cfg.lua
rename Main\Definitions.luac Definitions.lua
rename Main\Game.luac Game.lua
rename Main\GameMP.luac GameMP.lua
rename Main\GameMPComms.luac GameMPComms.lua
rename Main\GameMPStats.luac GameMPStats.lua
rename Main\GameMPUtils.luac GameMPUtils.lua
rename Main\GObjects.luac GObjects.lua
rename Main\Languages.luac Languages.lua
rename Main\Loc.luac Loc.lua
rename Main\Logfile.luac Logfile.lua
rename Main\Mapview.luac Mapview.lua
rename Main\Network.luac Network.lua
rename Main\Profiler.luac Profiler.lua
rename Main\SaveGame.luac SaveGame.lua
rename Main\Tweak.luac Tweak.lua
rename Main\Utils.luac Utils.lua
rename Main\Waypoint.luac Waypoint.lua
rename Main\Eliza.luac Eliza.lua

erase /s *.bak
erase /s *.luac
erase /s *.luab

luac.exe -o HUD\Console.luac HUD\Console.lua
luac.exe -o HUD\Console2.luac HUD\Console2.lua
luac.exe -o HUD\HUD.luac HUD\HUD.lua
luac.exe -o HUD\HUD2.luac HUD\HUD2.lua
luac.exe -o HUD\HUD3.luac HUD\HUD3.lua
luac.exe -o HUD\Levels.luac HUD\Levels.lua
luac.exe -o HUD\MagicBoard.luac HUD\MagicBoard.lua
luac.exe -o HUD\PainMenu.luac HUD\PainMenu.lua
luac.exe -o HUD\Scoreboard.luac HUD\Scoreboard.lua
luac.exe -o HUD\Specmode.luac HUD\Specmode.lua

rename HUD\Console.lua Console.luab
rename HUD\Console2.lua Console2.luab
rename HUD\HUD.lua HUD.luab
rename HUD\HUD2.lua HUD2.luab
rename HUD\HUD3.lua HUD3.luab
rename HUD\Levels.lua Levels.luab
rename HUD\MagicBoard.lua MagicBoard.luab
rename HUD\PainMenu.lua PainMenu.luab
rename HUD\Scoreboard.lua Scoreboard.luab
rename HUD\Specmode.lua Specmode.luab

rename HUD\Console.luac Console.lua
rename HUD\Console2.luac Console2.lua
rename HUD\HUD.luac HUD.lua
rename HUD\HUD2.luac HUD2.lua
rename HUD\HUD3.luac HUD3.lua
rename HUD\Levels.luac Levels.lua
rename HUD\MagicBoard.luac MagicBoard.lua
rename HUD\PainMenu.luac PainMenu.lua
rename HUD\Scoreboard.luac Scoreboard.lua
rename HUD\Specmode.luac Specmode.lua

erase /s *.bak
erase /s *.luac
erase /s *.luab

luac.exe -o Templates\Weapons\Rocket.luac Templates\Weapons\Rocket.lua

rename Templates\Weapons\Rocket.lua Rocket.luab

rename Templates\Weapons\Rocket.luac Rocket.lua


luac.exe -o Classes\CPlayer.luac Classes\CPlayer.lua

rename Classes\CPlayer.lua CPlayer.luab

rename Classes\CPlayer.luac CPlayer.lua


luac.exe -o Classes\CItem.luac Classes\CItem.lua

rename Classes\CItem.lua CItem.luab

rename Classes\CItem.luac CItem.lua

luac.exe -o Classes\CParticleFX.luac Classes\CParticleFX.lua

rename Classes\CParticleFX.lua CParticleFX.luab

rename Classes\CParticleFX.luac CParticleFX.lua

luac.exe -o Loader.luac Loader.lua

rename Loader.lua Loader.luab

rename Loader.luac Loader.lua



erase /s *.bak
erase /s *.luac
erase /s *.luab