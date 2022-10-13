# Enhanced Biome Overlay for Odyssey

Since the release of Odyssey I've received many requests for a mod of the Biome Overlay. The default overlay has a background of blue, and a biome target colour of slightly more greeny-blue - it's not surprising it can be very difficult to distinguish between the two layers, especially for CMDRs with visual difficulties

I put off modding the overlay for a long time as it involves adding code to six large shaders written in shader assembly, which is a very difficult language to mod. However, it's done now and I hope I never have to do that again 🙂

**The options are quite basic:**
- Elite Default
- Custom target colour (choose your own colour for the target biome layer)
- Custom target colour plus visible terrain (the blue background is turned off. Makes it easier to find an area to land with adequate light)

Note: It's impossible to have a different colour for each type of biome as the shader doesn't receive that information

This is the first version of the enhanced overlay, so please report any bugs to the [EDHM Discord](https://discord.gg/MtBszksjMr), thank you

![Enhanced Biome Overlay](https://github.com/psychicEgg/EDHM/blob/main/Odyssey/3rdPartyMods/BiomeOverlay/BiomeOverlay.jpg?raw=true)

Changelog for v1.2:
Added an optional keybind to cycle through the overlay modes. Sometimes it can be easier to see the biome in Mode 1, then use Mode 2 to choose your landing spot
