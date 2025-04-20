scoreboard players set #white_legitishulker_price Coins 50

execute as @p if score @s Coins >= #white_legitishulker_price Coins run give @s white_shulker_box[custom_name='[{"color":"aqua","italic":false,"text":"Legiti"},{"color":"white","italic":false,"text":"Shulker™"}]']
execute as @p unless score @s Coins >= #white_legitishulker_price Coins run tellraw @s "[Shop] You need at least 50 Coin to buy this!"
execute as @p if score @s Coins >= #white_legitishulker_price Coins run scoreboard players remove @s Coins 50
execute as @p if score @s Coins >= #white_legitishulker_price Coins run tellraw @s "[Shop] Bought 1 LegitiShulker for 50 Coin!"