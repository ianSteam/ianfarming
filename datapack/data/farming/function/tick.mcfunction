# HAZEL (xendyex) STARTED THIS FILE #

scoreboard players enable @a convert 

## ConvertWheatToCoins.hnf

execute as @a[scores={convert=1..}] run function farming:convertwheattocoins
scoreboard players set @a[scores={convert=1..}] convert 0