# EDHM
## **Elite Dangerous HUD Mod**

<ins>**ALERT 5 September 2025:**</ins> New Version of EDHM for Elite Dangerous v4.2.0.2 *(Odyssey & Horizons Live)* !

If you have any questions, please join the [EDHM Discord](https://discord.gg/KTYgJegfYw) where we can help you.

---

### <ins>EDHM for Elite Dangerous 4.x Odyssey & Horizons Live, what is it?</ins>

EDHM is a FREE mod that allows you to customize the game's HUD to improve your experience and your comfort.

Unlike modifying the Color Matrix in the `GraphicsConfigurationOverride.xml` file, EDHM allows you to set the colors of many elements **independently** of each other without negatively impacting other things like portraits displayed in menus, **so you get a better final rendering**.

<p align="center">
  <img src="https://github.com/psychicEgg/EDHM/raw/main/Odyssey/Resources/images/EDHM_Demo_v20.06.jpg?raw=true" width="85%">
</p>

Since EDHM is a third-party mod, it can happen that certain game updates break it, resulting in the original color being displayed for the affected elements, but the game will continue to work and an EDHM update will arrive in the next few hours, or even days for the most important updates.

EDHM works on Windows and Linux but does not work on Mac/Crossover.

EDHM is powered by [`3Dmigoto`](https://github.com/bo3b/3Dmigoto), it can run on its own, but we recommend using [EDHM_UI](https://github.com/BlueMystical/EDHM_UI/releases), which is a User Interface that makes it easier to install and configure EDHM and its 3PMods, use HUD Themes, and more.

<ins>Note:</ins> With [Blue Mystic](https://github.com/BlueMystical) we work in collaboration. Blue Mystic develops the UI *(the application)* and I develop EDHM *(the game mod)*, which allows us to deliver a complete application including the User Interface to manage EDHM **and** the latest version of the EDHM. So, by installing [EDHM_UI](https://github.com/BlueMystical/EDHM_UI/releases), EDHM will be automatically installed as well.

[EDHM UI Installation Guide](https://bluemystical.github.io/edhm-api/)

EDHM should be downloaded from **this** Github or by downloading [EDHM_UI](https://github.com/BlueMystical/EDHM_UI/releases) from its own [Github](https://github.com/BlueMystical/EDHM_UI) or [website](https://bluemystical.github.io/edhm-api/).
Any other location that may offer EDHM downloads may provide a corrupted version.

As EDHM for Elite Dangerous 4.x Odyssey & Horizons Live is still in development, I recommend you join us on the [EDHM Discord](https://discord.gg/KTYgJegfYw) where you can find the latest updates, new player-created themes, and general support.

---

EDHM is tolerated by Frontier Development because:
- EDHM does NOT modify, replace, or delete the original game files.
- EDHM does NOT modify ARX Store items *(Liveries, Bobbleheads, etc.)*.
- EDHM does NOT aim to completely transform the game to the point where it's unrecognizable. We respect the work of Frontier Development.
- EDHM does NOT allow cheating or give a real advantage over other CMDRs that do not use EDHM.

*Thank you Frontier Development for letting us develop EDHM to customize our game interface and thank you Frontier Development for Elite Dangerous.*

---
---

### <ins>3rd Party Mods (Addons) for Elite Dangerous 4.x</ins>

Please click on the [`3rdPartyMods`](https://github.com/psychicEgg/EDHM/tree/main/Odyssey/3rdPartyMods) folder above, or download from the [EDHM Discord](https://discord.gg/KTYgJegfYw) *(recommended, so you can receive support with installation and configuring the options).*

If you use [EDHM_UI](https://github.com/BlueMystical/EDHM_UI/releases), you will be able to find and install most 3PMods directly from EDHM_UI.

---
---

### <ins>Install EDHM without EDHM_UI</ins>

To manually install EDHM, you must:
- **Close the game**.
- Download the `EDHM_Odyssey_vxx.xx.zip` file located above.
- Extract the files to the game's installation directory where `EliteDangerous64.exe` is located *(not the Frontier Launcher directory)*.

Once EDHM is installed, you can edit the EDHM files:
- `Startup-Profile.ini`
- `Advanced.ini`
- `SuitHud.ini`
- `XML-Profile.ini`
To apply your new settings in-game, press the `F11` key in-game.

---

For EDHM to work properly, it is **imperative** to have the original Color Matrix in the `GraphicsConfigurationOverride.xml` file.
```
      <MatrixRed> 1, 0, 0 </MatrixRed>
      <MatrixGreen> 0, 1, 0 </MatrixGreen>
      <MatrixBlue> 0, 0, 1 </MatrixBlue>
```

To fully function, EDHM requires you to use an in-game resolution of **at least 1920x1080**. Lower resolutions may not display colors correctly on some elements, such as the Shield, for example.

---

### <ins>Uninstall EDHM without EDHM_UI</ins>

To manually uninstall EDHM, you must:
- **Close the game**.
- Open the game's installation directory where `EliteDangerous64.exe` is located *(not the Frontier Launcher directory)*.
- In this folder you will find `EDHM-Uninstall.bat`, launch it.

Alternative method:
- **Close the game** and open the game's installation directory.
- Deleted all files and folders contained in the EDHM `.zip` available here. That is to say:
  - Files: `d3d11.dll`, `d3dcompiler_46.dll`, `d3dx.ini`, `EDHM-Uninstall.bat`
  - Folders and their contents: `EDHM-ini`, `ShaderFixes` *(these folders contain only EDHM files, no files from the original game)*.

After that, ALL EDHM files will be deleted. Since EDHM does NOT modify/replace the original files, your game will be returned to its original state.

---
---

### <ins>Use EDHM without EDHM_UI</ins>

Once EDHM is installed, you can edit the EDHM files with a text editor like Notepad:
- `Startup-Profile.ini`
- `Advanced.ini`
- `SuitHud.ini`
- `XML-Profile.ini`
To apply your new settings in-game, press the `F11` key in-game, there is no need to restart the game to apply these changes.

When customizing your EDHM theme, I recommend starting by modifying the Color Matrix contained in the `XML-Profile.ini` file, this will serve as a starting point for your theme.

- More information on how a Color Matrix works: [here](https://github.com/psychicEgg/EDHM/blob/main/Odyssey/Resources/XML%20Colour%20Matrix%20Guide.pdf) and [here](https://lisyarus.github.io/blog/posts/transforming-colors-with-matrices.html)
- Color Matrix models: [here](https://forums.frontier.co.uk/threads/no2o-the-definitive-list-of-1-7-2-2-compatible-hud-colour-color-configs-please-add-yours.259311/)

I also recommend placing yourself in the dark of the space to test your colors, some in-game lighting, such as inside the High Tech Stations, can alter the final rendering *(as in the game without EDHM)*.

In rare cases, some elements are not immediately redrawn when applying new EDHM settings. For these elements it is necessary to move the view/menu a little for the game to redraw the element in question. For example, this is the case of the small menu displayed in the center when docked, moving once in this menu *(or another one)* allows the game to redraw the element with the new settings.

---
---

### <ins>Troubleshooting</ins>

After a game update, the interface has become <ins>**completely**</ins> orange:
- The game update likely deleted the EDHM files, in this case, reinstall EDHM.

After a game update, the interface has become <ins>**partially**</ins> orange and some customizations no longer work:
- The game update made changes to the game that prevent EDHM from functioning properly. EDHM will therefore need to be updated as well. Keep an eye on this Github *(or EDHM_UI if you're using EDHM_UI)*, as an EDHM update will be available soon.

---

The colors displayed in-game are completely inconsistent with your settings and/or some **customizable** elements do not change color:
- Check that the Color Matrix in the `GraphicsConfigurationOverride.xml` file matches the original Color Matrix. *(See above for more information)*

---

Some CMDRs have reported their PS or Xbox Controller doesn't work with the mod.

This often occurs when `Steam Overlay` is activated and managing the Controller *(the mod is not compatible with `Steam Overlay`)*.

<ins>There are three fixes:</ins>
 1. Force `Steam` to not manage the Controller
 2. Load Elite without `Steam`
 3. Use the `desktop profile` with `Steam`

These fixes are explained in [`PS-Xbox-Controller-fix`](https://github.com/psychicEgg/EDHM/tree/main/PS-Xbox-Controller-fix) folder.

Please note: Not everyone experiences a conflict between their Controller and the mod.

---

Recently, some users have reported Game Crashes on startup when the `NVIDIA App` is installed.
In this situation, the following solutions may work:
 1. Disable Automatic Setting at the bottom of the Auto GPU Tuning Page
 2. Disable `NVIDIA Overlay`
 3. See `Smooth Motion` and `Nvidias Latency` Settings

This is due to a compatibility issue between the `NVIDIA App` and [`3Dmigoto`](https://github.com/bo3b/3Dmigoto), two issues beyond our control.

---

If you want to use EDHM with OpenComposite/OpenXR, the community has found solutions to make them work together. You can find this information [here](https://forums.frontier.co.uk/threads/any-luck-running-opencompositeacc-openxr-toolkit.602523/page-6#post-10580496) and [here](https://forums.frontier.co.uk/threads/any-luck-running-opencompositeacc-openxr-toolkit.602523/page-5#post-10036668).

---

### If you encounter any further issues or have any questions, please join the [EDHM Discord](https://discord.gg/KTYgJegfYw) where we can help you.

---
---

#### <ins>Messages from psychicEgg, creator of EDHM:</ins>

HUGE Thank you to Fred89210 for keeping EDHM alive since 2023! Expect updates via [EDHM_UI](https://github.com/BlueMystical/EDHM_UI/releases/latest).

---

<ins>**Announcement:**</ins> As of late March 2023, I have retired from Elite. It has been an incredible 2.5 years developing EDHM, and this experience has inspired me to change careers and pursue programming. 

For more information, please see my posts on the Frontier Forums: the [Main EDHM thread](https://forums.frontier.co.uk/threads/elite-dangerous-hud-mod-edhm.557033/) and [my retirement post](https://forums.frontier.co.uk/threads/cmdrs-it-has-been-a-privilege.615656/).

Moving forward, I have entrusted the entire source code to the dedicated EDHM Discord team, whom I've known for a long time. I hope they will continue to update EDHM and keep it running smoothly. As I can no longer provide support for the mod, I recommend you join the [EDHM Discord](https://discord.gg/KTYgJegfYw) if you have any questions or concerns.

For any UI-Related Issues, please seek out **Blue Mystic** (EDHM_UI Admin), and for mod updates, reach out to **Fred89210** (Chief Modder) or **Rico Brzenska** (Theme Modder; she/her).

Thank you for all your support, and good hunting CMDRs!

o7

---
---

### <ins>DISCLAIMER</ins>

This is an Experimental graphics mod. Please see the [3Dmigoto Github](https://github.com/bo3b/3Dmigoto) to research if or how this mod will affect your PC.

Hundreds of CMDRs run this mod with zero issues, but it is impossible to predict how the mod will react with your particular PC configuration.

Therefore, install the mod at your own risk - we will not be held responsible for any losses incurred, including game suspensions or bans if you use the mod or 3Dmigoto inappropriately.

---
---

[EDHM Discord](https://discord.gg/KTYgJegfYw)
