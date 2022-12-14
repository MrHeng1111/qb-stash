local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-stashs:client:openStash', function(currentstash, stash)

    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    local PlayerGang = PlayerData.gang.name
    local canOpen = false

    if Config.PoliceOpen then 
        if PlayerJob == "police" then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].jobrequired then 
        if PlayerJob == Config.Stashes[currentstash].job then
            canOpen = true
        end
    end

    if Config.Stashes[currentstash].requirecid then
        for k, v in pairs (Config.Stashes[currentstash].cid) do 
            if QBCore.Functions.GetPlayerData().citizenid == v then
                canOpen = true
            end
        end
    end

    if Config.Stashes[currentstash].gangrequired then
        if PlayerGang == Config.Stashes[currentstash].gang then
            canOpen = true
        end
    end

    if canOpen then 
        TriggerServerEvent("inventory:server:OpenInventory", "stash", Config.Stashes[currentstash].stashName, {maxweight = Config.Stashes[currentstash].stashSize, slots = Config.Stashes[currentstash].stashSlots})
        TriggerEvent("inventory:client:SetCurrentStash", Config.Stashes[currentstash].stashName)
    else
        QBCore.Functions.Notify('You cannot open this', 'error')
    end

end)

RegisterNetEvent('qb-stashs:shops', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    local PlayerGang = PlayerData.gang.name
    local canOpen = false

    if Config.PoliceOpen then 
        if PlayerJob == "police" then
            canOpen = true
        end
    end
    
    if Config.Shops[OpenInventory].jobrequired then 
        if PlayerJob == Config.Shops[OpenInventory].job then
            canOpen = true
        end
    end
        
    if Config.Shops[OpenInventory].gangrequired then
        if PlayerGang == Config.Shops[OpenInventory].gang then
            canOpen = true
        end
    end

    if canOpen then
        TriggerServerEvent("inventory:server:OpenInventory", "shops", "shops", Config.Items)
        TriggerEvent("inventory:client:OpenInventory", Config.Shops[OpenInventory].shopsName)
    else
        QBCore.Functions.Notify('You cannot open this', 'error')
    end

end)
