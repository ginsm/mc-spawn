# --------------------------- #
#       Uninstall Spawn       #
# --------------------------- #

# Remove any created objectives
scoreboard objectives remove spawn_posX
scoreboard objectives remove spawn_posY
scoreboard objectives remove spawn_posZ
scoreboard objectives remove spawn
scoreboard objectives remove spawn_init

# Kill the spawn_entity
kill @e[type=area_effect_cloud,tag=spawn_entity]

# Alert the user that the datapack has been uninstalled and give
# instructions on how to reinstall.
tellraw @a [{"text": "[Spawn] ", "color": "aqua"}, {"text": "(v0.6.0) ", "color": "green"}, {"text": "has been uninstalled.", "color": "white"}]

datapack disable "file/spawn-v0.6.0"