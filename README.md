# EDHM — `shader-files-updated`

> **Developer testing preview only.** This branch is **not** an official EDHM release. Do not treat the zip or unpacked files here as a public drop. Use for hash rematch / ShaderFixes validation ahead of a real release. Content may change without notice.

**Preview target:** Elite Dangerous **4.4.1.0** / build **2026.09.01.332753** (Rhino / Surface Mining).

**Layout:** unpacked install-style tree under [`Odyssey/`](Odyssey/) (`ShaderFixes/`, `EDHM-ini/`, `d3dx.ini`, companion binaries) plus [`EDHM_Odyssey_v22.02.zip`](Odyssey/EDHM_Odyssey_v22.02.zip) for local testing. Detail notes: [`Odyssey/EDHM Patch Notes - FDev U22.x.md`](Odyssey/EDHM%20Patch%20Notes%20-%20FDev%20U22.x.md).

---

## Preview changelog — files touched on this branch

| Status | Old | New / path | Role |
|--------|-----|------------|------|
| Rematched | `4b6d9d99c00a0e52` | [`ad901c638154978f-ps.txt`](Odyssey/ShaderFixes/ad901c638154978f-ps.txt) | Radar LocalKey colour + position |
| Rematched | `044c584d09f94c08` | [`636c89262dd982cf-ps.txt`](Odyssey/ShaderFixes/636c89262dd982cf-ps.txt) | HUD texcoord material (t0-t3) |
| Status Lights UV | `0.3349` max X | `0.3550` max X | Inactive status-box outlines use theme Off colours |
| Preview stamp | - | [`d3dx.ini`](Odyssey/d3dx.ini) `y333 = 2202` | Internal v22.02 preview stamp |
| Test package | - | [`EDHM_Odyssey_v22.02.zip`](Odyssey/EDHM_Odyssey_v22.02.zip) | Local test zip only |

**Status Lights UV (minimal raw edit):** one constant `0.334900 -> 0.355000` in:

- [`b4523c39a461fd35-ps.txt`](Odyssey/ShaderFixes/b4523c39a461fd35-ps.txt)
- [`2726290f74827c14-ps.txt`](Odyssey/ShaderFixes/2726290f74827c14-ps.txt)
- [`5f6c54ac955ba85a-ps.txt`](Odyssey/ShaderFixes/5f6c54ac955ba85a-ps.txt)
- [`d34c61f68082fbcf-ps.txt`](Odyssey/ShaderFixes/d34c61f68082fbcf-ps.txt)
- [`e32e69ee30c36af6-ps.txt`](Odyssey/ShaderFixes/e32e69ee30c36af6-ps.txt)
- [`f2ce89f2c5d390ce-ps.txt`](Odyssey/ShaderFixes/f2ce89f2c5d390ce-ps.txt)

Widens the Status Lights hit region so inactive ship/SRV indicator boxes again take the active theme's Status Lights **Off** colours from `Advanced.ini` / EDHM-UI, instead of leaking Elite default orange. On/Off colours remain theme-configurable; Fuel Bar stays on its own theme settings.

**Still matching in U4.4.1.0 dumps (unchanged):** core HUD `35aac13bbb1540de`, `a0d3dd801a049909`, `a1e1d27a77a666fb`, IB `1ba0d140`, aspect RT overrides.

**Also unpacked for testing:** remaining `Odyssey/ShaderFixes/*-ps.txt` / `*-vs.txt`, `Odyssey/EDHM-ini/` profiles, `d3d11.dll`, `d3dcompiler_47.dll`, `EDHM-Uninstall.bat`.
