local L = LibStub("AceLocale-3.0"):NewLocale("BeyondUltraGraphics", "enUS", true)

-- Beyond Ultra Graphics
L["Beyond Ultra Graphics"] = true

-- Debug
L["The %s console variable has been set to %s."] = true
L["Skipped applying the %s console variable because the toggle option is disabled."] = true

-- Reload Prompt
L["Would you like to reload the interface?"] = true
L["Yes"] = true
L["No"] = true

-- Options Frame
L["Toggles applying the "] = true
L[" console variable upon entering the world."] = true
L["Value"] = true
L["Enable"] = true
L["Client Default:"] = true
L["Ultra Preset Default:"] = true

-- Text (Hexadecimal) Colors
L["00ccff"] = true -- AddOn Title, Highlighted Text, and Default Values
L["9d9d9d"] = true -- No Blood
L["1eff00"] = true -- Green Blood
L["b93c3c"] = true -- Bloody
L["d13e3e"] = true -- Very Bloody
L["e84040"] = true -- Exceptionally Bloody
L["ff4242"] = true -- Extremely Bloody

-- AddOn Behavior
L["AddOn Behavior"] = true
L["Enable Beyond Ultra Graphics"] = true
L["Toggles Beyond Ultra Graphics functionality.\n\nDisabling this option will have no effect on (console variable) graphical settings after they have already been applied, but will prevent them from being reapplied in the future upon entering the world.\n\nConsole variables will be reset if any graphical settings are changed from the Video options menu."] = true
L["Debug Mode"] = true
L["Toggles debug mode.\n\nWhile debug mode is enabled, console variable application messages will be displayed in the chat for all console variables."] = true
L["Console Variable Application Login Delay"] = true
L["Determines the amount of time (in seconds) to wait after a player enters the world before applying console variables."] = true
L["Display Reload Prompt Upon Entering the World"] = true
L["Displays a reload prompt upon entering the world.\n\nThis can be useful for reloading textures that have not been fully loaded upon entering the world.\n\nThis option can be enabled even if "] = true
L[" is disabled."] = true
L["Reload Prompt Login Delay"] = true
L["Determines the amount of time (in seconds) to wait after a player enters the world before displaying the reload prompt."] = true

-- Client Options
L["Client Options"] = true
L["M2Faster"] = true
L["Determines the amount of cores the CPU will utilize to perform scene optimizations."] = true
L["Single-Core"] = true
L["Dual-Core"] = true
L["Quad-Core"] = true
L["It is recommended to return this option to a value of "] = true
L[" if you encounter any issues, although this is unlikely on modern hardware."] = true
L["maxFPS"] = true
L["Determines the maximum FPS the client will display.\n\nHigher values will allow the client to display a higher FPS. This option has no effect when Vertical Sync is enabled."] = true
L["maxFPSBk"] = true
L["Determines the maximum FPS the client will display when it is not the active window.\n\nHigher values will allow the client to display a higher FPS when the client is not the active window, which will only impact performance outside of the client."] = true
L["screenshotQuality"] = true
L["Determines the image quality of screenshots.\n\nHigher values will allow for higher quality screenshots, but will consume more disk space."] = true
L["violenceLevel"] = true
L["Determines the violence level during combat."] = true
L["No Blood or Combat Effects"] = true
L["Green Blood"] = true
L["Bloody"] = true
L["Very Bloody"] = true
L["Exceptionally Bloody"] = true
L["Extremely Bloody"] = true
L["It should be noted that the use of a custom patch to modify blood splatter may negate this option."] = true

-- View Distance
L["View Distance"] = true
L["farclip"] = true
L["Determines view distance.\n\nHigher values show terrain at greater distances, but may have a high impact on performance.\n\nIt should be noted that different continents have different maximum view distances that are unable to be overridden by this value, unless modified by a custom patch."] = true
L["horizonFarclipScale"] = true
L["Determines horizon terrain outline view distance.\n\nHigher values allow terrain outlines to draw from greater distances, but may have a moderate impact on performance."] = true
L["objectFade"] = true
L["Determines the visibility of the fadein visual effect of distant world objects.\n\nEnabling this option will allow world objects to fade in smoothly, but from shorter distances.\n\nDisabling this option will cause world objects to appear abruptly, but from much greater distances."] = true

-- Environment Detail
L["Environment Detail"] = true
L["groundEffectDensity"] = true
L["Determines the amount of ground clutter items, such as grass and foliage.\n\nHigher values show more ground clutter, but may have a moderate impact on performance."] = true
L["SkyCloudLOD"] = true
L["Determines the level of depth applied to clouds in the sky.\n\nHigher values will allow for more detailed clouds, but may have a slight impact on performance."] = true
L["showfootprints"] = true
L["Determines the visibility of footprints on soft ground surfaces (such as sand or snow)."] = true
L["showfootprintparticles"] = true
L["Determines the visibility of footprint particles."] = true

-- Accessibility Options
L["Accessibility Options"] = true
L["characterAmbient"] = true
L["Determines (inversely) the amount of ambient light that should apply to player and creature models.\n\nHigher values will cause applicable models to appear brighter at all times, while lower values will cause models to appear more natural."] = true
L["ffxNetherWorld"] = true
L["Determines the visibility of the Nether World visual effect (usually applied when consuming an Invisibility Potion or casting Invisibility as a Mage).\n\nDisabling this option will hide the swaying distortion effect entirely, but still feature the darkened blue world lighting."] = true
L["ffxSpecial"] = true
L["Determines the visibility of some (fullscreen) visual effects (such as the haze effect in the Borean Tundra)."] = true