# ---------------------------------- #
#       Ensure Valid Dimension       #
# ---------------------------------- #

# The entity was found to be in the overworld; set spawn entity
execute if data entity @s {Dimension: "minecraft:overworld"} run function spawn:set/summonspawnentity

# The entity was found to be in another dimension; dispatch error
execute unless data entity @s {"Dimension": "minecraft:overworld"} run tellraw @s [{"text": "[Spawn] ", "color": "aqua"}, {"text": "You must be in the Overworld to set spawn.", "color": "red"}]