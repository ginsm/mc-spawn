# --------------------------- #
#       Begin Spawn Set       #
# --------------------------- #

# Set this tag so we can reference the issuer later
tag @s add setting_spawn

# Set the world spawn to the current location
setworldspawn


# ------------------------------- #
#       Summon Spawn Entity       #
# ------------------------------- #

# Ensure there is no existing spawn entity
kill @e[type=area_effect_cloud, tag=spawn_entity]

# Summon a new spawn entity on the issuer
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Age:-2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["spawn_entity"]}


# --------------------------------------- #
#       Fix Spawn Entity's Rotation       #
# --------------------------------------- #

# Fix the rotation by teleporting the spawn entity to the player (facing the same direction)
execute as @e[type=area_effect_cloud, tag=spawn_entity] at @s rotated as @a[tag=setting_spawn] run tp @s ~ ~ ~ ~ 0


# -------------------------------------- #
#       Alert User About Spawn Set       #
# -------------------------------------- #

# Fetch the issuer's current coordinates
function spawn:scripts/getcoords

# Alert the issuer that spawn has been set at those coordinates
execute as @s run tellraw @s [{"text":"[Spawn] ", "color": "aqua"},{"text": "Spawn has been set to: ", "color": "white"},{"text": "x", "color": "gold"},{"text": "", "extra": [{"score": {"name": "@s", "objective": "spawn_posX"}}], "color": "white"}, {"text": " y", "color": "gold"}, {"text": "", "extra": [{"score": {"name": "@s", "objective": "spawn_posY"}}], "color": "white"}, {"text": " z", "color": "gold"}, {"text": "", "extra": [{"score": {"name": "@s", "objective": "spawn_posZ"}}], "color": "white"}, {"text": "!", "color": "white"}]


# ------------------------------ #
#       Finalize Spawn Set       #
# ------------------------------ #

# Remove the setting_spawn tag
tag @s remove setting_spawn

# Enable teleporting to spawn
scoreboard players enable @a spawn