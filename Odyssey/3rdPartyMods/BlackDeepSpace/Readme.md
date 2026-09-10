# Black Deep Space Mod v0.1.1 (Alpha Prototype) for Elite Dangerous 4.4.1.1

### by psychicEgg<br><br>

## This 3PMod is no longer maintained and probably does not work with the latest versions of the game.<br><br>

**-- Ready for Elite Dangerous 4.4.1.1 --**<br><br>

THIS IS A PROTOTYPE TEST

10 September 2026: This 3PMod hasn't been maintained for a long time, but it still seems to work today (Rhino Update).

-------------------------------------------------------------------------

**Description:**

This is a 3PMod to reduce the Deep Space Fog, and adjust the Overall Brightness of the Fog Elements, which include the Galactic Core and Nebulae - they're all made of the same stuff / texture.

The tricky part is preserving the Core and Nebulae while dimming the Ugly Grey Fog in Deep Space. And for added difficulty factor the Shader has to be modded in DXBC ASM (Shader Assembly), which is quite difficult compared to HLSL.

This is probably the most complex mod I've done so far, but in my testing it seems to work 🤞 🤞 🤞 

There are 3 user controls:

**1. Fog Reduction:** Uses a Logarithmic Reduction function so that Lower Levels (Background Fog) are reduced more quickly compared to Brighter Elements (Core and Nebulae)

**2. Nebulae Fog Preservation:** Sometime the Fog Reduction can be too 'Heavy Handed' on the Nebulae and dim the subtle parts of their delicate beauty. This setting tries to preserve any Fog with Color, but remove Grey Fog separately.

**3. Overall Brightness of All Fog Elements** (Galactic Core, Nebulae, Background Fog, Everything)

I've tested the mod inside Barnard's Loop and the Spirograph Nebula and it didn't effect the nice background colors.

This is a Prototype Release ~~and needs to be installed manually (not via the UI yet) - I'd be grateful if you could please test it and give me your feedback. If it doesn't have bugs I'll make it into a 3PM that can be loaded via the UI~~

-------------------------------------------------------------------------

**To Install with EDHM_UI:**
- Exit Elite (Required)
- Download the 3PM `.zip` file and save it anywhere you want
- In EDHM UI go to `Main Menu -> 3PMods`
- At the bottom toolbar, click 'Import Mod' and select the `.zip` you downloaded
- Configure via EDHM_UI, `Main Menu -> 3PMods`<br><br>

**Manually (only if you understand the structure of the mod):**
 - Exit Elite (Required)
 - Save the `.zip` file in the game folder (usually elite-dangerous-odyssey-64)
 - Ensure the `ShaderFixes` and `EDHM-ini` folders exist in the game folder (where you saved the `.zip` file). They are the mod folders, if you don't see them you're in the wrong folder.
 - Unzip the contents, and press `OK` to merge existing folders, overwrite old files
 - Configure via the `.ini` files in the `\EDHM-ini\3rdPartyMods` folder
 - Uninstall by double-clicking the corresponding `.bat` file (for example, `Keybindings.bat`) in the `\EDHM-ini\3rdPartyMods` folder (make sure Elite is closed!)

-------------------------------------------------------------------------

**To configure:**

- Open BlackDeepSpace.ini in a text editor
    Change the values for x103, w103 or x101
    Save the file, then press F11 in-game

- Fog reduction must always involve compromises in terms of fog reduction / nebulae preservation
    If you find some good values then please share!
    I've been mainly optimising and testing for bugs and haven't had a chance to find optimal values yet

-------------------------------------------------------------------------

**To Uninstall with EDHM_UI:**
- Exit Elite (Required)
- In EDHM UI go to `Main Menu -> 3PMods`
- Select `BlackDeepSpace` Mod
- Click the Uninstall Button

**Manually:**
- Exit Elite (Required)
- Go to `EDHM-ini\3rdPartyMods\BlackDeepSpace`
- Start `BlackDeepSpace.bat`, OR:
  - Delete `5c48a94ae73b9158-ps.txt` from the `ShaderFixes` Folder
  - AND Delete the `EDHM-ini\3rdPartyMods\BlackDeepSpace` Folder

-------------------------------------------------------------------------

**I have fully commented the Shader file. If you can improve the Algorithm then please let me know as I'm still a noob at this, thanks!**

Video (you'll need to view it on a PC monitor in a Semi-Dark Environemnt to fully appreciate the Fog Reduction):

https://youtu.be/iGhsmX6LLMA

