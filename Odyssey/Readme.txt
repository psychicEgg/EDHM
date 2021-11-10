**EDHM Odyssey development**

UPDATE: Here you can find the latest beta version of EDHM for Odyssey

Due to the many options available in the Odyssey version, I recommend installing via EDHM UI:
https://github.com/BlueMystical/EDHM_UI/releases

(Note: EDHM UI will install both the mod and the UI, and also keep them updated)

I strongly recommend you join the EDHM Discord so you can receive assistance with installation and configuration of the mod (we don't have a manual yet as it's still in beta):
https://discord.gg/MtBszksjMr

o7


v8.2 Update Notes

Fixed:

• Found and updated 15 icon atlases (multi-icon textures)

• Ship panel, boxes around rank icons

• Landing hologram Altitude bar fix (XML mode doesn't cause it to freak out)

• Environmental targets / destinations in supercruise
- default Elite should now show orange

• Fixed leading circle on target reticle
• Fixed hit markers on target reticle

• PITA shaders, update hash x 1 and internal code changes (Ultra/High)

• SRV Turret shaders x 3 (also affected by Materials quality, but you can use any level)

• Target Holo shader, update hash plus internal code changes

• OwnShip Holo shader, update hash plus internal code changes

• Loading screen holo shader, update hash and code

• Cabin lighting shader, update hash plus many internal changes


Additions:

• Cabin Lighting

This shader had to be re-written due to significant changes. But during the re-writing I came across a new technique that blocks the lighting from contaminating the pilot's skin

So now we have 4 modes of cabin lighting:

0 - Restricted (similar to default Elite coverage)
1 - Full (a bit more coverage than restricted, but less 'Full' than the previous version of EDHM. Doesn't colour white light)
2 - Complete (Full plus white light). Best seen in the Phantom with XML lighting mode (the XML will be interpreted differently for the base orange and white light, so you'll get multi-colour effects)
3 - Space Disco (flood light same as 'Full' in the previous version of EDHM. Contaminates skin tone)

Please let me know if you discover any bugs in the new lighting as I can't test it on every ship / location

• SRV Turret

The SRV turret colour should reflect you main HUD colours. But you can choose the colour for the little SRV image and the horizontal line along the bottom of the screen.

FDev applies a weird colour filter to the turret screen, so the colours won't look exactly the same as your main HUD. I've added an option to boost the distributor colours as they're quite subdued on the turret screen compared to the main HUD

• Added icons/logos for the Weapon/Suit shop


Known issues:

• When in combat, if you select sub-components of the target ship, the health of the sub-components will be orange squares on the targeting panel. I don't know how to fix that yet, will need to think about it.

• FDev Update 8 broke the Foot Terminal intro screen (it's orange now). This will be fixed in a future EDHM update as it takes a long time to mod (must be written in shader assembly, which sucks)

• Update 8 also broke the Krait internal lighting mod (3rd Party Mod). I'll fix that over the weekend


Removed shaders:

Please note the following shaders have been removed from the mod, please delete them from your ShaderFixes folder (I think Blue Mystic might do this via the UI)

05d9140e9c40fbd6-ps.txt
18d0630271021aea-ps.txt
19b261d1497c18fb-ps.txt
745e27820ef3142d-ps.txt
4363dc4ff0e9ba7c-ps.txt
ae8b226526f19ee0-ps.txt
e7acc5ec72327a3f-ps.txt


I hope you enjoy the update!

o7
