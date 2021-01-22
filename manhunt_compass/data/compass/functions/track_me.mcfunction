# Clear all current tracking compasses from player's inventories, and clear the tracked tag from the old speedrunner
clear @a compass{tracker_compass:1b}
tag @a remove tracked

# Add the tracked tag to the new speedrunner, and give all remaining players a tracking compass
tag @s add tracked
execute as @a[tag=!tracked] run function compass:get_compass