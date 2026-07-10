## EDHM v22.00 for Elite Dangerous v4.4.0.3 Patch Notes

### -- Fixed for Elite Dangerous v4.4.0.3 (Operations Update) --<br><br>

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
