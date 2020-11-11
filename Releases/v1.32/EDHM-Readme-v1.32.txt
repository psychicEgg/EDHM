EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDD      HHHHHHHHH     HHHHHHHHHMMMMMMMM               MMMMMMMM
E::::::::::::::::::::ED::::::::::::DDD   H:::::::H     H:::::::HM:::::::M             M:::::::M
E::::::::::::::::::::ED:::::::::::::::DD H:::::::H     H:::::::HM::::::::M           M::::::::M
EE::::::EEEEEEEEE::::EDDD:::::DDDDD:::::DHH::::::H     H::::::HHM:::::::::M         M:::::::::M
  E:::::E       EEEEEE  D:::::D    D:::::D H:::::H     H:::::H  M::::::::::M       M::::::::::M
  E:::::E               D:::::D     D:::::DH:::::H     H:::::H  M:::::::::::M     M:::::::::::M
  E::::::EEEEEEEEEE     D:::::D     D:::::DH::::::HHHHH::::::H  M:::::::M::::M   M::::M:::::::M
  E:::::::::::::::E     D:::::D     D:::::DH:::::::::::::::::H  M::::::M M::::M M::::M M::::::M
  E:::::::::::::::E     D:::::D     D:::::DH:::::::::::::::::H  M::::::M  M::::M::::M  M::::::M
  E::::::EEEEEEEEEE     D:::::D     D:::::DH::::::HHHHH::::::H  M::::::M   M:::::::M   M::::::M
  E:::::E               D:::::D     D:::::DH:::::H     H:::::H  M::::::M    M:::::M    M::::::M
  E:::::E       EEEEEE  D:::::D    D:::::D H:::::H     H:::::H  M::::::M     MMMMM     M::::::M
EE::::::EEEEEEEE:::::EDDD:::::DDDDD:::::DHH::::::H     H::::::HHM::::::M               M::::::M
E::::::::::::::::::::ED:::::::::::::::DD H:::::::H     H:::::::HM::::::M               M::::::M
E::::::::::::::::::::ED::::::::::::DDD   H:::::::H     H:::::::HM::::::M               M::::::M
EEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDD      HHHHHHHHH     HHHHHHHHHMMMMMMMM               MMMMMMMM
                                                                                              

Elite Dangerous HUD Mod (EDHM)
Mod created with 3Dmigoto https://github.com/bo3b/3Dmigoto/

This is version 1.32, 09 Nov 2020

This mod is not compatible with Steam overlay (and associated controllers).


Update v1.32: 	
•	This is an FPS Improvement update, it's important to read the notes below.
				
•	The fancy targeting reticle and suppression of red warning lights are now optional extras 
  (they were causing FPS to drop for some CMDRs).

•	Added a new Radar (but you can still load the old radar if you prefer).

•	Added a batch file (EDHM-Addons.bat) to facilitate enabling / disabling optional extras



===========================================================================
** DISCLAIMER **

This is an experimental graphics mod. 
Please see the 3Dmigoto Github link above to research if or how this mod will affect your PC.

The authors run this mod with zero issues, but it is impossible to predict how the mod will react with your particular
PC configuration.

Therefore, install the mod at your own risk - we will not be held responsible for any losses incurred, including game
suspensions or bans if you use the mod or 3Dmigoto inappropriately.

At the current date, and with the current mod configuration (and included shader files), this mod has been approved by
FDev for players to use.

Nevertheless, it's important to understand the risks of using experimental mods.

With all that out of the way, we hope you enjoy the mod!

Please note, this version of the mod is for the end-user only, and is not easily re-configured in this state. 
Do not try to learn how to mod from these files, you'll just give yourself a headache :)

Fully customisable shader files are being loaded onto the EDHM Github (you can choose your own colours):
https://github.com/psychicEgg/EDHM

===========================================================================



==========================================================================================
---=== Please read this WHOLE Readme, it contains important instructions, thank you ===---
Sry to capitalise 'whole' :) But I get a lot of questions and the answers are in here
==========================================================================================


*********************************************************
*********************************************************
************ Preface to the 1.32 FPS Update *************
*********************************************************
*********************************************************


1. Adjust your quality settings, this is very important.


For many CMDRs this is the first game they have modded, and there are a few basic principles that need to be explained.

When we add a complex graphics layer to a game, consisting of about 40 extra on-screen elements, the FPS will drop.
Therefore, it's necessary to reduce your graphics quality settings if you would like to maintain your unmodded FPS.

I recommend you start with the following quality settings, then increase the quality until your FPS drops below an
acceptable level (Press CTRL-F in-game to display your FPS, CTRL-F again to turn it off).

** The FPS drops appear to be relative .. if you start higher it won't drop down as far:

To increase maximum FPS:
	Vertical Sync OFF
	Frame Rate Limit OFF

Recommended initial quality settings:
	Shadow Quality OFF
	Bloom OFF
	Anti-Aliasing FXAA (off for 4K)
	Supersampling 1.0
	Ambient Occlusion LOW
	FX Quality OFF
	Material Quality MEDIUM
	Volumetric Effects HIGH

These settings will maximise your FPS. Shadows, Ambient Occlusion and Supersampling have a huge impact on FPS, so
increase them slowly.

I receive 1 to 5 messages per day with "Dude, my FPS dropped with your mod, what's up with that?". And so I ask, 
"What quality settings did you reduce to compensate for the mod?", and the answer is nearly always "None".

The mod will reduce your FPS, and you need to adjust your quality settings to bring the FPS back up again.


==========================================================================================


2. The fancy targeting reticle and red warning light suppression were causing a stutter for some CMDRs

Personally I love the colourful targeting reticle, and it took me about a week to code. I was very disappointed when my
fellow CMDRs did some research and discovered the fancy reticle was causing some FPS stutters.

Therefore, I have made the fancy targeting reticle an optional extra. If you would like to add it back into the mod,
run the file "EDHM-Addons.bat" in the elite-dangerous-64 folder.

A side-effect of this change are the lines under the green planets in supercruise. They are no longer green, but yellow.
I was using the presence of the fancy targeting reticle (even when deactivated) to tell the mod when the ship was in
normal flight or supercruise, and that's no longer possible. 

Therefore, I have no way to tell the planet lines to be green in supercruise. I think that's something we can live with :) 
But if anyone has an idea of how to differentiate normal flight from supercruise I'll gladly add the green lines back in.



The original mod also disabled (or reduced) the red warning lights that flash when something is in close proximity to
your ship. Miners hate these lights as their ship is in close proximity to rocks nearly all the time.

However, the technique used to suppress the red lights also caused a stutter for some CMDRs, so it too is an optional
extra. If you would like to suppress the red warning lights, run the file "EDHM-Addons.bat" in the elite-dangerous-64
folder.

Also, the method I was using to stop the cabin lighting from bleeding into the station lights was too complicated, and
has been adjusted. I had to remove cabin lighting from the SRV as it was bleeding into all environmental lights. 
If you notice the cabin lighting bleeding into the station lights can you please let me know? 
I've tested many ships but I can't test every possible scenario. Thanks!


==========================================================================================


3. I added a new radar, with a different pulse and border colour. 

And you can even mod the colours and pulse visual yourself!

Just head over to the EDHM Github for instructions:
https://github.com/psychicEgg/EDHM

If you prefer the old radar (grey colour) I've added it as an optional extra. To re-install the old radar, 
run the file "EDHM-Addons.bat" in the elite-dangerous-64 folder.


==========================================================================================


4. The Orange J bug fix. Sometimes I wonder if the devs included this bug just to frustrate me. At some resolutions, 
any 'j' character in the INFO panel becomes orange instead of white. 

The bug fix requires the shader that also controls the missile-lock component of the fancy targeting reticle. 
So with the fancy reticle removed the Orange J bug appears again.

If you have the Orange J bug (and you will know if you do), then please run the file "EDHM-Addons.bat" in the
elite-dangerous-64 folder and install the Orange J Bug Fix. This will likely reduce your FPS a little.


==========================================================================================

Video of FPS Update

I understand that's a lot to take in, but this was an important update as FPS has been the most common complaint.

And here's some video proof of the new version working on my old gtx1070 at 4K resolution with Ultra settings.

Note: Recording a high-res video in the background of 4K Elite with Ultra settings reduced my FPS by about 10, and
usually hovers around 70 to 80 in a CZ. But my monitor is 60hz and this video shows the FPS consistently over 60:

https://youtu.be/H2jLFPqVXUg


==========================================================================================

Still stuttering?

If your game is still stuttering with the v1.32 update then it means you probably have a system conflict with the
modding software, 3Dmigoto. Overlays of any type (Steam, GeForce Experience, Discord, etc) are the most common culprit.

And if you're having ongoing issues, also make sure your virus software excludes the elite-dangerous-64 folder (AVs
often have a 'game mode' where certain folders can be excluded from scanning). 

Also load Task Manager and check which processes are running in the background. 
Close all unnecessary processes - 3Dmigoto is very sensitive to conflicts, so best to shut down anything you're 
not using while playing Elite (in the past I had an issue with adware interfering with the mod).

If you have any questions about any of this please feel free to contact me on Discord (psychicEgg#9971) 
or reddit (u/psychicEgg).




*********************************************************
*********************************************************
*************** 1. What does the mod do? ****************
*********************************************************
*********************************************************

As you know, Elite has a default orange HUD. Over the years, CMDRs found a way to alter the HUD via an XML modification.
However, the XML method has widespread unintended effects on many other important elements, such as the colour of ships
on the radar, and pilot portraits.

This mod enables precise colour changes to almost any element on the HUD without the annoying side-effects of the XML
method.

It also functions to change the cabin lighting to any colour, or even bi-colour if you prefer. We've also dimmed some of
the dashboard lights that shine directly in your face, to reduce eye fatigue.

Achieving these outcomes took a very long time. There isn't an instruction manual for any of this, so the progress has
been slow. But we're pleased with the final result and hope it will lead to some beautiful HUD designs in the future.

Videos of mod features:

V1.31: https://youtu.be/PkyblldaNgQ
V1.00: https://youtu.be/s7hkfSBtHs8
Radar: https://youtu.be/cOhP-mPvhfE
Intro: https://youtu.be/n91daAThRP8

DTEA:  https://youtu.be/dReNh9Xxdug


*********************************************************
*********************************************************
****************** 2. How to install ********************
*********************************************************
*********************************************************



Reset your GraphicsConfiguration.xml
====================================

If you've altered the HUD colours in the past using the XML method, then it's very important to set the colour matrix
back to the default values.

This is the default colour matrix. If you've never altered the XML then you don't need to do anything.

<GUIColour>
		<Default>
			<LocalisationName>Standard</LocalisationName>
			<MatrixRed>	  1, 0, 0 </MatrixRed>
			<MatrixGreen>	0, 1, 0 </MatrixGreen>
			<MatrixBlue>	0, 0, 1 </MatrixBlue>
		</Default>




If you have a previous version installed
========================================

•	If you have a previous version of EDHM installed and you manually added a set of shader hashes to your ini file
(usually to fix shader loading in VR), then please ensure you backup those manual additions to a separate txt file
before overwriting your ini file.

•	If you have a previous version of EDHM installed, please uninstall by double-clicking the  uninstall.bat  file in your
elite-dangerous-64 directory.




Installing the current version of EDHM
======================================



•	Unzip the contents of the zip file into the "elite-dangerous-64" directory.

You'll need to locate your installation folder (you can run a windows search for "elite-dangerous-64").

Inside the Elite Dangerous game file directory, make sure you extract the zip file into the "elite-dangerous-64"
directory and not the "Elite Dangerous" directory.

Look for this directory:
C:\..\Elite Dangerous\Products\elite-dangerous-64




•	Extracting the contents of the zip file will create the following 7 files in the "elite-dangerous-64" directory:

- d3dx.ini (the main configuration file, which you can open in notepad)
- d3d11.dll
- d3dcompiler_46.dll
- nvapi64.dll
- EDHM-Readme-v1.32.txt
- EDHM-Addons.bat
- uninstall.bat

And 3 folders:
- ShaderFixes (contains all the modified shaders)
- ReplacementTextures (contains several texture / graphics replacements)
- Shader-Repair (contains instructions on how to fix a problem shader, mostly relevant to VR)



•	Once you've extracted the zip, that's it, the mod is installed.



•	Please note, if you would like to disable the Supercruise Speed Lines, please look inside the ShaderFixes folder and
copy the file from the "Supercruise Speed Lines" folder to the ShaderFixes folder. 
	



Checking the mod has installed correctly
========================================

Before you do anything else, please check the two JPG files within the Shader-Repair directory (in your
elite-dangerous-64 directory)

•	1-Example-of-broken-shader.jpg
•	2-Example-of-good-shader.jpg

If the mod installs correctly, you should see something like Image 2.

If the mod is missing a shader, you will see something like Image 1 (orange distributor bars). 
Unfortunately there is a problem shader that is a by-product of the way Elite is coded, 
and we can't do anything about it. But you can permanently fix the issue, please see below.




*********************************************************
*********************************************************
************* 3. Graphics Options in Elite **************
*********************************************************
*********************************************************


•	It's critically important (super duper important) you set:

DISABLE GUI EFFECTS = OFF

This is the default setting. Setting this to ON will prevent the mod from loading correctly.


-----------------------------------------------------------
2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D-2D
-----------------------------------------------------------

•	For normal (2D) gameplay, please set your in-game resolution to:

	1366x768
	1920x1080
	1920x1200
	1920x1440
	2048x1536
	2560x1440
	2560x1600
	3840x2160
	4096x2160

With these resolutions you can use any Quality and positive Supersampling (1 or above) setting.

You don't have to use these resolutions (THE MOD WILL WORK AT ANY RESOLUTION, EVEN WIDE-SCREEN), 
but beyond the list above you will likely experience the 'broken shader' issue (please see the fix below).


Once you're in-game, please check the shaders (graphics) have loaded correctly by inspecting the two JPG files within
the Shader-Repair directory (in your elite-dangerous-64 directory)

•	1-Example-of-broken-shader.jpg
•	2-Example-of-good-shader.jpg

If you have a broken shader please follow the instructions in   Shader Repair Instructions.pdf   (in the Shader-Repair
directory).



-----------------------------------------------------------
VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR-VR
-----------------------------------------------------------

•	For VR gameplay, try loading up the mod and then inspect the two JPG files within the Shader-Repair directory (in your
elite-dangerous-64 directory)

•	1-Example-of-broken-shader.jpg
•	2-Example-of-good-shader.jpg

It is likely you will have a broken shader (as there is a problem shader that depends on different factors within Elite
and within your VR settings, and we can't account for all possible variations).

If you have a broken shader please follow the instructions in   Shader Repair Instructions.pdf   (in the Shader-Repair
directory).




*********************************************************
*********************************************************
******************** 4. Mod Options *********************
*********************************************************
*********************************************************


Once the mod is loaded, use the function F keys to change the options.

You can press:

•	F2 to cycle through shield colours
•	F3 to cycle through OwnShip hologram colours
•	F4 to cycle through distributor colours
•	F5 to dim the HUD
•	F6 to dim the lighting
•	F7 to cycle through cabin lighting colours (15 options, please see d3dx.ini for specific colour names)
•	F8 to cycle through targeting reticle options (3 options, please see d3dx.ini for more details)

•	F1 to disable the Mod, revert to the default orange HUD (you can switch back and forth)


If these F keys conflict with other software you can change the key designations in the d3dx.ini file.

For example, you can change VK_F5 to something else (VK simply means 'virtual key')

	This link lists valid key descriptions:
	https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes


•	If you find yourself dimming the HUD or lighting frequently, or have a favourite lighting or reticle colour, then you
can change the default values in the d3dx.ini file.




*********************************************************
*********************************************************
**************** 5. Uninstalling the mod ****************
*********************************************************
*********************************************************


•	An uninstall.bat file is included that deletes all mod files. 
	Double click   uninstall.bat   to uninstall the mod, or remove the files listed above manually.

•	Please note, when Elite receives an official update, all mod files are automatically deleted.

•	Also, in the Elite launcher, if you go into the Options menu and select 'Validate Game Files', all mod files will be
  deleted.




*********************************************************
*********************************************************
******************* 6. Known Issues *********************
*********************************************************
*********************************************************


•	This mod is not compatible with Steam overlay (and associated controllers)
	ReShade works for some CMDRs, unsure about EDFX.

•	If you're in VR and you look behind the seat you may notice the coloured cabin lighting glitching at the back of the
  cabin (usually only in large ships). This is because we need to set a distance limit on the lighting otherwise it
  affects the lights in the stations.

•	When using the 3rd person camera to take selfies of your CMDR, you may prefer to select the default lighting option
  (see the ini file) or press F1 to disable the mod. Otherwise the CMDR's skin and flight suit will be coloured by the
  lighting.

•	In some high-res modes, the text that pops up in the INFO panel has about 1/3 of its shading in white (instead of
  yellow). I'm having difficulty identifying the cause of this bug as the text appears so quickly, but will fix in a
  future update.




*********************************************************
*********************************************************
***************** 7. Troubleshooting ********************
*********************************************************
*********************************************************

1A. By far the most common issue reported is the problem shader (orange distributor bars).

And by far the most common reason is the GUI setting in graphics options.

Please ensure you set
DISABLE GUI EFFECTS = OFF

It should look like this
https://i.imgur.com/BMVZcIZ.png


1B. If this setting is already OFF, then please follow the instructions in   Shader Repair Instructions.pdf   
(in the Shader-Repair folder)




2. FPS reduction

See section: "Preface to v1.32" at the top of this Readme.




*********************************************************
*********************************************************
*************** 8. Questions? Requests? *****************
*********************************************************
*********************************************************


•	The ini file and shader files are intended for the end-user and not for modders. It would be very difficult to learn
  modding from these files.

•	We are currently working on a method to enable CMDRs to choose their own HUD colours, please contact me if you're a
  software developer or engineer, thank you!

•	I am slowly adding customisable shader files (that you can colour yourself) to my GitHub:
	https://github.com/psychicEgg/EDHM




*********************************************************
*********************************************************
********************* 9. Credits ************************
*********************************************************
*********************************************************

The EDHM project began in June 2020 and was developed by psychicEgg (CMDR GeorjCostanza) and Xiba2k4 (CMDR Xiba2k4).

Special thanks to CMDR Blue Mystic for his work on the upcoming UI, and CMDR DeadlyPliers and CMDR alterNERDtive for
their great contributions. 

We'd also like to thank CMDR Exigeous for liaising with FDev to verify mod approval. 
You can view Exigeous' YouTube channel here:
https://www.youtube.com/channel/UC0Rwxz4318EEQGHz_z58nVA

Thank you also to Down To Earth Astronomy for sharing the mod with the community:
https://www.youtube.com/channel/UCg3QI9rHzPgvR7KTKSCtPHg


And finally, a huge Thankyou to the creator of 3Dmigoto, DarkStarSword, none of this would be possible without him.


We hope you enjoy the mod!

o7
