# load.mcfunction
# This function is called every time you run /reload, and when the world first starts.

# NOTE:
# Always set your gamerules, difficulty, time, and worldspawn in the load function!
# These are NOT SAVED when worlds restart at the moment.
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
setworldspawn 3 0 -11
gamerule keepInventory true
scoreboard objectives add timer dummy
scoreboard objectives add wheatBreakDetect minecraft.mined:minecraft.wheat
scoreboard objectives add carrotBreakDetect minecraft.mined:minecraft.carrots
scoreboard objectives add potatoBreakDetect minecraft.mined:minecraft.potatoes
scoreboard objectives add Coins dummy
scoreboard objectives add vars dummy
scoreboard objectives modify Coins displayname {"text": "Coins:","color": "gold"}
scoreboard objectives setdisplay below_name Coins

scoreboard objectives add fakestone_dmg_upgrade dummy
function player_motion:internal/technical/load
team add player
scoreboard players set $strength player_motion.api.launch 10000

# To make sure your datapack is working, a load message can be useful.
# tellraw @a { "color": "#00FF00", "text": "add a different message every time (get him banned from there fr) (where am I) (HELP ME) (AAAHHHHHHHHHHHHHHHHH) (wait I am farming) (what is \"farming\") (it's when you @^#&%@*@$*^#&) (oh ok) (what???) (wtf is that even supposed to mean????) (TODO: MAKE THIS WORK WITH A RANDOM)"}

# You can do whatever you want in the load function!
#give @a minecraft:sea_pickle[minecraft:enchantments={levels:{"minecraft:silk_touch":2}}]

scoreboard objectives add discordLink trigger
scoreboard objectives add getHoe trigger
scoreboard objectives add hoeType dummy

# random stuf

scoreboard objectives add randomValue dummy
function code:randommsg

# day/night

scoreboard players set $cycle timer 0