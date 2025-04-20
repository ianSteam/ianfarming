# This function is set as the reward function in data/code/advancements/eat_fish.json
# When the player earns that advancement by eating tropical fish, they will run this function.
#execute unless block ^ ^ ^1 air run tp @s ^ ^ ^1
function player_motion:api/launch_looking
# Revoke the advancement so they can activate it more than once.
advancement revoke @s only code:eat_fish