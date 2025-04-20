scoreboard players set @s tempForWheat 0

execute store result score @s tempForWheat run clear @s wheat 0
scoreboard players operation @s wheatInPurgatory += @s tempForWheat
scoreboard players set @s tempForWheat 0
execute if score @s wheatInPurgatory matches 1.. run clear @s wheat

scoreboard players operation @s tempForWheat = @s wheatInPurgatory
scoreboard players operation @s tempForWheat /= .wheatForCoins tempForWheat
# tempForWheat = wheatInPurgatory / 16

scoreboard players operation @s Coins += @s tempForWheat

scoreboard players operation @s tempForWheat *= .wheatForCoins tempForWheat
scoreboard players operation @s wheatInPurgatory -= @s tempForWheat

execute if score @s wheatInPurgatory matches 1.. run function farming:return_wheat

tellraw @s [{"text":"You converted your wheat to coins! You now have "},{"score":{"name":"@s","objective":"Coins"}}," coins!"]
