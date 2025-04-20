#scoreboard players set #HERE Coins (AMMOUNT)


#execute as @p if score @s Coins >= #HERE Coins run [COMMAND]
#execute as @p unless score @s Coins >= #HERE Coins run tellraw @s "You need at least (PRICE) Coins to buy this!"
#execute as @p if score @s Coins >= #HERE Coins run scoreboard players remove @s Coins (PRICE)
#execute as @p if score @s Coins >= #HERE Coins run tellraw @s "Bought (AMMOUNT) (ITEM) for (PRICE) Coins!"