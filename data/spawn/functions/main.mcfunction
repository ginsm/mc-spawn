# ----------------------------------- #
#       Check For Spawn Trigger       #
# ----------------------------------- #

# Teleport any users to spawn if their spawn score is set to 1
execute as @a if score @s spawn matches 1 run function spawn:main/teleport