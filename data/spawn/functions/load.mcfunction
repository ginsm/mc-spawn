# ------------------------ #
#       Begin Reload       #
# ------------------------ #

# Alert that the datapack has reloaded
execute as @a run tellraw @s [{"text": "[Spawn] ", "color": "aqua"}, {"text": "(_version_) ", "color": "green"}, {"text": "has loaded!", "color": "white"}]

# ------------------------------- #
#       Initialize Datapack       #
# ------------------------------- #

# Create an objective to prevent install from running more than once
scoreboard objectives add spawn_install dummy
execute unless score $init spawn_install matches 1 run function spawn:load/install