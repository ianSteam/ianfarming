execute store result score .random vars run random value 1..100
execute if score .random vars matches 96.. run give @s wheat_seeds
execute unless score .random vars matches 96.. run give @s wheat

execute unless score .random vars matches 96.. store result score .random2 vars run random value 1..100
execute if items entity @s weapon.mainhand stone_hoe if score .random2 vars matches 66.. run give @s wheat
execute if items entity @s weapon.mainhand stone_hoe if score .random2 vars matches 86.. run give @s wheat
execute if items entity @s weapon.mainhand stone_hoe if score .random2 vars matches 100 run give @s wheat

execute if score .random vars matches 96.. store result score .random2 vars run random value 1..100
execute if items entity @s weapon.mainhand stone_hoe if score .random2 vars matches 66.. run give @s wheat_seeds
execute if items entity @s weapon.mainhand stone_hoe if score .random2 vars matches 76.. run give @s wheat_seeds