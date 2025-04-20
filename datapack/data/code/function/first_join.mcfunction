tellraw @a[tag=joined] [{"selector": "@s"}," welcome!"]
tag @s add joined
scoreboard players add .players_joined vars 1
scoreboard players set @s hoeType 0
function code:gethoe
