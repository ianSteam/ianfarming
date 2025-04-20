scoreboard players set #fakestoneupgrade Coins 100


execute as @p if score @s Coins >= #fakestoneupgrade Coins run scoreboard players add @s fakestone_dmg_upgrade 1
execute as @p unless score @s Coins >= #fakestoneupgrade Coins run tellraw @s "You need at least 100 Coins to buy this!"
execute as @p if score @s Coins >= #fakestoneupgrade Coins run scoreboard players remove @s Coins 100
execute as @p if score @s Coins >= #fakestoneupgrade Coins run tellraw @s "Upgraded Fakestone damage reduction for 100 Coins!"



execute as @e[type=interaction,tag=fakestone_upgrade] run data remove entity @s attack
execute as @e[type=interaction,tag=fakestone_upgrade] run data remove entity @s interaction