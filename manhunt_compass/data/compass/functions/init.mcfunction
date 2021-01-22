# Start the main loop
schedule function compass:main_10t 10t

# Forceload the chunk that will be used to store tracking compasses
forceload add 42069 42069

# Place the shulker boxes that will keep track of tracked player coordinates across dimensions
execute in minecraft:overworld run setblock 42069 0 42069 shulker_box
execute in minecraft:overworld run setblock 42070 0 42070 shulker_box
execute in minecraft:overworld run setblock 42071 0 42071 shulker_box

# Place bedrock above each box so that player's don't accidentally stumble upon them
execute in minecraft:overworld run setblock 42069 1 42069 bedrock
execute in minecraft:overworld run setblock 42070 1 42070 bedrock
execute in minecraft:overworld run setblock 42071 1 42071 bedrock

# Initialize each dimension's tracker compass in their respective shulker boxes
execute in minecraft:overworld run data modify block 42069 0 42069 Items[] set value {id:"compass",Count:1b,tag:{tracker_compass:1b,LodestoneDimension:"overworld",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}
execute in minecraft:overworld run data modify block 42070 0 42070 Items[] set value {id:"compass",Count:1b,tag:{tracker_compass:1b,LodestoneDimension:"the_nether",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}
execute in minecraft:overworld run data modify block 42071 0 42071 Items[] set value {id:"compass",Count:1b,tag:{tracker_compass:1b,LodestoneDimension:"the_end",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}}}

# Add scoreboard objectives to keep track of compass slots, the speedrunner's y coordinate, and time since last death
scoreboard objectives add tc_compass dummy
scoreboard objectives add ycoord dummy
scoreboard objectives add respawn minecraft.custom:minecraft.time_since_death