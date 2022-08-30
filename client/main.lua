local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = false
PlayerJob = {}

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "taco" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

Citizen.CreateThread(function()
    TacoShop = AddBlipForCoord(416.2, -1910.99, 25.57)
    SetBlipSprite (TacoShop, 209)
    SetBlipDisplay(TacoShop, 4)
    SetBlipScale  (TacoShop, 0.6)
    SetBlipAsShortRange(TacoShop, true)
    SetBlipColour(TacoShop, 5)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Taco Shop")
    EndTextCommandSetBlipName(TacoShop)
end) 

RegisterNetEvent("go-tacoshop:Duty")
AddEventHandler("go-tacoshop:Duty", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("go-tacoshop:Tray1")
AddEventHandler("go-tacoshop:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "TacoShop-Tray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TacoShop-Tray1", {
        maxweight = 30000,
        slots = 6,
    })
end)

RegisterNetEvent("go-tacoshop:Tray2")
AddEventHandler("go-tacoshop:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "TacoShop-Tray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TacoShop-Tray2", {
        maxweight = 30000,
        slots = 6,
    })
end)

RegisterNetEvent("go-tacoshop:Display")
AddEventHandler("go-tacoshop:Display", function()
    TriggerEvent("inventory:client:SetCurrentStash", "TacoShop-Display")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TacoShop-Display", {
        maxweight = 1000000,
        slots = 100,
    })
end)

--Meal Creations
RegisterNetEvent("go-tacoshop:OpenBeefComboMeal")
AddEventHandler("go-tacoshop:OpenBeefComboMeal", function()
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "ts-beef_combo_meal", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "ts-burrito", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "ts-beef_taco", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "ts-soda", 1)
end)

RegisterNetEvent("go-tacoshop:OpenChickenComboMeal")
AddEventHandler("go-tacoshop:OpenChickenComboMeal", function()
		--remove box
		TriggerServerEvent('QBCore:Server:RemoveItem', "ts-chicken_combo_meal", 1)
		--add items from box
		TriggerServerEvent('QBCore:Server:AddItem', "ts-burrito", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "ts-chicken_taco", 2)
		TriggerServerEvent('QBCore:Server:AddItem', "ts-soda", 1)
end)

RegisterNetEvent("go-tacoshop:BeefTaco")
AddEventHandler("go-tacoshop:BeefTaco", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientBeefTaco', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Beef Taco", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-beef_taco", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-beef_taco"], "add", 1)
                    QBCore.Functions.Notify("You made a Beef Taco", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:ChickenTaco")
AddEventHandler("go-tacoshop:ChickenTaco", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientChickenTaco', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Chicken Taco", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_chicken", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-lettuce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-chicken_taco", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-chicken_taco"], "add",1)
                    QBCore.Functions.Notify("You made a Chicken Taco", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:Burrito")
AddEventHandler("go-tacoshop:Burrito", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientBurrito', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Burrito", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-refried_beans", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-burrito", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-burrito"], "add",1)
                    QBCore.Functions.Notify("You made a Burrito", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:Enchilada")
AddEventHandler("go-tacoshop:Enchilada", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientEnchilada', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Enchilada", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-enchilada_sauce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-enchilada", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-enchilada"], "add",1)
                    QBCore.Functions.Notify("You made a Enchilada", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:Quesadilla")
AddEventHandler("go-tacoshop:Quesadilla", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientQuesadilla', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Quesadilla", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_chicken", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-quesadilla", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-quesadilla"], "add",1)
                    QBCore.Functions.Notify("You made a Quesadilla", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:Nachos")
AddEventHandler("go-tacoshop:Nachos", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientNachos', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Nachos", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-tortilla_chips", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-cooked_beef", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-seasoning", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-salsa", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-nacho_cheese", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-nachos", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-nachos"], "add",1)
                    QBCore.Functions.Notify("You made Nachos", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:BeefComboMeal")
AddEventHandler("go-tacoshop:BeefComboMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientBeefComboMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Beef Combo Meal", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-burrito", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-beef_taco", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-soda", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-beef_combo_meal", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-beef_combo_meal"], "add",1)
                    QBCore.Functions.Notify("You made a Beef Combo Meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("go-tacoshop:ChickenComboMeal")
AddEventHandler("go-tacoshop:ChickenComboMeal", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('go-tacoshop:server:get:ingredientChickenComboMeal', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making a Chicken Combo Meal", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-burrito", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-chicken_taco", 2)
					TriggerServerEvent('QBCore:Server:RemoveItem', "ts-soda", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ts-chicken_combo_meal", 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-chicken_combo_meal"], "add",1)
                    QBCore.Functions.Notify("You made a Chicken Combo Meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the ingredients to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-- Soda and Raw Meat Cooking
RegisterNetEvent("go-tacoshop:Soda")
AddEventHandler("go-tacoshop:Soda", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MixSoda()
        else
            QBCore.Functions.Notify("You don't have any soda syrup..", "error")
        end
      end, 'ts-soda_syrup')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-tacoshop:Coffee")
AddEventHandler("go-tacoshop:Coffee", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           BrewCoffee()
        else
            QBCore.Functions.Notify("You don't have any coffee beans..", "error")
        end
      end, 'ts-coffee_beans')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-tacoshop:CookedBeef")
AddEventHandler("go-tacoshop:CookedBeef", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           CookBeef()
        else
            QBCore.Functions.Notify("You don't have any ground beef..", "error")
        end
      end, 'ts-ground_beef')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("go-tacoshop:CookedChicken")
AddEventHandler("go-tacoshop:CookedChicken", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           CookChicken()
        else
            QBCore.Functions.Notify("You don't have any raw chicken..", "error")
        end
      end, 'ts-raw_chicken')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

-- Function Portion
function CookBeef()
    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-ground_beef", 1)
    QBCore.Functions.Progressbar("pickup", "Cooking the Ground Beef..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "ts-cooked_beef", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-cooked_beef"], "add")
    QBCore.Functions.Notify("You cooked the beef", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function CookChicken()
    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-raw_chicken", 1)
    QBCore.Functions.Progressbar("pickup", "Cooking the Raw Chicken..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }, {
        model = "prop_cs_fork",
        bone = 28422,
        coords = vector3(-0.005, 0.00, 0.00),
        rotation = vector3(175.0, 160.0, 0.0),
    }    
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "ts-cooked_chicken", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-cooked_chicken"], "add")
    QBCore.Functions.Notify("You cooked the chicken", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MixSoda()
    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-soda_syrup", 1)
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "ts-soda", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-soda"], "add")
    QBCore.Functions.Notify("You made a Soda", "success")
end

function BrewCoffee()
    TriggerServerEvent('QBCore:Server:RemoveItem', "ts-coffee_beans", 1)
    QBCore.Functions.Progressbar("pickup", "Filling a cup..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "ts-coffee", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ts-coffee"], "add")
    QBCore.Functions.Notify("You made a Coffee", "success")
end

RegisterNetEvent("go-tacoshop:shop")
AddEventHandler("go-tacoshop:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "taco", Config.Items)
end)