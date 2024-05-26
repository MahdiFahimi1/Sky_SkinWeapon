if Config.Base == 'oldesx' then
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
elseif Config.Base == 'newesx' then
	ESX = exports["es_extended"]:getSharedObject()
elseif Config.Base == 'other' then
	print('Please Set Your Group System')
end

RegisterNetEvent('skin:getPerms')
AddEventHandler('skin:getPerms', function()

local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)

if xPlayer then

    if xPlayer.group == Config.Group1 or xPlayer.group == Config.Group2 or xPlayer.group == Config.Group3 then

        TriggerClientEvent('skin:openMenu', _source, true)

    else

        TriggerClientEvent('skin:openMenu', _source, false)

    end

end
end)