# Manhunt Compass Datapack
A datapack version of the player tracking compass used in Dream's *Minecraft Manhunt* series.

**Note**: This is merely a modification of a datapack written by Cloud Wolf on YouTube. I highly recommend watching his video detailing how the original datapack works, as it helped me learn a lot about how to write datapacks. My modifications simply allow the tracking compass to track players in any dimension, rather than just the overworld.

Video Link: https://www.youtube.com/watch?v=HXlZjClAcNU

## Features
- **Compatible w/ Realms**: Since this is a datapack instead of a plugin, it can be used on a Realm instead of a typical server.
- **Advanced tracking info**: A tracking compass does not need to be held in order for it to work, but holding it displays the name of the speedrunner and their y-coordinate in the action bar.
- **Works across dimensions**: The tracking compass works in all three Minecraft dimensions. Additionally, if a hunter is not in the same dimension as the speedrunner, the compass will point to the speedrunner's most recently used portal. In this same case, if the hunter holds the compass in their hand for addtional information, the action bar will tell them that the speedrunner is currently in another dimension.
- **Compass on Respawn**: A hunter will be given a new tracking compass on respawn, provided a player is currently being tracked.

## Installation (Windows)
- In the Windows start menu search bar, type `%appdata%` and press enter
- From here, navigate to `.minecraft/saves/minecraftWorldName/datapacks`, where `minecraftWorldName` is the world that you want to use for a Minecraft Manhunt
- Download the repository contents as a ZIP file and extract its contents into the directory of your choice
- Locate the `manhunt_compass` folder in the extraction, and move it into the `datapacks` folder mentioned earlier
  - **Note**: Make sure that the world you're using allows cheats, otherwise you won't be able to use the datapack

## Usage
- Load up your Minecraft world. If you performed the datapack installation steps with the world already open, type `/reload` to enable the datapack
- Once the group is ready, have the speedrunner player run the following command" `/function compass:track_me`
  - **Note**: If you don't want to give the speedrunner command permissions, anyone with said permissions can instead run the following command: `/execute as <speedrunner> run function compass:track_me`, where `<speedrunner>` is replaced with the name of the speedrunner
- If a hunter happens to lose their compass, have them run the command `/function compass:get_compass` to get a new one.
