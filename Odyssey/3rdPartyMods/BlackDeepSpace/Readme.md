## :: Black Deep-Space Mod (Alpha Prototype 0.1) ::

This is a mod to reduce the deep space fog, and adjust the overall brightness of the fog elements, which include the galactic core and nebulae - they're all made of the same stuff / texture.

The tricky part is preserving the core and nebulae while dimming the ugly grey fog in deep space. And for added difficulty factor the shader has to be modded in DXBC ASM (shader assembly), which is quite difficult compared to HLSL.

This is probably the most complex mod I've done so far, but in my testing it seems to work 🤞 🤞 🤞 

There are 3 user controls:

**1. Fog reduction:** Uses a logarithmic reduction function so that lower levels (background fog) are reduced more quickly compared to brighter elements (core and nebulae)

**2. Nebulae Fog Preservation:** Sometime the Fog Reduction can be too 'heavy handed' on the nebulae and dim the subtle parts of their delicate beauty 🌈  This setting tries to preserve any fog with colour, but remove grey fog separately.

**3. Overall brightness of all fog elements** (galactic core, nebulae, background fog, everything)

I've tested the mod inside Barnard's Loop and the Spirograph Nebula and it didn't effect the nice background colours

This is a prototype release and needs to be installed manually (not via the UI yet) - I'd be grateful if you could please test it and give me your feedback. If it doesn't have bugs I'll make it into a 3PM that can be loaded via the UI

**To install:**

- Exit Elite (important!)

- The zip file contains 2 files:
    Put the shader  5c48a94ae73b9158-ps.txt  into the ShaderFixes folder (in the Ody / H4.0 game folder)
    Put the  BlackDeepSpace.ini  file into the EDHM-ini/3rdPartyMods folder

- Start Elite

**To configure:**

- Open BlackDeepSpace.ini in a text editor
    Change the values for x103, w103 or x101
    Save the file, then press F11 in-game

- Fog reduction must always involve compromises in terms of fog reduction / nebulae preservation
    If you find some good values then please share!
    I've been mainly optimising and testing for bugs and haven't had a chance to find optimal values yet

**To uninstall:**

- Exit Elite (important!)

- Delete 5c48a94ae73b9158-ps.txt  from the ShaderFixes folder
- Delete BlackDeepSpace.ini  from the EDHM-ini/3rdPartyMods folder


**Please note:** I have fully commented the shader file. If you can improve the algorithm then please let me know as I'm still a noob at this, thanks!

Video (you'll need to view it on a PC monitor in a semi-dark environemnt to fully appreciate the fog reduction):

https://youtu.be/iGhsmX6LLMA

