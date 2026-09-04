# EDHM — `shader-files-updated`

> **Developer testing preview only.** This branch is **not** an official EDHM release. Do not treat the unpacked files here as a public drop. Use for hash rematch / ShaderFixes validation ahead of a real release. Content may change without notice. No preview zip — work from the unpacked `Odyssey/` tree.

**Preview target:** Elite Dangerous **4.4.1.0** / build **2026.09.01.332753** (Rhino / Surface Mining).

**Layout:** unpacked install-style tree under [`Odyssey/`](Odyssey/) (`ShaderFixes/`, `EDHM-ini/`, `d3dx.ini`, companion binaries). Detail notes: [`Odyssey/EDHM Patch Notes - FDev U22.x.md`](Odyssey/EDHM%20Patch%20Notes%20-%20FDev%20U22.x.md). Hash rematch process: [`EDHM-SHADER-HASH-MAPPING-GUIDE.md`](EDHM-SHADER-HASH-MAPPING-GUIDE.md).

---

## Preview changelog — files touched on this branch

| Status | Old | New / path | Role |
|--------|-----|------------|------|
| Rematched | `4b6d9d99c00a0e52` | [`ad901c638154978f-ps.txt`](Odyssey/ShaderFixes/ad901c638154978f-ps.txt) | Radar LocalKey colour + position |
| Rematched | `044c584d09f94c08` | [`636c89262dd982cf-ps.txt`](Odyssey/ShaderFixes/636c89262dd982cf-ps.txt) | HUD texcoord material (t0-t3) |
| Status Lights UV | `0.3349` max X | `0.3510` max X (right only) | Inactive status-box outlines; stops before white atlas to the right |
| FootON atlases | (see below) | [`99eeb87f`](Odyssey/EDHM-ini/35aac.ini) **90**, [`09e7d1ad`](Odyssey/EDHM-ini/35aac.ini) **92** | Live FA `2026-09-03-185248`; arms `w1` / stock icon colours |
| Dest target circle | UV X `0.8854`, hue `0–37` | Icon-only UV boxes `0.728–0.756` / `0.905–0.918` in [`1a696e8bae6eec02-ps.txt`](Odyssey/ShaderFixes/1a696e8bae6eec02-ps.txt); stock `≥0.925` rematch disabled (that UV is label text on U4.4 HUD RT) | Destination Target Circle (`x67` / `z141`); open `≥0.55` window removed — it painted baked labels |
| Rhino cockpit | (none) | `ps-t6` [`357e4310`](Odyssey/d3dx.ini) / [`09ba608e`](Odyssey/d3dx.ini) → filter **9052** on [`3d4262979556279e`](Odyssey/d3dx.ini) → `PresetRhinoCockpitON` / **`w334=1`** | FA `2026-09-03-210807`; classic Scorpion hologram hashes absent in Rhino |
| Mining-deposit label | text tinted accent `x67` | Neutral-source → `x77` restamp at composite in [`1a696e8bae6eec02-ps.txt`](Odyssey/ShaderFixes/1a696e8bae6eec02-ps.txt) (see [Rhino fixes](#rhino-fixes)) | Planetary mining-deposit label follows main-text colour; diamond icon keeps accent |
| Hull health blocks | hue `11–16.8` | hue `8–58`; Custom Shaded `√lerp(max,G,0.75)×1.4` | Hologram hull gauge (`x212` / `y134`); same six aspect shaders as Status Lights |

**Status Lights UV (single X nudge):** `0.334900 -> 0.351000` in the same six aspect shaders. Min X/Y and max Y are unchanged (no left/up expand). Hull/speed sit left of this window (hull X ends at `0.2992`; Status Lights start at `0.3185`). `0.351` covers the inactive orange icons (~X `0.350`) without the white atlas past `0.355`.

**Still matching in U4.4.1.0 dumps (hash unchanged):** core HUD `35aac13bbb1540de`, `a0d3dd801a049909`, `a1e1d27a77a666fb`, IB `1ba0d140`, aspect RT overrides.

**Also unpacked for testing:** remaining `Odyssey/ShaderFixes/*-ps.txt` / `*-vs.txt`, `Odyssey/EDHM-ini/` profiles, `d3d11.dll`, `d3dcompiler_47.dll`, `EDHM-Uninstall.bat`.

---

## On-foot / FootON (U4.4.1.0)

**Do not** recolour on-foot icons via `a1e1` (shared with the ship speed bar). Per EDHM maintainer: the icon rematch is still valid; fix the **on-foot condition** by rematching **texture hashes**.

### How FootON works

1. `[Constants]` clears `w1 = 0` each frame (`d3dx.ini`).
2. Foot HUD atlases are tagged in [`35aac.ini`](Odyssey/EDHM-ini/35aac.ini) with `filter_index` **80 / 90 / 92**.
3. When `35aac13bbb1540de` draws with that atlas on **`ps-t1`**, `Preset = FootON` sets **`w1 = 1`**.
4. Stock SuitHud / icon colour paths that gate on `w1` then apply theme colours.

If the game ships a new atlas hash and it is not listed with 90/92 (or 80), FootON never arms → icons stay Elite orange/red.

### Live rematch (FrameAnalysis-2026-09-03-185248)

| `ps-t1` hash | Size | Role | `filter_index` |
|--------------|------|------|----------------|
| **`99eeb87f`** | 2048² | Primary on-foot HUD atlas (rings, O₂, consumables, prompts) | **90** |
| **`09e7d1ad`** | 2048² | Second on-foot HUD atlas | **92** |

Both bind on `35aac` + peer VS `7299e2b5eaeff35d`. PS hash unchanged.

### Purged / incorrect interim rematch

| Hash | Why removed |
|------|-------------|
| `a1b9c3b9` → 90 | Never bound in the live on-foot FA dump |
| `569f2ff5` → 92 | Never bound in the live on-foot FA dump |

Also reverted experimental `a1e1` late leftover-orange rematch and helmet-VS FootON hacks — wrong approach for this problem.

Stock historical atlas entries (`6ce04287`→80, `945bfa20`→81, plus older 90/92 hashes) remain in `35aac.ini` for completeness; live U4.4.1.0 uses **`99eeb87f` / `09e7d1ad`**.

### Related docs

- [`EDHM-SHADER-HASH-MAPPING-GUIDE.md`](EDHM-SHADER-HASH-MAPPING-GUIDE.md) §9.3 — `35aac` filter indices (Foot `80/90/92`)
- [`Odyssey/EDHM-ini/35aac.ini`](Odyssey/EDHM-ini/35aac.ini) — `PresetFootON` + texture overrides
- [`Odyssey/EDHM-ini/SuitHud.ini`](Odyssey/EDHM-ini/SuitHud.ini) — on-foot colours once `w1` is set

---

## Other rematch notes

**Destination target circle / next-target markers:** `1a696e8bae6eec02` rematches **icon-only** UV boxes (`0.728–0.756`, `0.905–0.918`). The old open `≥0.55` window and stock `≥0.925` path were painting baked label text on the U4.4 HUD compose RT (F11 “correct” look was stock shaders with no rematch; cabin lighting also flashed stock). Colour from Advanced.ini `x67` when `z141` is Custom/XML.

**Hull health blocks:** same six aspect shaders as Status Lights (`b4523c39` + aspects). U4.4.1.0 atlas orange sits ~hue `22–26`, so stock `11–16.8` missed it. Custom Shaded (`y134=101`) uses `√lerp(max,G,0.75)×1.4` then Hull colour `x212` and shading `w213`. Speed bar stays on the stock `hue > 25` path (no atlas R-vs-B rematch).

---

## Rhino fixes

Surface-mining (Rhino / U4.4.1.0) HUD corrections specific to planetary mining.

### Planetary mining-deposit marker — label text colour (`1a696e8bae6eec02`)

**Symptom:** the selected **PLANETARY MINING DEPOSIT** marker rendered with a half-white / half-accent label (looked "half blue" on a blue theme), while the diamond **icon** was correctly the destination accent.

**Pipeline (traced from FrameAnalysis `2026-09-04-005329`):**

1. The whole marker (label glyphs **and** icon) is authored into HUD RT **`10bcbe48`** by the core HUD shaders (`35aac13bbb1540de` + `a1e1d27a77a666fb` + `a0d3dd801a049909`). In that source RT the selected marker is **already correct**: neutral (main-text) label + accent-coloured icon.
2. Compositor **`1a696e8bae6eec02`** blits `10bcbe48` to the HUD and, via its destination rematch, re-tinted the **label text** with the destination accent (`x67`) — the icon was fine because its source is already accent-coloured.

Earlier suspects were ruled out by proof: `a0d3` draws only part of adjacent HUD text; `35aac` (filters **43** `d6fdc63e` / **13** `9fcfc35e`) draws the compass, altimeter pips and SRV scanner — **not** this label. The "half blue" also worsened when a nearby *unselected* deposit (accent text) overlapped the selected one on screen.

**Fix (theme-aware, appended at `1a696` output):** where the **source** pixel is neutral (label text) yet the **output** gained chroma (`1a696` tinted it), restamp the theme main-text colour **`x77`** (scaled by output brightness to preserve glyph AA).

- **Hue-independent:** keys on *chroma gained*, not on "blue" — works for any user `x67`.
- **Theme-driven target:** repaints with live `x77`, so the label follows the user's main-text colour.
- **Self-limiting:** any element whose *source* is already coloured (the diamond icon, the compass heading box, target pips) has high source chroma and is excluded regardless of theme — validated against the frame dump (icon/compass accents keep coloured sources; only neutral label pixels are eligible).

**Edge case:** intended for the standard EDHM setup where `x77` (main text) is neutral/white and `x67` (destination) is the accent. If `x77` itself is set to a strongly chromatic colour, the label source is no longer "neutral" and the gate simply won't fire (label keeps its `x77` colour).
