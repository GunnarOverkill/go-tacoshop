local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("go-tacoshop:bill:player")
AddEventHandler("go-tacoshop:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'taco' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientBeefTaco', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("ts-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local lettuce = Ply.Functions.GetItemByName("ts-lettuce")
    local cheese = Ply.Functions.GetItemByName("ts-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and lettuce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientChickenTaco', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla")
    local cooked_chicken = Ply.Functions.GetItemByName("ts-cooked_chicken")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local lettuce = Ply.Functions.GetItemByName("ts-lettuce")
    local cheese = Ply.Functions.GetItemByName("ts-cheese")
    if tortilla ~= nil and cooked_chicken ~= nil and seasoning ~= nil and lettuce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientBurrito', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("ts-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local refried_beans = Ply.Functions.GetItemByName("ts-refried_beans")
    local cheese = Ply.Functions.GetItemByName("ts-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and refried_beans ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientEnchilada', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla")
    local cooked_beef = Ply.Functions.GetItemByName("ts-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local enchilada_sauce = Ply.Functions.GetItemByName("ts-enchilada_sauce")
    local cheese = Ply.Functions.GetItemByName("ts-cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and enchilada_sauce ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientQuesadilla', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla")
    local cooked_chicken = Ply.Functions.GetItemByName("ts-cooked_chicken")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local cheese = Ply.Functions.GetItemByName("ts-cheese")
    if tortilla ~= nil and cooked_chicken ~= nil and seasoning ~= nil and cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientNachos', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local tortilla = Ply.Functions.GetItemByName("ts-tortilla_chips")
    local cooked_beef = Ply.Functions.GetItemByName("ts-cooked_beef")
    local seasoning = Ply.Functions.GetItemByName("ts-seasoning")
    local salsa = Ply.Functions.GetItemByName("ts-salsa")
    local nacho_cheese = Ply.Functions.GetItemByName("ts-nacho_cheese")
    if tortilla ~= nil and cooked_beef ~= nil and seasoning ~= nil and salsa ~= nil and nacho_cheese ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientBeefComboMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local burrito = Ply.Functions.GetItemByName("ts-burrito")
    local beef_taco = Ply.Functions.GetItemByName("ts-beef_taco")
    local soda = Ply.Functions.GetItemByName("ts-soda")
    if burrito ~= nil and beef_taco ~= nil and soda ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('go-tacoshop:server:get:ingredientChickenComboMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local burrito = Ply.Functions.GetItemByName("ts-burrito")
    local chicken_taco = Ply.Functions.GetItemByName("ts-chicken_taco")
    local soda = Ply.Functions.GetItemByName("ts-soda")
    if burrito ~= nil and chicken_taco ~= nil and soda ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("ts-xtc_taco", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-tacoshop:XTCTaco", source, item.name)
end)

QBCore.Functions.CreateUseableItem("ts-lsd_taco", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-tacoshop:LSDTaco", source, item.name)
end)

QBCore.Functions.CreateUseableItem("ts-beef_combo_meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-tacoshop:OpenBeefComboMeal", source, item.name)
end)

QBCore.Functions.CreateUseableItem("ts-chicken_combo_meal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("go-tacoshop:OpenChickenComboMeal", source, item.name)
end)
