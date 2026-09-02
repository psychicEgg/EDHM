# EDHM
## **Elite Dangerous HUD Mod**

> **Developer testing preview only** - branch `shader-files-updated` is **not** an official EDHM release. Do not treat the zip or unpacked files here as a public drop for general players. Use for hash rematch / ShaderFixes validation ahead of a real release.

Target client for this preview: Elite Dangerous **4.4.1.0** / build **2026.09.01.332753** (Rhino / Surface Mining).

This branch keeps an unpacked install-style tree under [`Odyssey/`](Odyssey/) (`ShaderFixes/`, `EDHM-ini/`, `d3dx.ini`, companion binaries) plus a working `EDHM_Odyssey_v22.02.zip` for local testing. Content may change without notice.

If you have any questions, please join the [EDHM Discord](https://discord.gg/KTYgJegfYw) where we can help you.

---

### <ins>Preview changelog - files touched on this branch</ins>

| Status | Old | New / path | Role |
|--------|-----|------------|------|
| Rematched | `4b6d9d99c00a0e52` | [`ad901c638154978f-ps.txt`](Odyssey/ShaderFixes/ad901c638154978f-ps.txt) | Radar LocalKey colour + position |
| Rematched | `044c584d09f94c08` | [`636c89262dd982cf-ps.txt`](Odyssey/ShaderFixes/636c89262dd982cf-ps.txt) | HUD texcoord material (t0-t3) |
| Status Lights UV | `0.3349` max X | `0.3550` max X | Inactive status-box outlines use theme Off colours |
| Preview stamp | - | [`d3dx.ini`](Odyssey/d3dx.ini) `y333 = 2202` | Internal v22.02 preview stamp |
| Test package | - | [`EDHM_Odyssey_v22.02.zip`](Odyssey/EDHM_Odyssey_v22.02.zip) | Local test zip only (not a public release) |
| Notes | - | [`Odyssey/README.md`](Odyssey/README.md), [preview notes](Odyssey/EDHM%20Patch%20Notes%20-%20FDev%20U22.x.md) | Branch docs |

**Status Lights UV (minimal raw edit):** one constant `0.334900 -> 0.355000` in:

- [`b4523c39a461fd35-ps.txt`](Odyssey/ShaderFixes/b4523c39a461fd35-ps.txt)
- [`2726290f74827c14-ps.txt`](Odyssey/ShaderFixes/2726290f74827c14-ps.txt)
- [`5f6c54ac955ba85a-ps.txt`](Odyssey/ShaderFixes/5f6c54ac955ba85a-ps.txt)
- [`d34c61f68082fbcf-ps.txt`](Odyssey/ShaderFixes/d34c61f68082fbcf-ps.txt)
- [`e32e69ee30c36af6-ps.txt`](Odyssey/ShaderFixes/e32e69ee30c36af6-ps.txt)
- [`f2ce89f2c5d390ce-ps.txt`](Odyssey/ShaderFixes/f2ce89f2c5d390ce-ps.txt)

Widens the Status Lights hit region so inactive ship/SRV indicator boxes (Mass Locked, Landing Gear, Cargo Scoop, Board Ship, Hand Brake, etc.) again take the active theme's Status Lights **Off** colours from `Advanced.ini` / EDHM-UI, instead of leaking Elite default orange. On/Off colours remain fully theme-configurable; Fuel Bar stays on its own theme settings.

**Still matching in U4.4.1.0 dumps (unchanged):** core HUD `35aac13bbb1540de`, `a0d3dd801a049909`, `a1e1d27a77a666fb`, IB `1ba0d140`, aspect RT overrides.

**Also unpacked on this branch (full zip payload for testing):** all other `Odyssey/ShaderFixes/*-ps.txt` / `*-vs.txt`, `Odyssey/EDHM-ini/` profiles, `d3d11.dll`, `d3dcompiler_47.dll`, `EDHM-Uninstall.bat`.

---

### <ins>EDHM for Elite Dangerous 4.x Odyssey & Horizons Live, what is it?</ins>

EDHM is a FREE mod that allows you to customize the game's HUD to improve your experience and your comfort.

Unlike modifying the Color Matrix in the `GraphicsConfigurationOverride.xml` file, EDHM allows you to set the colors of many elements **independently** of each other without negatively impacting other things like portraits displayed in menus, **so you get a better final rendering**.

<p align="center">
  <img src="https://github.com/psychicEgg/EDHM/raw/main/Odyssey/Resources/images/EDHM_Demo_v20.06.jpg?raw=true" width="85%">
</p>

Since EDHM is a third-party mod, it can happen that certain game updates break it, resulting in the original color being displayed for the affected elements, but the game will continue to work and an EDHM update will arrive in the next few hours, or even days for the most important updates.

EDHM and its 3PMods are developed and works with Windows 10/11. EDHM **can** work correctly with most Linux distributions but EDHM does not work on Mac/Crossover.

Some modded elements require **a screen resolution of at least 1920x1080** *(also take into account Supersampling which can divide the selected resolution)*, using a lower final resolution may prevent some elements from being colored correctly *(such as the Shield for example)*.

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

### <ins>EDHM for Elite Dangerous 3.8 Horizons Legacy</ins>

Latest version for Elite Dangerous 3.8 Horizons Legacy: v1.52b (26 December 2021).

[v1.52b Download Link](https://github.com/psychicEgg/EDHM/tree/main/Releases-for-ED-Legacy/v1.52)

If you prefer not to configure the mod manually *(in a text editor)* then please use [EDHM UI](https://github.com/BlueMystical/EDHM_UI/releases).

**EDHM for Elite Dangerous Horizons Legacy 3.8 is no longer being developed. However, it's still a good mod with lots of options.**

[EDHM for Horizons v1.5 video](https://youtu.be/7MqgLzI-8fA)

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
