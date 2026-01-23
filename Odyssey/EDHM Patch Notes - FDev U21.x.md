## EDHM v21.00 to v21.07 for Elite Dangerous v4.3.0.1 Patch Notes

### -- Fixed for Elite Dangerous v4.3.0.1 (Caspian Explorer Update) --<br><br>

**EDHM v21.07:**
- Add a warning when an EDHM update is not installed correctly

-------------------------------------------------------------------------

**EDHM v21.06:**
- Fix the Boarding Menu issue which could cause it to flash in certain situations
- Fix FSS/DSS Percentage Text
  - Since a recent game update, this element is no longer treated as text by the game.
- Fix the Squadron Menu in 1080p which was not always coloured correctly depending on the user graphics settings and the Launcher
  - Note that some resolutions higher than 1080p may still work correctly when they correspond to the final resolution 1080p x Supersampling Factor.
  - I cannot check higher resolutions and Frontier Launcher. Ideally I would like to modify the Squadron Menu detection method so as not to depend on user settings but for the moment I have not found any resources allowing this. For higher resolutions, an (imperfect) workaround can be enabled using `global $UHDSquadronMenuTEST` found in `d3dx.ini`.
- Add EDHM Version Overlay
- Fix some icons

-------------------------------------------------------------------------

**EDHM v21.05:**
- Second Fix for Elite Dangerous v4.3.0.0 (Caspian Explorer Update)
  - Fix Outfitting Menu

-------------------------------------------------------------------------

**EDHM v21.04:**
- Fix for Elite Dangerous v4.3.0.0 (Caspian Explorer Update)
- Fix Dodec Icons
- Fix CQC Rank Icon

-------------------------------------------------------------------------

**EDHM v21.03:**
- Fix for Elite Dangerous v4.2.2.0 (Dodec Update)
- Fix Fuel for Next Jump Brightness (w94)
- Analysis Mode Icons are now linked to Analysis HUD (w140 & xyzw54)
- `nvapi64.dll` removed because it was unnecessary

-------------------------------------------------------------------------

**EDHM v21.02:**
- Fix for Elite Dangerous v4.2.1.0 (Type-11 Update)
- Starting with this release, EDHM ships with version 1.4.5 of [`3Dmigoto`](https://github.com/bo3b/3Dmigoto) modified by [`MrVaad`](https://github.com/MrVaad).
  - This version enables auto apply settings **for EDHM-UI v3 users** *(when applying a theme, changing settings in 3PMods, and when changing ships via the EDHM-UI v3 Shipyard feature)*.
  - This release also includes 3Dmigoto's `nvapi64.dll` to see if it can resolve issues with enabling `Nvidia Smooth Motion`. If this doesn't help, this dll will be removed later.
  - You can find the 3Dmigoto Loader for this version [`HERE`](https://github.com/psychicEgg/EDHM/tree/main/Odyssey/Resources/3Dmigoto_Loader_by_MrVaad/) *(for advanced users only)*.

-------------------------------------------------------------------------

**EDHM v21.01:**
- Second Fix for Elite Dangerous v4.2.0.3 (Vanguards Update), including:
  - Fix Community Goal Artwork
  - Fix Station/Carrier Artwork (disabled buttons sometimes took the Custom Color instead of XML)
  - Fix some Mission Icons
  - Fix Colonization Beacon Icon
  - Fix Galmap Transition Artwork (sometimes turned orange)
  - Fix Squadron Carrier Icon Color in Navigation Panel
  - Fix Selected Color Square in Squadron Menu (some Colors were changed in the Selected Color Square to the Left of the Color Picker)
  - Fix Pilot Rank Icons in Squadron Menu
  - Fix Finance and Storage Bar in Squadron Menu
  - Fix Good Icons in Squadron Carrier Menu
  - Fix Cyan Button in Squadron Carrier Shipyard
  - Fix Ship Artworks in Squadron Carrier Menu

Another big thank you to CMDR Piker 2.0 and his generosity, which allowed me to take care of the elements related to the Squadron Carrier.

-------------------------------------------------------------------------

**EDHM v21.00:**
- First Fix for Elite Dangerous v4.2.0.2 (Vanguards Update)
  - Fix Orange Elements and other problems caused by Vanguards Update
  - NEW: New Squadron Menu Color Mode *(Cyan Elite Default or XML)* (y229)
  - NEW: The HoloMe Menu is now modded and therefore takes on the XML Color
  
If the New Squadron Menu mod turns out to be problematic, it may be changed or even removed in a future update.

NOTE: Since I don't have access to a Squadron Carrier *(SFC)*, it's impossible for me to mod SFC-related items, so you might find some unmodded items in your SFC menus. These menus may be modded in the future if I obtain an SFC.

-------------------------------------------------------------------------

FDev have made many changes with Vanguards Update, so if you notice any remaining orange elements after the update, please let me know where they are and send me a screenshot in the [EDHM Discord](https://discord.gg/KTYgJegfYw)

I recommend you join us on the [EDHM Discord](https://discord.gg/KTYgJegfYw) where you can find the latest updates, new player-created themes, and general support.

Fly Safe !

o7
