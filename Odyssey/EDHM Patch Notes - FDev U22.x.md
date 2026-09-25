## EDHM v22.00 to v22.03 for Elite Dangerous v4.4.1.1 Patch Notes

### -- Fixed for Elite Dangerous v4.4.1.1 (Rhino Update) --<br><br>

**EDHM v22.03:**
Second Fix for FDev U4.4.1.1 (Rhino Update)
- Fix Mouse Dot that may not fully apply the `Custom Color` to the edges
- Fix `Status Lights` that may not fully apply the `Custom Color` to the edges
- Fix `Hidden Possible Destination Circles` in SRV
- Fix `Inactive Hardpoints` (y114 & xyzw189) Options that were not coloring all the intended elements
- Icons for Inactive/Out-Of-Range Weapons in the CHUD now follow the `Inactive Hardpoints Red Text Color` (w186) option, rather than always displaying the `Ammunition Color` (xyzw45)
- Add `SRV Red Text Brightness` (z186) option
  - Similar to the existing `Red Text Brightness` (w111) option, one applies only to SRVs and the other to everything else
  - Useful for making the Rhino Rigs Texts more visible, such as 'Too Fast'
- Fix `Analysis Reticles` from being contaminated by `Escape Vector` when the `Analysis Reticles` are in `Elite Default` mode
- Complete Overhaul of the Fix introduced in EDHM v22.01, aimed at reducing Lighting Contamination when in SRV
  - Before EDHM v22.01, Cabin Lighting Settings contaminated Exterior Lighting while in SRV when using certain EDHM Settings
  - Since EDHM v22.01, Color gaps in the SRV Lighting could appear when using certain EDHM Settings
  - This New Fix adds `Lighting in SRV Protection` (x186) which limits certain Cabin Lighting Options while in SRV to preserve Exterior Lighting
    - Disabling this Protection is possible but NOT Recommended, it will remove the limitation but will reinstate the Exterior Lighting Contamination while in SRV (like before EDHM v22.01)
- Fix `Cabin Lighting Primary Color` `Bi-Color` Mode (y19=101), the Color on the Left took up more space than the Color on the Right, making the Lighting appear misaligned (very old bug)
- Fix Orange Wing Icons of Targeted Ship by Wingmate which had their Top Edges affected by the `Missile Lock Custom Color` (xyzw62) and these Orange Icons will now use the existing Wing Ships options (y120 & xyz128)
- Fix Portraits in Multicrew Post Mission Menu
- Fix `SRV Hologram Main` Alpha Channel (w250)
- Fix `SRV Terrain Color` Alpha Channel (w252)
- Fix a Transparency Issue in the Bottom Panel
- Fix Lines that could abnormally appear on the Ship's Panels in Ultra Quality
- Fix Some Orange Icons

-------------------------------------------------------------------------

**EDHM v22.02:**
- Fix for FDev U4.4.1.1 (Rhino Update):
  - Fix Status Lights
  - Fix Destination Circles
  - Fix Reticles
  - Fix Some Icons
  - Fix OnFoot HUD *(twice)*
  - Fix Radar Elevation Lines
  - Fix SRV Radar Object Lines
- Fix Orange Icons in Gamma Settings 
- Fix Orange Icons in Galmap with some Graphic Settings
- Added the Rhino to EDHM, thanks again to `@RainmanGames` for gifting me the Rhino, which allowed me to mod it right away:
  - Rhino Related Icons are Modded
  - Rhino Rigs Orange Circles use XML
  - Rhino Mining Wave on the Radar follows the `SRV Terrain` Settings
  - Surface Mining Icons use XML when `Main Text Mode` (w75) is set to `Custom Color` or `XML` *(like Space Mining Icons)*.
  - Rhino Terrain Hologram follows the `SRV Terrain` Settings
  - Rhino Holograms (Main and Small) follow the `SRV Hologram` Settings
  - NOTES:
    - Mining Scanner Wave passing over the Ground follows the `PWA Wavefront` Settings.
	- Pink Extraction Zones appearing on the Radar and on the Ground retain their Original Color

-------------------------------------------------------------------------

**EDHM v22.01:**
- Second Fix for FDev U4.4.0.3 (Operations Update)
- The Cockpit Lighting Shader no longer bleeds into the Operations Lobby Lighting. Fix found by MrVaad, Thanks.
- Reduced the Lighting Shader's Range when using an SRV to prevent it from affecting the Main Ship's Landing Gear Lights in certain situations.
- Nomad:
  - A condition has been added to detect Nomad so that the `PWA Asteroid Glow Color` `xyz43` option no longer affects the Nomad's Bio Scanner.
    - Consequently, the `PWA Asteroid Glow` option, which was disabled in EDHM v22.00, has been re-enabled, and the `z333` key has been removed.
  - Fix the HLSL Code extracted by 3dmigoto, which was preventing Zones containing Biologicals from appearing on the Nomad's Radar. Fix found by Fenris, Thanks.
    - Green Zones are now visible.
	- Blue Zones are also visible but may require some adjustment.
	- Pink Zones have not been tested and might not display perfectly, a fix could be provided once the Nomad becomes free.
- Fix Various Orange Textures

Special Thanks:
- Thanks to Fenris, without whom it would not have been possible to provide fixes for the Nomad before its free release. Thanks for the time spent addressing these issues, and for identifying the cause preventing Biological Zones from appearing on the Nomad's Radar.
- Thanks to MrVaad, who found a way to preserve the Lighting in the Operations Lobby (and for his research in general).

-------------------------------------------------------------------------

**EDHM v22.00:**
- Fix for FDev U4.4.0.3 (Operations Update)
- The New Operations Menu and Lobby:
  - It has been isolated to preserve its original green color *(linked to `Green Protection` `w4`)*
  - Certain `Cabin Lighting` settings may affect the lighting in the Operations Lobby, I will try to find a fix for this later
  - I haven't gone beyond the Lobby in Operations, but the rest shouldn't cause any issues
- Pink elements related to Merc Coins should retain their original pink color *(linked to `Red Protection` `x5`)*
- Since I don't own the Nomad, I cannot test how EDHM works with it
  - The `PWA Asteroid Glow Mode` `z93` option negatively affects the Nomad's Bio Scanner, consequently this option has been temporarily disabled pending a permanent fix
    - It is still possible to re-enable this option by setting `z333 = 1` in the `d3dx.ini`
  - The Surface Map on the Nomad's Radar should display areas containing biologicals, I attempted a modification to preserve these areas but it hasn't been tested
    - If you encounter a problem, you can select `Elite Default` for `Holograms Mode` `y101` to restore the original behavior of the Surface Map on the Radar, this will also affect other Holograms managed by the same Shader
  - The onfoot Bio Scanner works normally
- Now, if the Brightness values for `Night Vision` and `PWA` `w43`, `w41`, and `w42` are missing or set to 0, the original Brightness will be applied for these elements
- Now Damaged Station Square in Contact Panel uses the Color from the `Repair/Damaged Station Mode/Color` option *(`x111` & `xyzw110`)*
- Fix Damaged Station Icon Color in Targeting Panel to get closer to the selected Color
- Fix Scarab Blue Dual Repeater Text in Analysis Mode with Turret

EDHM should revert to its pre-Operations update behavior but if you notice any other issues or orange elements, please feel free to let me know.

NOTE: Since game update U4.4.0.x (Operations), the DSS no longer displays a heatmap to locate biological signals, it now shows a single, uniform color, so the 3PMod Biome Overlay has been removed as it is now useless or incompatible. Please remember to remove this 3PMod from your installation.

-------------------------------------------------------------------------

FDev have made many changes with Vanguards Update, so if you notice any remaining orange elements after the update, please let me know where they are and send me a screenshot in the [EDHM Discord](https://discord.gg/KTYgJegfYw)

I recommend you join us on the [EDHM Discord](https://discord.gg/KTYgJegfYw) where you can find the latest updates, new player-created themes, and general support.

Fly Safe !

o7
