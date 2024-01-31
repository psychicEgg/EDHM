# Cockpit Paint Mod (CPM) Guide

### Current CPM version: v5.0.1
<br>

> **Update** I’m making a step-by-step instruction video for the CPM, but since that might take a while here’s a basic guide to get you going. If you have any questions, my contact details are at the bottom of this document. PS. I will be adding screenshots to this guide

<br>The CPM is an addon (3rd party mod) for EDHM, so it is assumed you have [EDHM UI](https://github.com/BlueMystical/EDHM_UI/releases) installed and working.

If you need help setting up EDHM UI, please contact the **UI Dev Blue Mystic** via his GitHub, or on the [EDHM Discord](https://discord.gg/MtBszksjMr). 

I (*psychicEgg*) look after the modding part, so I'm not an expert with troubleshooting UI issues.<br><br>

## To install the CPM

1.	**Exit Elite**. This is very important as we are adding new shaders

2.	Download the [CPM zip file](https://github.com/psychicEgg/EDHM/raw/main/Odyssey/3rdPartyMods/CockpitPaintMod/EDHM-CPM-v3.02.zip), and save the file somewhere you’ll be able to find it (eg. the Desktop or Downloads folder). The current version of the CPM contains 28 ships (see [ShipList.md](https://github.com/psychicEgg/EDHM/blob/main/Odyssey/3rdPartyMods/CockpitPaintMod/ShipList.md))

3.	In EDHM UI, click the Main Menu (top-left), and then click 3PMods (Plugins)

4.	On the bottom row of the 3rd Party Mods (3PM) screen, click the downward blue arrow (Import Mod) and a file selection box will open

5.	Navigate to the location where you downloaded the CPM zip file, select it, then click Open

6.	 In the left column, click on the colourful graphic titled ‘CPM [Cockpit-Paint-Mod]’

7.	Click on one of the ships and a large list of modifications will appear on the right. All settings loaded will be Elite Default

8.	You can now start Elite<br><br>

## Important concepts:

- A **Section** is an area of the cockpit where a particular colour will be applied
- There are 8 cockpit Sections, plus the Floor, Chairs, and Signage (painted signs & symbols)
- Each of the main Sections has 3 **Layers**:
  - Layer 1 is the base texture
  - Layer 2 represents the reflectivity of the texture – how much the texture reflects external light 
  - Layer 3 is the gamma of the texture, and is rarely used except to boost colour under certain conditions
- You apply colour to a Layer using a colour **Mode**. There are 9 Modes (or methods) of applying colour<br><br>

## General strategies for painting your cockpit

<ins>BEFORE YOU START</ins><br><br>

1.	In EDHM UI, ensure the ‘Current Ship’ setting matches the ship you’re flying.<br><br>

2. Choose your general colour scheme

    i] If there's a main colour on which you would like to base your theme, then enter it into<br>
    https://color.adobe.com/create/color-wheel

    and it will provide you with colour suggestions that tend to work well with your main colour

    ii] If you like the colour harmony in an image, upload it to<br>
    https://color.adobe.com/create/image

    and Adobe will automatically give you a colour palette. There are other sites that do palette extraction as well.

    iii] You may prefer to match your cockpit with your HUD colours, or perhaps your external paint job. 

    Whatever approach you use, have a general colour palette in mind before you start, otherwise you're more likely to end up with a random mess.<br><br>

3. Choose your painting environment

    Decide if you want a neutral painting environment in which the HUD and cabin lighting don't affect the paint colours, or if you want to match your cockpit paint with your HUD and cockpit lighting

    For the latter you don't need to do anything, just start painting.

    But if you want a neutral environment to see the natural colours you're applying, then set the following:<br><br>

    - In EDHM UI, first save / export any custom theme you've been working on.

    - Load the theme 'Snarky Desaturated' - this is basically a white and grey HUD theme that won't discolour your cockpit surfaces.

    - Next, in EDHM UI, click the Cabin Lighting section, and make sure Ambient Glow is set to Custom Colour, with white RGB(255, 255, 255). 

    - Both the Primary Colour and Secondary Colour should be set to Elite Default.

    - This combination of settings will output neutral lighting that won't contaminate any surfaces.

    - You may wish to adjust the lighting Overall Brightness setting to your taste (below the Secondary Colour section).<br><br>

    I prefer to paint in a neutral environment, and then modify an existing HUD theme (or make a new one) to complement the cockpit colours. But I know others like to do it the other way around - there isn't any 'right way'.<br><br>

4. Fly out into space away from any stations or carriers (to avoid coloured light contamination), and rotate your ship so about half your cockpit is exposed to starlight.

    This is important because when adjusting the Light Reflections Layer 2, it's very easy to set it too high. And then when you fly into starlight or dock at a station you'll be blinded by the cockpit brightness. It's all about creating a balance - so apply your colours, roll your ship around in the starlight, and check if anything is too bright or too dark.

    In general (but not strict rules):

    - Too bright overall (dark and light) - turn down Layer 1 (Base Texture) Brightness

    - Too bright in starlight - turn down Layer 2 (Reflectiveness) Brightness

    - Too dark overall - Increase Layer 1 (Base Texture) Brightness, or activate Layer 3 Brightness (Gamma / Shadows) to 20-30%<br><br>

5. Glare from reflective surfaces

    If you're making a predominantly shiny / reflective cockpit, you may find there's too much glare when the surfaces hit starlight. This dazzling effect can be distracting and tiresome after a while, so be conservative with the shiny slider.

    However, to attenuate the glare, in the global settings of the CPM (click the coloured CPM icon on the left) you can allocate a keybind to turn on 'glare reduction'. Pressing this keybind should turn off most blinding glare from shiny surfaces. Basically it raises the threshold before the bloom shader activates.

    In the CPM ship settings you can also turn down the brightness of the 'Reflectiveness of Structural Surfaces', which will turn down the brightness of all surfaces in the cockpit (but only structural surfaces, not accessories). But that setting is really only a compensation setting if you made a mistake painting everything too bright, and you won't need it if you follow the instructions below.<br><br>

## Sections, Layers and Modes

Each cockpit has 8 to 10 textures, on average, and each texture is allocated to a **‘Section’** in the CPM.

A texture is basically a 1024-pixel square image with a 'textured pattern and colour' that gives each part of the cockpit a unique look. FDev allocate the position of the textures on the cockpit surfaces, which can't be changed (without texture replacement, which this mod doesn't do).<br><br>

Each texture contains 6 components (sub-textures) that perform a specific function. One might be the base 'texture and colour' of a surface, another might control how light is reflected (brighter for metallic surfaces, less so for matte surfaces), and other layers control colour dispersal, smudges and scratches, and the cockpit structure.

FDev program the relationships between these 6 sub-texture components, and send the rendering output (what we see on the screen) into 3 output Layers. 

- Layer 1 controls the base texture - the patterns, colours, and smudges

- Layer 2 controls the light reflection output. 

  All textures reflect light, and similarly to physical objects if you set the reflectivity to 0 the object becomes black. Theoretically we could have a different light reflection colour than the base texture colour (which is partly how the cool paintjobs are created, like Azure) but in the CPM the light reflection will either be default Elite (usually the colour of your cabin lighting) or the same colour as Layer 1

- Layer 3 is a little harder to describe. It's like a gamma level, and if you know anything about gamma you will understand you need to use it conservatively. I rarely use Layer 3 except when Shiny mode darkens the output, then I might raise Layer 3 by 20-30% to boost the colour.

So each Section has 3 output Layers. I hope that makes sense so far.<br><br>

### Modes

For the first 2 Layers there are 9 different **'Modes'** (_or methods_) of applying colour to the texture. Each Mode is a unique combination of the 6 texture components previously discussed. 

It's not important to remember the technical details behind the calculation of each Mode, since each texture has a unique response curve that can be somewhat unpredictable. 

For example, one of the 6 texture components might be absent so a particular Mode won't work; or the base texture component might be very transparent and only the light reflections layer will change the output (eg. the canopy struts on the Kraits).

I have included 9 Modes to maximise flexibility and ensure every texture can be coloured. In older versions of the CPM some textures had to be left at default as I only made a subset of Modes, but now you have them all. I'd rather people complained about overkill rather than an inability to apply colour to a Section!<br><br>

### Making a surface shiny

The Shiny slider will gradually remove the top matte layer of a surface, exposing the light reflection layer. You may need to set Layer 1 to Default Elite, or reduce its brightness to around 30% to fully expose the Shiny effect. 

Some surfaces will not have a bright 'light reflections' layer (eg., matte background surfaces), and will therefore become darker when you increase the Shiny level. To compensate, you can either increase the Brightness of Layer 2 (Light Reflections), or raise Layer 3 (Gamma / Shadows) by 20-30%.<br><br>

### Smoothing a surface

Some ships have old, rusty surfaces (eg. DBX, T9, T10, etc), and others have scratches or handprints or other types of blemishes.

There are several options to remove these blemishes and make your ship look brand new. I had to provide multiple options as blemishes can be added to any sub-texture component by FDev.

1. Some blurry / hand-print blemishes only appear when using Shiny mode – these blemishes were always there but very subtle - but with the top matte layer removed you can see them more easily. Especially in the Vipers, but lots of others ships too. An exception being the Gutamaya ships, as the Imperial Slaves keep everything nice and clean!

    So if you see those blurry handprints, switch on the 'Blemish Reduction' mode in General Settings at the top of each Ship’s configuration page

2. The second option is to apply something akin to a gaussian blur effect to the texture, to reduce the clarity of imperfections. You can use the Smooth Texture slider to adjust the amount of blur. 

    But it should be noted that the Shiny effect will reduce the more you increase the blur. I'm not sure why exactly, so I tend to leave the smoothing at 30% or below if I want to keep a shiny effect.

The next two methods are called Deep Smoothing because they're a bit more extreme. 

3. Level 1 Deep Smoothing will remove the textured light reflections layer and replace it with a completely flat light reflections layer. Doing this will remove all detail from the texture, so use it conservatively. But it's very useful to remove rusty textures on the old ships.

4. Level 2 Deep Smoothing is for stubborn stains that are actually part of the hardcoded artwork for the base cockpit texture. They usually only become apparent when other smoothing methods are applied, and switching this on will apply a Gaussian blur effect to the particular section of the cockpit structure.

With those 4 smoothing options, you should be able to refurbish any ship.<br><br>

### Matte, Bright and Reflective, or Shiny

For each section / surface, try to decide beforehand if it's going to be matte, bright and reflective, or shiny.

- For a **matte texture** (something you don't want to draw your attention), start with Layer 1, and when you have the Section looking good, experiment with the other settings.

- For a **bright and reflective texture** (that will become bright when illuminated by external light), Set Layer 1 to Elite Default, or to Mode 1 with approximately 30% Brightness, then do most of your work on Layer 2

- To create a **shiny surface**, the Shiny slider will effectively make Layer 2 (Light Reflections) more dominant, so activate Layer 2 and set your Shiny slider to around 50-80% (sometimes 100% shiny will make a surface black if the Light Reflections layer is very dark or absent). 

  If the texture becomes very dark in shiny mode then it means the light reflections layer is very dark (the texture is probably matte / non-reflective in default Elite). To remedy this issue, you can turn on Layer 1 or Layer 3 and add about 30% to 'strengthen' the colour, and boost the Layer 2 brightness.

  Cycle through the Layer 2 Modes until you find something you like, then fine-tune Layer 1, the Shiny level, and the Smooth Texture level. 
  
  Remember, increasing the Smooth Texture level will decrease shininess, so don't set it much more than 30% if you want a decent amount of shiny.<br><br>

## Theme Management

### Importing themes

For the time being, I recommend not importing old themes (from the EDHM Discord) into v2.0 of the CPM as they used different templates. Best to wait until the theme authors update to the current version.

Gradually we will build a library of themes and I will include them here. If you would like to share a theme and you’re not on the EDHM discord, feel free to send the theme to me via my email below.<br><br>

When you do find a v2.0 theme:

1. On the bottom row of the 3PM screen, click ‘Themes / Import Theme’.

2. A file selection box will open, navigate to the zip file containing the theme you would like to install.

3. Select the theme, then click Open

4. Again, click the CPM [Cockpit-Paint-Mod] graphic, then click the ship associated with the theme you just imported

5. Locate the ‘Themes’ button on the far-right edge of the 3PM window (in EDHM UI), and hover your mouse above it (no need to click it)

  The Themes sidebar will pop out and you will see all the themes you have installed.

6. Click on the theme you would like to load, then press F11 in-game to activate your new theme.

You will notice an ‘Elite Default’ theme is available for every ship. Load this theme if you make a mess and want to start over.<br><br>

### To Save / Export a theme

Click ‘Themes / Export Theme’, and fill-in all the details.

If you’d like to share your theme with others, please create a thumbnail for the theme.

**Included in the files above** is a [photoshop template](https://github.com/psychicEgg/EDHM/raw/main/Odyssey/3rdPartyMods/CockpitPaintMod/CPM-Thumbnail-Template.psd) for ship thumbnails, which can be used in most graphic applications, including free software like GIMP and Paint NET. 

Also included is a [Paint NET version](https://github.com/psychicEgg/EDHM/raw/main/Odyssey/3rdPartyMods/CockpitPaintMod/CPM-Thumbnail-Template.pdn) of the template<br>
https://www.getpaint.net/

Regardless of your method, I recommend turning off your HUD with CTRL ALT G, ensure your dashboard is in a lighted area (or brighten the image in your gfx software), take a screenshot and cut out the middle part that shows the cockpit. 

The final image size should be **200 x 61 pixels**, and ideally with a 1 pixel coloured border.

If you have trouble making a thumbnail, you’re welcome to send me your screenshot and I’ll make it for you.<br><br>

## Pro tips:

-	You don’t need to colour every Section

-	You don’t need to always colour both Layers in a Section. Try leaving Layer 2 on Elite Default unless you want to change the colour and intensity of the reflections

-	Use the Test Mode to determine the layout of a Section before painting

-	You don’t need to press the ‘Apply Theme’ button in EDHM UI, just F11 in-game

-	Paint your ship undocked with half your cockpit in starlight, so you don’t make the panels too bright

-	Remember to Export your theme to save your work, or to share your finished theme with others<br><br>

## Contact / Feedback / Bug Reports

If you’re on the [EDHM Discord](https://discord.gg/MtBszksjMr), you can post in the #cockpit-paint-beta channel

Or you can send me a Discord PM: psychicEgg#9971

You’re also welcome to ask questions or post bug reports on this GitHub (but for EDHM UI issues please contact the author [Blue Mystic](https://github.com/BlueMystical))

I’m on [Twitter](https://twitter.com/EDHMod)

And if you’d like to email me files, my GMail username is: EDHUDMod 

I hope you enjoy the CPM, and I look forward to seeing your creations!<br><br>

❤ psychicEgg / CMDR GeorjCostanza

o7
