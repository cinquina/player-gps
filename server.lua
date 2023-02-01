ESX.RegisterUsableItem('gps', function(source, itemName, itemTable)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' then
        if Player(source).state.gpsActive then
            TriggerEvent('badBlips:server:removePlayerBlipGroup', source, 'police')
        else TriggerEvent('badBlips:server:registerPlayerBlipGroup', source, 'police') end
        Player(source).state.gpsActive = not Player(source).state.gpsActive
    end
end)