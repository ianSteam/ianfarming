# tick.mcfunction
# Any commands placed here will run every tick, like a repeating command block.

# Example: Create some flame particles at your feet when standing on a magma block.
execute as @a at @s if block ~ ~-1 ~ magma_block run particle flame ~ ~ ~ 0.125 0.0 0.125 0.05 1

# Example 2: Predicates
# Predicates let you easily check things that are otherwise complicated to detect. 
# We check if a player is sneaking, then give them a potion effect.
#execute as @a at @s if predicate code:is_sneaking run effect give @s regeneration 1 0
execute as @a[scores={left=1..}] run function code:joind
execute if score time timer matches ..3599 run scoreboard players add time timer 1
execute if score time timer matches 3600 run function code:clickheretofindout
execute if score time timer matches 1300 as @a run function code:discord
function code:farm/tick

#scoreboard players add @a Coins 0
execute as @a run title @s actionbar [{"text":""},{"text":"Coins ⛃ : ","color":"gold"},{"score":{"name":"@s","objective":"Coins"}}]
#team join dev @a[tag=is_dev, name=!ian_steam]
team join player @a[team=]
function code:shop/hoes/double_drop_hoe
execute as @e[tag=buy_white_shulker_interact] on target run execute at @s run function code:shop/legitilockers/white_shulker
execute as @e[tag=buy_black_shulker_interact] on target run execute at @s run function code:shop/legitilockers/black_shulker

execute as @e[tag=wheat_seller_interact] on target run function code:farm/wheat_seller

execute as @e[tag=fakestone_upgrade] at @s if score @p fakestone_dmg_upgrade matches 3.. on target run tellraw @s "§c§oUpgrade Maxed Out!"
execute as @e[tag=fakestone_upgrade] at @s unless score @p fakestone_dmg_upgrade matches 3.. on target run function code:shop/dungeonupgrades/fakestoneupgrade_1


execute as @e[type=interaction] run data remove entity @s interaction

execute as @a[tag=!joined] run function code:first_join


scoreboard players enable @a discordLink
execute as @a[scores={discordLink=1..}] run function code:discord
execute as @a[scores={discordLink=1..}] run scoreboard players set @s discordLink 0

scoreboard players enable @a getHoe
execute as @a[scores={getHoe=1..}] run clear @s wooden_hoe[custom_data={trigger:true}]
execute as @a[scores={getHoe=1..}] run clear @s stone_hoe
execute as @a[scores={getHoe=1..}] run function code:gethoe
execute as @a[scores={getHoe=1..}] run scoreboard players set @s getHoe 0
#execute as @a[x=42, y=11, z=-15] run tp @s ~ ~ ~20

execute as @a at @s if block ~ ~-.25 ~ infested_cobblestone unless score @s fakestone_dmg_upgrade matches 1.. run damage @s 20
execute as @a at @s if block ~ ~-.25 ~ infested_cobblestone if score @s fakestone_dmg_upgrade matches 1 run damage @s 10
execute as @a at @s if block ~ ~-.25 ~ infested_cobblestone if score @s fakestone_dmg_upgrade matches 2 run damage @s 5

#heyy who removed the code for this??? -connor
#imma fix this now >:(
#ok fixed -connor
#i did cuz most the levels just do the same thing, redoing it now. - ian
#the fuck? what
#where tf is literally over half of the rooms in the dungeon? I spen hours on those. -connor


execute as @a at @s if entity @n[tag= endingpoint,distance= ..0.5] run function code:tp_to_random_room
execute as @a at @s if entity @n[tag= endingpoint_noreward,distance= ..0.5] run function code:tp_to_random_room_no_reward

# some boring day/night stuff
scoreboard players add $cycle timer 1
execute if score $cycle timer matches 300.. run time add 1000
execute if score $cycle timer matches 300.. run scoreboard players set $cycle timer 0

