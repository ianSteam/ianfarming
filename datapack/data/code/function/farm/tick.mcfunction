execute as @e[type=item] at @s if items entity @s contents wheat[custom_data={farm:1b}] align xyz run summon block_display ~ ~ ~ {Tags:["farm_gen","wheat"],block_state:{Name:"wheat",Properties:{age:"0"}}}
execute as @e[type=item] at @s if items entity @s contents carrot[custom_data={farm:1b}] align xyz run summon block_display ~ ~ ~ {Tags:["farm_gen","carrot"],block_state:{Name:"carrots",Properties:{age:"0"}}}
execute as @e[type=item] at @s if items entity @s contents potato[custom_data={farm:1b}] align xyz run summon block_display ~ ~ ~ {Tags:["farm_gen","potato"],block_state:{Name:"potatoes",Properties:{age:"0"}}}
execute as @e[type=item] at @s if items entity @s contents poisonous_potato[custom_data={farm:1b}] align xyz run summon block_display ~ ~ ~ {Tags:["farm_gen","potato"],block_state:{Name:"potatoes",Properties:{age:"0"}}}
execute as @e[type=item] at @s if items entity @s contents golden_carrot[custom_data={farm:1b}] align xyz run summon block_display ~ ~ ~ {Tags:["farm_gen","carrot"],block_state:{Name:"carrots",Properties:{age:"0"}}}

execute as @e[type=item] at @s if items entity @s contents *[custom_data={farm:1b}] run kill @s

scoreboard players add @e[tag=farm_gen] timer 1
execute at @e[tag=farm_gen,scores={timer=140}] run setblock ~ ~-1 ~ farmland[moisture=7]

execute as @e[tag=farm_gen,scores={timer=20}] run data modify entity @s block_state.Properties set value {age:"0"}
execute as @e[tag=farm_gen,scores={timer=40}] run data modify entity @s block_state.Properties set value {age:"1"}
execute as @e[tag=farm_gen,scores={timer=60}] run data modify entity @s block_state.Properties set value {age:"2"}
execute as @e[tag=farm_gen,scores={timer=80}] run data modify entity @s block_state.Properties set value {age:"3"}
execute as @e[tag=farm_gen,scores={timer=100}] run data modify entity @s block_state.Properties set value {age:"4"}
execute as @e[tag=farm_gen,scores={timer=120}] run data modify entity @s block_state.Properties set value {age:"5"}
execute as @e[tag=farm_gen,scores={timer=140}] run data modify entity @s block_state.Properties set value {age:"6"}

execute at @e[tag=farm_gen,tag=wheat,scores={timer=160}] run setblock ~ ~ ~ wheat[age=7]
execute at @e[tag=farm_gen,tag=carrot,scores={timer=160}] run setblock ~ ~ ~ carrots[age=7]
execute at @e[tag=farm_gen,tag=potato,scores={timer=160}] run setblock ~ ~ ~ potatoes[age=7]

kill @e[tag=farm_gen,scores={timer=160..}]

#give @a[scores={wheatBreakDetect=1..},gamemode=!creative,gamemode=!spectator] wheat 1
#give @a[scores={wheatBreakDetect=1..},gamemode=!creative,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":1}}}] wheat 1

execute as @a[scores={wheatBreakDetect=1..},gamemode=!creative,gamemode=!spectator] run function code:farm/wheat_loot
give @a[scores={carrotBreakDetect=1..},gamemode=!creative,gamemode=!spectator] carrot 1
give @a[scores={potatoBreakDetect=1..},gamemode=!creative,gamemode=!spectator] potato 1
execute as @a[scores={wheatBreakDetect=1..},gamemode=!creative,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":1}}}] run function code:farm/wheat_loot
give @a[scores={carrotBreakDetect=1..},gamemode=!creative,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":1}}}] carrot 1
give @a[scores={potatoBreakDetect=1..},gamemode=!creative,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":1}}}] potato 1
scoreboard players reset @a[scores={wheatBreakDetect=1..}] wheatBreakDetect
scoreboard players reset @a[scores={carrotBreakDetect=1..}] carrotBreakDetect
scoreboard players reset @a[scores={potatoBreakDetect=1..}] potatoBreakDetect

clear @a *[custom_data={farm:1b}]


#put farm there to not destroy
fill 6 -1 1 13 -1 6 minecraft:farmland[moisture=7]
execute as @a at @s if block ~ ~-1 ~ farmland run effect give @s slow_falling 1 1
#to stop from people to kill farmland from corner

execute as @a at @s if block ~.3 ~-1 ~.3 farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~-.3 ~-1 ~-.3 farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~.3 ~-1 ~ farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~ ~-1 ~.3 farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~-.3 ~-1 ~ farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~ ~-1 ~-.3 farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~-.3 ~-1 ~.3 farmland run effect give @s slow_falling 1 1
execute as @a at @s if block ~.3 ~-1 ~-.3 farmland run effect give @s slow_falling 1 1
