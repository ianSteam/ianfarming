give @s[scores={wheatInPurgatory=1..}] wheat 1

scoreboard players remove @s wheatInPurgatory 1
execute if score @s wheatInPurgatory matches 1.. run function farming:return_wheat
