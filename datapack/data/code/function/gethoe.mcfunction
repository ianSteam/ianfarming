execute as @a[scores={getHoe=1,hoeType=0}] run give @s wooden_hoe[can_break={predicates:[{blocks:"wheat"},{blocks:"carrots"},{blocks:"potatoes"}],show_in_tooltip:true},unbreakable={show_in_tooltip:false},custom_data={trigger:true}] 1
execute as @a[scores={getHoe=1,hoeType=1}] run give @s stone_hoe[can_break={predicates:[{blocks:"wheat"},{blocks:"carrots"},{blocks:"potatoes"}]},item_name='{"bold":true,"color":"white","italic":false,"text":"Double Crops Hoe"}',custom_model_data=1] 1
# i can never run this function -hazel
