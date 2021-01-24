local M = {}

local function sendGroupTag(player)
	local groupstr = player.permissions.group
	if groupstr == "default" then groupstr = "" end
	groupstr = groupstr:gsub("^%l", string.upper)
	--print("sending nickname group as "..groupstr)
	local yes = player.name..';'..groupstr
	TriggerClientEvent(-1, "CEsendPlayerTags", yes)
end

local function onInit() end

local function onVehicleSpawn(player, vehID,  data) sendGroupTag(player) end

M.onInit = onInit
M.onVehicleSpawn = onVehicleSpawn
M.onVehicleEdited = onVehicleSpawn

return M