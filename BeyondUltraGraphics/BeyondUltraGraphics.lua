-- Initialize the Ace3 library.
local addonName, addon = ...
BeyondUltraGraphics = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0", "AceTimer-3.0", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("BeyondUltraGraphics")

-- Declare default AddOn options. AddOn options are saved globally.
local defaultConsoleVariables = {
	global = {
		enableBeyondUltraGraphics = false,
		debugMode = false,
		consoleVariableLoginDelay = 3,
		displayReloadPromptUponEnteringTheWorld = true,
		reloadPromptLoginDelay = 4,
		M2FasterToggle = true,
		M2Faster = 3,
		maxFPSToggle = true,
		maxFPS = 200,
		maxFPSBkToggle = true,
		maxFPSBk = 30,
		screenshotQualityToggle = true,
		screenshotQuality = 10,
		violenceLevelToggle = true,
		violenceLevel = 2,
		farclipToggle = true,
		farclip = 1677,
		horizonFarclipScaleToggle = true,
		horizonFarclipScale = 6,
		objectFadeToggle = true,
		objectFade = 1,
		groundEffectDensityToggle = true,
		groundEffectDensity = 256,
		SkyCloudLODToggle = true,
		SkyCloudLOD = 3,
		showfootprintsToggle = true,
		showfootprints = 1,
		showfootprintparticlesToggle = true,
		showfootprintparticles = 1,
		characterAmbientToggle = false,
		characterAmbient = 0,
		ffxNetherWorldToggle = false,
		ffxNetherWorld = 1,
		ffxSpecialToggle = false,
		ffxSpecial = 1,
		-- Hidden console variables, (almost) no reason to ever disable.
		farClipOverrideToggle = true,
		farClipOverride = 1,
		textureCacheSizeToggle = true,
		textureCacheSize = 256,
		-- Session state variable. Used to determine if the PLAYER_ENTERING_WORLD
		-- event is the result of logging in on a new character or using /reload.
		previousGameTip = 0
	}
}

function BeyondUltraGraphics:OnPlayerEnteringWorld(event, isLogin, isReload)
	if not self.db then return end
	
	-- Schedule the timer for applying console variables.
	local applyConsoleVariablesDelay = self.db.global.consoleVariableLoginDelay
	self:ScheduleTimer("ApplyConsoleVariables", applyConsoleVariablesDelay)
	
	-- Schedule the timer for displaying the reload prompt.
	local promptForReloadDelay = self.db.global.reloadPromptLoginDelay
	self:ScheduleTimer("PromptForReload", promptForReloadDelay)
end

function BeyondUltraGraphics:ApplyConsoleVariables()
	if self.db.global.enableBeyondUltraGraphics then
		if self.db.global.debugMode then
			print("|cff" .. L["00ccff"] .. L["Beyond Ultra Graphics"] .. ":")
		end
		for k, v in pairs(self.db.global) do
			-- Skip BeyondUltraGraphics options and toggles.
			if k ~= "enableBeyondUltraGraphics" and
			k ~= "debugMode" and
			k ~= "consoleVariableLoginDelay" and
			k ~= "displayReloadPromptUponEnteringTheWorld" and
			k ~= "reloadPromptLoginDelay" and
			k ~= "previousGameTip" and
			not string.find(k, "Toggle$") then
				local consoleVariableToggle = k .. "Toggle"
				local variableToggleState = self.db.global[consoleVariableToggle]
				-- Only apply the console variable if toggle is ticked.
				if variableToggleState then
					ConsoleExec(k .. " " .. tostring(v))
					if self.db.global.debugMode then
						print(string.format(L["The %s console variable has been set to %s."], k, tostring(v)))
					end
				elseif self.db.global.debugMode then
					print(string.format(L["Skipped applying the %s console variable because the toggle option is disabled."], k))
				end
			end
		end
	end
end

function BeyondUltraGraphics:PromptForReload()
	-- Get the current gameTip integer. The gameTip integer will increment only upon login, which will allow
	-- us to determine if the PLAYER_ENTERING_WORLD event was fired from a login, or the result of a /reload.
	local currentGameTipNumber = GetCVar("gameTip") or "0"
	currentGameTipNumber = tonumber(currentGameTipNumber) or 0
	
	local previousGameTip = self.db.global.previousGameTip
	
	local isNewLogin = (previousGameTip ~= currentGameTipNumber)
	self.db.global.previousGameTip = currentGameTipNumber
	
	-- Determine if the showGameTips cVar is disabled. The reload prompt will always display if showGameTips
	-- is disabled as a fallback, since the gameTip cVar will not be incremented if showGameTips is disabled.
	local showGameTips = GetCVar("showGameTips") or "1"
	local showGameTipsEnabled = (showGameTips == "1")
	
	if (isNewLogin or not showGameTipsEnabled) and self.db.global.displayReloadPromptUponEnteringTheWorld then
		self:DisplayReloadPrompt()
	end
end

function BeyondUltraGraphics:DisplayReloadPrompt()
	StaticPopupDialogs["ON_LOGIN_RELOAD_PROMPT"] = {
		text = L["Would you like to reload the interface?"],
		button1 = L["Yes"],
		button2 = L["No"],
		OnAccept = function()
			ReloadUI()
		end,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
	StaticPopup_Show("ON_LOGIN_RELOAD_PROMPT")
end

function BeyondUltraGraphics:OnInitialize()
	-- Initialize the ConsoleVariableOptions database and options table.
	self.db = LibStub("AceDB-3.0"):New("ConsoleVariableOptions", defaultConsoleVariables)
	self:RegisterOptions()
	
	-- Register chat commands.
	self:RegisterChatCommand("beyondultragraphics", "HandleSlashCommand")
	self:RegisterChatCommand("bug", "HandleSlashCommand")
	self:RegisterChatCommand("graphics", "HandleSlashCommand")
	
	-- Register PLAYER_ENTERING_WORLD event to trigger console variable application and reload prompt display.
	self:RegisterEvent("PLAYER_ENTERING_WORLD", "OnPlayerEnteringWorld")
end

function BeyondUltraGraphics:HandleSlashCommand(input)
	-- Apply console variables if the command argument is "apply".
	if input:trim() == "apply" then
		self:ApplyConsoleVariables()
	else
		InterfaceOptionsFrame_OpenToCategory(addonName)
	end
end

-- Register the options window within the Interface AddOn window.
function BeyondUltraGraphics:RegisterOptions()
	LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, GetBeyondUltraGraphicsOptions)
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, addonName)
end

-- Register the ConsoleVariableOptions database.
function BeyondUltraGraphics:GetSettings()
	return self.db.global
end

-- Update settings.
function BeyondUltraGraphics:UpdateSetting(key, value)
	if self.db.global[key] ~= nil then
		self.db.global[key] = value
	end
end