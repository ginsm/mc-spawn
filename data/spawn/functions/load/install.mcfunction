# ---------------------------- #
#       Begin Installing       #
# ---------------------------- #

# Stop install from running again
scoreboard players set $init spawn_install 1


# -------------------------------------------- #
#       Initialize Scoreboard Objectives       #
# -------------------------------------------- #

# Create empty scoreboard objectives for X, Y, and Z (@spawn:set)
scoreboard objectives add spawn_posX dummy
scoreboard objectives add spawn_posY dummy
scoreboard objectives add spawn_posZ dummy

# Create the spawn trigger (enabled @spawn:set)
scoreboard objectives add spawn trigger


# ---------------------------- #
#       Finished Install       #
# ---------------------------- #

# Alert the users that the datapack has finished initialization
execute as @a run tellraw @s [{"text": "[Spawn] ", "color": "aqua"}, {"text": "(_version_) ", "color": "green"}, {"text": "has been installed successfully!", "color": "white"}]