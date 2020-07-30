# -------------------------------- #
#       Datapack Init Module       #
# -------------------------------- #

# Create an objective to prevent further initialization and run spawn:init
scoreboard objectives add spawn_init dummy
execute unless score $init spawn_init matches 1 run function spawn:scripts/install


# ----------------------------------- #
#       Check For Spawn Trigger       #
# ----------------------------------- #

# Teleport any users to spawn if their spawn score is set to 1
execute as @a if score @s spawn matches 1 run function spawn:scripts/teleport