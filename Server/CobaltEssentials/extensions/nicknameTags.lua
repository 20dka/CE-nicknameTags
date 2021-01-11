local M = {}

--called whenever the extension is loaded
local function onInit()
end
--called once every tick
local function onTick(age)
end

--called whenever a player is authenticated by the server for the first time.
local function onPlayerFirstAuth(player)
end
--called whenever the player is authenticated by the server.
local function onPlayerAuth(player)
end
--called whenever someone begins connecting to the server
local function onPlayerConnecting(player)
end
--called when a player begins loading
local function onPlayerJoining(player)
end
--called whenever a player has fully joined the session
local function onPlayerJoin(player)
end
--called whenever a player disconnects from the server
local function onPlayerDisconnect(player)
end

--called whenever a player spawns a vehicle.
local function onVehicleSpawn(player, vehID,  data)
	local groupstr = player.permissions.group
	if groupstr == "default" then groupstr = "" end
	groupstr = groupstr:gsub("^%l", string.upper)
	print("sending nickname group as "..groupstr)
	local yes = player.name..';'..groupstr
	TriggerClientEvent(-1, "CEsendPlayerTags", yes)
end

--called whenever a player applies their vehicle edits.
local function onVehicleEdited(player, vehID,  data)
end


M.onInit = onInit
M.onTick = onTick

M.onPlayerFirstAuth = onPlayerFirstAuth

M.onPlayerAuth = onPlayerAuth
M.onPlayerConnecting = onPlayerConnecting
M.onPlayerJoining = onPlayerJoining
M.onPlayerJoin = onPlayerJoin
M.onPlayerDisconnect = onPlayerDisconnect

M.onVehicleSpawn = onVehicleSpawn
M.onVehicleEdited = onVehicleEdited

return M