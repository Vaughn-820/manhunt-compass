# If the speedrunner is in the overworld, update the overworld compass coordinates
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:overworld"}] store result block 42069 0 42069 Items[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute in minecraft:overworld run data modify block 42069 0 42069 Items[0].tag.LodestonePos.Y set value 0
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:overworld"}] store result block 42069 0 42069 Items[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

# If the speedrunner is in the nether, update the nether compass coordinates
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:the_nether"}] store result block 42070 0 42070 Items[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute in minecraft:overworld run data modify block 42070 0 42070 Items[0].tag.LodestonePos.Y set value 0
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:the_nether"}] store result block 42070 0 42070 Items[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

# If the speedrunner is in the end, update the end compass coordinates
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:the_end"}] store result block 42071 0 42071 Items[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
execute in minecraft:overworld run data modify block 42071 0 42071 Items[0].tag.LodestonePos.Y set value 0
execute in minecraft:overworld if entity @a[tag=tracked, nbt={Dimension:"minecraft:the_end"}] store result block 42071 0 42071 Items[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]

# Refresh all tracking compasses to the updated version using the refresh compass function
execute as @a[tag=!tracked,nbt={Inventory:[{tag:{tracker_compass:1b}}]}] run function compass:refresh_compass