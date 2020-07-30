# ------------------------------------------------ #
#       Get the issuer's current coordinates       #
# ------------------------------------------------ #

execute store result score @s spawn_posX run data get entity @s Pos[0]
execute store result score @s spawn_posY run data get entity @s Pos[1]
execute store result score @s spawn_posZ run data get entity @s Pos[2]