execute as @s at @e[tag= startingpoint,sort=random,limit=1] run tp @s ~ ~ ~ 0 ~
tellraw @s "§b§lRoom Completed"
scoreboard players add @s Coins 5
tellraw @s "§a§o+5 Coins"