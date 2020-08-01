# ------------------------------------ #
#       Teleport Issuer To Spawn       #
# ------------------------------------ #

# Teleport the player to the spawn entity (facing the same direction)
execute in overworld as @s at @e[type=area_effect_cloud,tag=spawn_entity] positioned ~ ~ ~ run tp @s ~ ~ ~ ~ ~

# Reset the issuer's spawn score and enable it again
scoreboard players reset @s spawn
scoreboard players enable @a spawn

# Alert the user about the success
tellraw @a [{"text": "[Spawn] ", "color": "aqua"}, {"text": "You have been teleported to spawn!", "color": "white"}]