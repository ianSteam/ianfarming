scoreboard players set #black_shulker_price Coins 75

execute as @p if score @s Coins >= #black_shulker_price Coins run give @s black_shulker_box[custom_name='[{"color":"aqua","italic":false,"text":"Legiti"},{"color":"dark_gray","italic":false,"text":"Shulker™"}]']
execute as @p unless score @s Coins >= #black_shulker_price Coins run tellraw @s "[Shop] You need at least 75 Coins to buy this!"
execute as @p if score @s Coins >= #black_shulker_price Coins run scoreboard players remove @s Coins 75
execute as @p if score @s Coins >= #black_shulker_price Coins run tellraw @s "[Shop] Bought 1 Black LegitiShulker for 75 Coins!"

