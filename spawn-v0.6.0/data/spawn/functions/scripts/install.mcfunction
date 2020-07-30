# ------------------------------ #
#       Begin Initializing       #
# ------------------------------ #

# Stop init from running again
scoreboard players set $init spawn_init 1


# -------------------------------------------- #
#       Initialize Scoreboard Objectives       #
# -------------------------------------------- #

# Create empty scoreboard objectives for X, Y, and Z (@spawn:set)
scoreboard objectives add spawn_posX dummy
scoreboard objectives add spawn_posY dummy
scoreboard objectives add spawn_posZ dummy

# Create and enable the spawn trigger
scoreboard objectives add spawn trigger


# ------------------------------- #
#       Finish Initializing       #
# ------------------------------- #

# Alert the users that the datapack has finished initialization
execute as @a run tellraw @s [{"text": "[Spawn] ", "color": "aqua"}, {"text": "(v0.6.0) ", "color": "green"}, {"text": "has been installed successfully!", "color": "white"}]