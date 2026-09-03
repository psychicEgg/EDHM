# EDHM — `shader-files-updated`

> **Developer testing preview only.** This branch is **not** an official EDHM release. Do not treat the zip or unpacked files here as a public drop. Use for hash rematch / ShaderFixes validation ahead of a real release. Content may change without notice.

**Preview target:** Elite Dangerous **4.4.1.0** / build **2026.09.01.332753** (Rhino / Surface Mining).

**Layout:** unpacked install-style tree under [`Odyssey/`](Odyssey/) (`ShaderFixes/`, `EDHM-ini/`, `d3dx.ini`, companion binaries). Detail notes: [`Odyssey/EDHM Patch Notes - FDev U22.x.md`](Odyssey/EDHM%20Patch%20Notes%20-%20FDev%20U22.x.md).

---

## Preview changelog — files touched on this branch

| Status | Old | New / path | Role |
|--------|-----|------------|------|
| Rematched | `4b6d9d99c00a0e52` | [`ad901c638154978f-ps.txt`](Odyssey/ShaderFixes/ad901c638154978f-ps.txt) | Radar LocalKey colour + position |
| Rematched | `044c584d09f94c08` | [`636c89262dd982cf-ps.txt`](Odyssey/ShaderFixes/636c89262dd982cf-ps.txt) | HUD texcoord material (t0-t3) |
| Status Lights UV | `0.3349` max X | `0.3550` max X | Inactive status-box outlines use theme Off colours |
| Foot HUD atlas | `6ce04287` / `945bfa20` | [`a1b9c3b9`](Odyssey/EDHM-ini/35aac.ini) filter **90**, [`569f2ff5`](Odyssey/EDHM-ini/35aac.ini) filter **92** | Insight Hub / backpack textured icons (FootON; not 80/81) |
| Panel leftover orange | - | [`a1e1d27a77a666fb-ps.txt`](Odyssey/ShaderFixes/a1e1d27a77a666fb-ps.txt) late `#FF5600` rematch | Backpack sidebar / vertex-coloured panel icons (`x75` / `xyzw53`) |
| Dest target circle | UV X `0.8854`, hue `0–37` | UV X `0.55`, hue `-15–70`, sat `≥ 0.30` in [`1a696e8bae6eec02-ps.txt`](Odyssey/ShaderFixes/1a696e8bae6eec02-ps.txt) | Destination Target Circle (`x67` / `z141`); name/distance text stays unthemed |

**Status Lights UV (minimal raw edit):** one constant `0.334900 -> 0.355000` in:

- [`b4523c39a461fd35-ps.txt`](Odyssey/ShaderFixes/b4523c39a461fd35-ps.txt)
- [`2726290f74827c14-ps.txt`](Odyssey/ShaderFixes/2726290f74827c14-ps.txt)
- [`5f6c54ac955ba85a-ps.txt`](Odyssey/ShaderFixes/5f6c54ac955ba85a-ps.txt)
- [`d34c61f68082fbcf-ps.txt`](Odyssey/ShaderFixes/d34c61f68082fbcf-ps.txt)
- [`e32e69ee30c36af6-ps.txt`](Odyssey/ShaderFixes/e32e69ee30c36af6-ps.txt)
- [`f2ce89f2c5d390ce-ps.txt`](Odyssey/ShaderFixes/f2ce89f2c5d390ce-ps.txt)

Widens the Status Lights hit region so inactive ship/SRV indicator boxes again take the active theme's Status Lights **Off** colours from `Advanced.ini` / EDHM-UI, instead of leaking Elite default orange. On/Off colours remain theme-configurable; Fuel Bar stays on its own theme settings.

**Still matching in U4.4.1.0 dumps (hash unchanged):** core HUD `35aac13bbb1540de`, `a0d3dd801a049909`, `a1e1d27a77a666fb`, IB `1ba0d140`, aspect RT overrides.

**Also unpacked for testing:** remaining `Odyssey/ShaderFixes/*-ps.txt` / `*-vs.txt`, `Odyssey/EDHM-ini/` profiles, `d3d11.dll`, `d3dcompiler_47.dll`, `EDHM-Uninstall.bat`.

**On-foot radial / backpack:** U4.4.1.0 replaced the Foot HUD atlases (`6ce04287`→`a1b9c3b9`, `945bfa20`→`569f2ff5`). They are tagged FootON as filter **90/92** in [`35aac.ini`](Odyssey/EDHM-ini/35aac.ini) — not 80/81, whose UV windows are the old atlas layout and recoded Insight Hub wedges with on-foot panel colour. Shader hash `a1e1d27a77a666fb` is unchanged; a late `#FF5600` rematch at the end of that shader catches backpack sidebar / panel icons that skip the nested hue tree (theme icon colours via `x75` / `xyzw53`). Nested hue-window widening was reverted; it never hit those draws.

**Destination target circle:** hash `1a696e8bae6eec02` is unchanged. U4.4.1.0 composites the dest marker from the 1.14-aspect overlay at UV X `~0.56` (was `0.885+`) and draws the ring as saturated yellow (~hue 58), so the old orange/red hue windows missed the stroke and a wider UV without a saturation gate recoded the white name/distance text. Dest-circle colour still comes from Advanced.ini `x67` when Environmental & Destination Targets is Custom/XML (`z141`).
