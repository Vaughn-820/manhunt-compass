# Loop the main function every half second (10 in-game ticks)
schedule function compass:main_10t 10t

# Run the track function on the speedrunner
execute as @a[tag=tracked] at @s run function compass:track

# If a hunter dies, give them a tracker compass on respawn
execute as @a[tag=!tracked, scores={respawn=10..19}] run function compass:get_compass