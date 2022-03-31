local M = {}

-- send group info about [player] to [target] ID
local function sendSingleTag(player, target)
	if not player or not player.permissions or not player.permissions.group then return end -- make sure we don't cause a Lua error
	local groupstr = player.permissions.group
	if groupstr == "default" then groupstr = "" end -- ignore default group
	groupstr = groupstr:gsub("^%l", string.upper) -- make uppercase
	local concat = player.name..';'..groupstr
	MP.TriggerClientEvent((target or -1), "CEsendPlayerTags", concat)
end

-- send all players' group info to [target] ID
local function sendAllTags(target)
	for id,p in pairs(players) do
		if type(id) == "number" then
			sendSingleTag(p, target)
		end
	end
end

-- tell everyone about the new spawn's group
local function onVehicleSpawn(player, ...) sendSingleTag(player) end

-- tell the new player about all already joined players' groups
local function onPlayerJoin(player, ...) sendAllTags(player.playerID) end

M.onVehicleSpawn = onVehicleSpawn
M.onVehicleEdited = onVehicleSpawn
M.onPlayerJoin = onPlayerJoin

return M