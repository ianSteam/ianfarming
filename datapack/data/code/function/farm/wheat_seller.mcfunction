execute store result score .item_count vars if items entity @s weapon.mainhand wheat
execute store result score .item_count2 vars if items entity @s container.* wheat
execute unless score .item_count vars matches 16.. if score .item_count2 vars matches 16.. if items entity @s weapon.mainhand wheat run tellraw @s {"text": "Hold 16 wheat in mainhand!","color":"red"}
execute unless score .item_count vars matches 16.. if score .item_count2 vars matches 16.. unless items entity @s weapon.mainhand wheat run tellraw @s {"text": "Hold wheat in mainhand!","color":"red"}
execute unless score .item_count vars matches 16.. unless score .item_count2 vars matches 16.. run tellraw @s {"text": "You don't have enough wheat!","color":"red"}
execute unless score .item_count vars matches 16.. run playsound entity.villager.no master @s ~ ~ ~ 1 1 1
execute if score .item_count vars matches 16.. run scoreboard players add @s Coins 1
execute if score .item_count vars matches 16.. run clear @s wheat 16
execute if score .item_count vars matches 16.. run playsound entity.villager.celebrate master @s ~ ~ ~ 1 1 1
execute if score .item_count vars matches 16.. run particle happy_villager 3 3 -17 0.1 0.25 0.1 1 10 normal @s