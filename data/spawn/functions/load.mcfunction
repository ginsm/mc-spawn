# ------------------------ #
#       Begin Reload       #
# ------------------------ #

# Alert that the datapack has reloaded
execute as @a run tellraw @s [{"text": "[Spawn] ", "color": "aqua"}, {"text": "(_version_) ", "color": "green"}, {"text": "has loaded!", "color": "white"}]

# ------------------------------- #
#       Initialize Datapack       #
# ------------------------------- #

# Create an objective to prevent further initialization and run spawn:init
scoreboard objectives add spawn_init dummy
execute unless score $init spawn_init matches 1 run function spawn:scripts/install