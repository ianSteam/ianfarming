execute as @e[type=interaction,tag=double_hoe] on attacker run execute if score @s Coins matches ..199 run tellraw @s {"text":"You do not have the required coins to buy this item!","color":"red"}
execute as @e[type=interaction,tag=double_hoe] at @s on attacker run execute if score @s Coins matches ..199 run playsound block.note_block.didgeridoo weather @s ~ ~ ~ 1000000000
execute as @e[type=interaction,tag=double_hoe] on target run execute if score @s Coins matches ..199 run tellraw @s {"text":"You do not have the required coins to buy this item!","color":"red"}
execute as @e[type=interaction,tag=double_hoe] at @s on target run execute if score @s Coins matches ..199 run playsound block.note_block.didgeridoo weather @s ~ ~ ~ 1000000000
execute as @e[type=interaction,tag=double_hoe] on attacker run execute if score @s Coins matches 200.. run give @s stone_hoe[can_break={predicates:[{blocks:"wheat"},{blocks:"carrots"},{blocks:"potatoes"}]},item_name='{"bold":true,"color":"white","italic":false,"text":"Double Crops Hoe"}',custom_model_data=1] 1
execute as @e[type=interaction,tag=double_hoe] on target run execute if score @s Coins matches 200.. run give @s stone_hoe[can_break={predicates:[{blocks:"wheat"},{blocks:"carrots"},{blocks:"potatoes"}]},item_name='{"bold":true,"color":"white","italic":false,"text":"Double Crops Hoe"}',custom_model_data=1] 1
execute as @e[type=interaction,tag=double_hoe] on attacker run execute if score @s Coins matches 200.. run tellraw @s {"text":"Succesfully bought item!","color":"green"}
execute as @e[type=interaction,tag=double_hoe] on target run execute if score @s Coins matches 200.. run tellraw @s {"text":"Succesfully bought item!","color":"green"}
execute as @e[type=interaction,tag=double_hoe] at @s on attacker if score @s Coins matches 200.. run playsound minecraft:block.note_block.flute
execute as @e[type=interaction,tag=double_hoe] at @s on target if score @s Coins matches 200.. run playsound minecraft:block.note_block.flute
execute as @e[type=interaction,tag=double_hoe] at @s on target if score @s Coins matches 200.. run scoreboard players set @s hoeType 1

execute as @e[type=interaction,tag=double_hoe] on attacker run execute if score @s Coins matches 200.. run scoreboard players remove @s Coins 200
execute as @e[type=interaction,tag=double_hoe] on target run execute if score @s Coins matches 200.. run scoreboard players remove @s Coins 200





execute as @e[type=interaction,tag=double_hoe] run data remove entity @s attack
execute as @e[type=interaction,tag=double_hoe] run data remove entity @s interaction