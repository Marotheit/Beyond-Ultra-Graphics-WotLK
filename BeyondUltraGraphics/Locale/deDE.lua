local L = LibStub("AceLocale-3.0"):NewLocale("BeyondUltraGraphics", "deDE")

-- Beyond Ultra Graphics
L["Beyond Ultra Graphics"] = "Beyond Ultra Graphics"

-- Debug
L["The %s console variable has been set to %s."] = "Die Konsolenvariable %s wurde auf %s gesetzt."
L["Skipped applying the %s console variable because the toggle option is disabled."] = "Das Anwenden der Konsolenvariable %s wurde übersprungen, da die Umschaltoption deaktiviert ist."

-- Reload Prompt
L["Would you like to reload the interface?"] = "Möchtest du das Interface neu laden?"
L["Yes"] = "Ja"
L["No"] = "Nein"

-- Options Frame
L["Toggles applying the "] = "Aktiviert/Deaktiviert das Anwenden der "
L[" console variable upon entering the world."] = " Konsolenvariable beim Betreten der Welt."
L["Value"] = "Wert"
L["Enable"] = "Aktivieren"
L["Client Default:"] = "Standard des Clients:"
L["Ultra Preset Default:"] = "Standard des Ultra-Profils:"

-- Text (Hexadecimal) Colors
L["00ccff"] = "00ccff" -- AddOn Title, Highlighted Text, and Default Values
L["9d9d9d"] = "9d9d9d" -- No Blood
L["1eff00"] = "1eff00" -- Green Blood
L["b93c3c"] = "b93c3c" -- Bloody
L["d13e3e"] = "d13e3e" -- Very Bloody
L["e84040"] = "e84040" -- Exceptionally Bloody
L["ff4242"] = "ff4242" -- Extremely Bloody

-- AddOn Behavior
L["AddOn Behavior"] = "AddOn-Verhalten"
L["Enable Beyond Ultra Graphics"] = "Beyond Ultra Graphics aktivieren"
L["Toggles Beyond Ultra Graphics functionality.\n\nDisabling this option will have no effect on (console variable) graphical settings after they have already been applied, but will prevent them from being reapplied in the future upon entering the world.\n\nConsole variables will be reset if any graphical settings are changed from the Video options menu."] = "Aktiviert oder deaktiviert die Funktionalität von Beyond Ultra Graphics.\n\nDas Deaktivieren hat keinen Einfluss auf bereits angewendete Konsolenvariablen, verhindert aber, dass sie beim nächsten Weltbetritt erneut gesetzt werden.\n\nKonsolenvariablen werden zurückgesetzt, wenn Grafikeinstellungen im Video-Optionsmenü geändert werden."
L["Debug Mode"] = "Debug-Modus"
L["Toggles debug mode.\n\nWhile debug mode is enabled, console variable application messages will be displayed in the chat for all console variables."] = "Aktiviert oder deaktiviert den Debug-Modus.\n\nWenn der Debug-Modus aktiviert ist, werden Nachrichten über die Anwendung von Konsolenvariablen im Chat angezeigt."
L["Console Variable Application Login Delay"] = "Verzögerung beim Anwenden der Konsolenvariablen nach dem Login"
L["Determines the amount of time (in seconds) to wait after a player enters the world before applying console variables."] = "Legt fest, wie viele Sekunden nach dem Betreten der Welt gewartet wird, bevor die Konsolenvariablen angewendet werden."
L["Display Reload Prompt Upon Entering the World"] = "Anzeige der Neu-Lade-Aufforderung beim Betreten der Welt"
L["Displays a reload prompt upon entering the world.\n\nThis can be useful for reloading textures that have not been fully loaded upon entering the world.\n\nThis option can be enabled even if "] = "Zeigt beim Betreten der Welt eine Aufforderung zum Neuladen an.\n\nDies kann nützlich sein, um Texturen neu zu laden, die beim Betreten der Welt nicht vollständig geladen wurden.\n\nDiese Option kann aktiviert werden, selbst wenn "
L[" is disabled."] = " deaktiviert ist."
L["Reload Prompt Login Delay"] = "Verzögerung für Neu-Lade-Aufforderung nach Login"
L["Determines the amount of time (in seconds) to wait after a player enters the world before displaying the reload prompt."] = "Legt fest, wie viele Sekunden nach dem Weltbetritt gewartet wird, bevor die Neu-Lade-Aufforderung angezeigt wird."

-- Client Options
L["Client Options"] = "Client-Optionen"
L["M2Faster"] = "M2Faster"
L["Determines the amount of cores the CPU will utilize to perform scene optimizations."] = "Legt fest, wie viele CPU-Kerne für die Szenenoptimierung verwendet werden."
L["Single-Core"] = "Single-Core"
L["Dual-Core"] = "Dual-Core"
L["Quad-Core"] = "Quad-Core"
L["It is recommended to return this option to a value of "] = "Es wird empfohlen, diese Option auf den Wert "
L[" if you encounter any issues, although this is unlikely on modern hardware."] = " zurückzusetzen, falls Probleme auftreten – was auf moderner Hardware jedoch unwahrscheinlich ist."
L["maxFPS"] = "maxFPS"
L["Determines the maximum FPS the client will display.\n\nHigher values will allow the client to display a higher FPS. This option has no effect when Vertical Sync is enabled."] = "Legt die maximale FPS-Zahl fest, die der Client anzeigen kann.\n\nHöhere Werte erlauben eine höhere Bildrate. Diese Option hat keine Wirkung, wenn Vertikale Synchronisation aktiviert ist."
L["maxFPSBk"] = "maxFPSBk"
L["Determines the maximum FPS the client will display when it is not the active window.\n\nHigher values will allow the client to display a higher FPS when the client is not the active window, which will only impact performance outside of the client."] = "Legt die maximale FPS-Zahl fest, wenn der Client nicht das aktive Fenster ist.\n\nHöhere Werte ermöglichen eine höhere Bildrate im Hintergrund, was nur außerhalb des Clients Auswirkungen auf die Leistung hat."
L["screenshotQuality"] = "screenshotQuality"
L["Determines the image quality of screenshots.\n\nHigher values will allow for higher quality screenshots, but will consume more disk space."] = "Bestimmt die Bildqualität von Screenshots.\n\nHöhere Werte führen zu besseren Screenshots, benötigen jedoch mehr Speicherplatz."
L["violenceLevel"] = "violenceLevel"
L["Determines the violence level during combat."] = "Legt den Gewaltgrad im Kampf fest."
L["No Blood or Combat Effects"] = "Kein Blut oder Kampfeffekte"
L["Green Blood"] = "Grünes Blut"
L["Bloody"] = "Blutig"
L["Very Bloody"] = "Sehr blutig"
L["Exceptionally Bloody"] = "Außergewöhnlich blutig"
L["Extremely Bloody"] = "Extrem blutig"
L["It should be noted that the use of a custom patch to modify blood splatter may negate this option."] = "Hinweis: Die Verwendung eines benutzerdefinierten Patches zur Änderung der Blutspritzer kann diese Option außer Kraft setzen."

-- View Distance
L["View Distance"] = "Sichtweite"
L["farclip"] = "farclip"
L["Determines view distance.\n\nHigher values show terrain at greater distances, but may have a high impact on performance.\n\nIt should be noted that different continents have different maximum view distances that are unable to be overridden by this value, unless modified by a custom patch."] = "Legt die Sichtweite fest.\n\nHöhere Werte zeigen Gelände aus größerer Entfernung, können aber die Leistung stark beeinflussen.\n\nUnterschiedliche Kontinente haben eigene Grenzen, die nur durch Patches übergangen werden können."
L["horizonFarclipScale"] = "horizonFarclipScale"
L["Determines horizon terrain outline view distance.\n\nHigher values allow terrain outlines to draw from greater distances, but may have a moderate impact on performance."] = "Legt die Sichtweite für die Umrisse am Horizont fest.\n\nHöhere Werte zeigen Umrisse aus größerer Entfernung, mit moderatem Leistungsaufwand."
L["objectFade"] = "objectFade"
L["Determines the visibility of the fadein visual effect of distant world objects.\n\nEnabling this option will allow world objects to fade in smoothly, but from shorter distances.\n\nDisabling this option will cause world objects to appear abruptly, but from much greater distances."] = "Bestimmt die Sichtbarkeit des Einblend-Effekts entfernter Objekte.\n\nAktiviert: weiches Einblenden aus kurzer Entfernung.\nDeaktiviert: plötzliches Erscheinen aus größerer Entfernung."

-- Environment Detail
L["Environment Detail"] = "Umgebungsdetails"
L["groundEffectDensity"] = "groundEffectDensity"
L["Determines the amount of ground clutter items, such as grass and foliage.\n\nHigher values show more ground clutter, but may have a moderate impact on performance."] = "Legt die Menge an Bodendekoration fest (z. B. Gras, Laub).\n\nHöhere Werte zeigen mehr, beeinflussen aber die Leistung."
L["SkyCloudLOD"] = "SkyCloudLOD"
L["Determines the level of depth applied to clouds in the sky.\n\nHigher values will allow for more detailed clouds, but may have a slight impact on performance."] = "Legt die Detailtiefe der Wolken am Himmel fest.\n\nHöhere Werte bedeuten detailliertere Wolken, mit leichtem Leistungsverlust."
L["showfootprints"] = "showfootprints"
L["Determines the visibility of footprints on soft ground surfaces (such as sand or snow)."] = "Legt die Sichtbarkeit von Fußspuren auf weichen Böden (z. B. Sand oder Schnee) fest."
L["showfootprintparticles"] = "showfootprintparticles"
L["Determines the visibility of footprint particles."] = "Bestimmt die Sichtbarkeit von Partikeleffekten bei Fußspuren."

-- Accessibility Options
L["Accessibility Options"] = "Barrierefreiheit"
L["characterAmbient"] = "characterAmbient"
L["Determines (inversely) the amount of ambient light that should apply to player and creature models.\n\nHigher values will cause applicable models to appear brighter at all times, while lower values will cause models to appear more natural."] = "Bestimmt (umgekehrt) die Menge an Umgebungslicht für Spieler- und Kreaturenmodelle.\n\nHöhere Werte machen Modelle dauerhaft heller, niedrigere wirken natürlicher."
L["ffxNetherWorld"] = "ffxNetherWorld"
L["Determines the visibility of the Nether World visual effect (usually applied when consuming an Invisibility Potion or casting Invisibility as a Mage).\n\nDisabling this option will hide the swaying distortion effect entirely, but still feature the darkened blue world lighting."] = "Steuert die Sichtbarkeit des Netherwelt-Effekts (z. B. bei Unsichtbarkeit).\n\nDeaktivieren blendet die Verzerrung aus, behält aber die bläuliche Beleuchtung."
L["ffxSpecial"] = "ffxSpecial"
L["Determines the visibility of some (fullscreen) visual effects (such as the haze effect in the Borean Tundra)."] = "Legt die Sichtbarkeit bestimmter (fullscreen) Grafikeffekte fest (z. B. Nebel in der Boreanischen Tundra)."
