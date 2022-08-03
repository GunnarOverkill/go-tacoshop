local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("TacoShopDuty", vector3(429.25, -1913.84, 25.2), 1.4, 1.2, {
		name = "TacoShopDuty",
		heading = 32,
		debugPoly = false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {  
			event = "go-tacoshop:Duty",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "taco",
		    },
		},
		distance = 1.5
	})

	exports['qb-target']:AddBoxZone("tacoshop_tray_1", vector3(417.8, -1915.28, 25.25), 1.05, 1.0, {
		name = "tacoshop_tray_1",
		heading = 35.0,
		debugPoly = false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {
			event = "go-tacoshop:Tray1",
			icon = "far fa-clipboard",
			label = "Tray 1",
		    },
		},
		distance = 1.5
	})
    
    exports['qb-target']:AddBoxZone("tacoshop_tray_2", vector3(416.33, -1916.8, 25.71), 0.5, 0.7, {
		name="tacoshop_tray_2",
		heading=318,
		debugPoly=false,
		minZ=24.5,
		maxZ=27.5,
	}, {
		options = {
		    {
			event = "go-tacoshop:Tray2",
			icon = "far fa-clipboard",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("tacoshopfridge", vector3(424.27, -1921.76, 25.83), 1.5, 1.5, {
        name="tacoshopfridge",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
           {
            event = "nh-context:FridgeTacoShop",
            icon = "fa-solid fa-refrigerator",
            label = "Open Fridge",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tacoshoporderingredients", vector3(426.09, -1913.68, 25.75), 1.7, 1.7, {
        name="tacoshoporderingredients",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:OrderMenuTacoShop",
            icon = "fas fa-laptop",
            label = "Get Ingredients",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tacoshopdisplay", vector3(420.22, -1916.67, 25.62), 1.3, 1.0, {
        name="tacoshopdisplay",
        heading=50,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-tacoshop:Storage",
            icon = "fas fa-box",
            label = "Storage",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("makefoodtacoshop", vector3(427.57, -1918.39, 25.46), 1.8, 0.7, {
        name="makefoodtacoshop",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:FoodsTacoShop",
            icon = "fa-solid fa-taco",
            label = "Food Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("makemealstacoshop", vector3(421.28, -1915.42, 25.56), 1.8, 0.7, {
        name="makemealstacoshop",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:MealsTacoShop",
            icon = "fa-solid fa-hand-holding-box",
            label = "Meal Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })
    
    exports['qb-target']:AddBoxZone("cookingmeattacoshop", vector3(425.31, -1920.79, 25.29), 1.8, 0.7, {
        name="cookingmeattacoshop",
        heading=140,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:CookMeatTacoShop",
            icon = "fa-solid fa-meat",
            label = "Cook Meats Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop_register_1", vector3(419.07, -1914.49, 25.86), 1.0, 0.8, {
        name="TacoShop_register_1",
        debugPoly=false,
        heading=125,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-tacoshop:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop_register_2", vector3(416.96, -1916.28, 25.86), 1.0, 0.8, {
        name="TacoShop_register_2",
        debugPoly=false,
        heading=125,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "go-tacoshop:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tacoshopdrinks", vector3(418.86, -1917.76, 25.5), 1.0, 0.6, {
        name="tacoshopdrinks",
        heading=34,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:DrinkMenuTacoShop",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("tacoshopdrinks2", vector3(422.98, -1912.66, 25.64), 1.0, 0.6, {
        name="tacoshopdrinks2",
        heading=34,
        debugPoly=false,
        minZ=24.5,
        maxZ=27.5,
    }, {
        options = {
            {
            event = "nh-context:DrinkMenuTacoShop",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "taco",
            },
        },
        distance = 1.5
    })

end)

-- QB-Menu --

RegisterNetEvent('nh-context:FoodsTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco",
            txt = "Tortilla , Cooked Beef , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-tacoshop:BeefTaco"
            }
        },
        {
            header = "Make a Chicken Taco",
            txt = "Tortilla , Cooked Chicken , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-tacoshop:ChickenTaco"
            }
        },
        {
            header = "Make a Burrito",
            txt = "Tortilla , Cooked Beef , Seasoning , Refried Beans , Cheese",
            params = {
                event = "go-tacoshop:Burrito"
            }
        },
        {
            header = "Make an Enchilada",
            txt = "Tortilla , Cooked Beef , Seasoning , Enchilada Sauce , Cheese",
            params = {
                event = "go-tacoshop:Enchilada"
            }
        },
        {
            header = "Make a Quesadilla",
            txt = "Tortilla , Cooked Chicken , Seasoning , Cheese",
            params = {
                event = "go-tacoshop:Quesadilla"
            }
        },
        {
            header = "Make Nachos",
            txt = "Tortilla Chips , Cooked Beef , Seasoning , Salsa , Nacho Cheese",
            params = {
                event = "go-tacoshop:Nachos"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:MealsTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco Meal",
            txt = "Burrito, Beef Taco x2, Soda",
            params = {
                event = "go-tacoshop:BeefComboMeal"
            }
        },
        {
            header = "Make a Chicken Taco Meal",
            txt = "Burrito, Chicken Taco x2, Soda",
            params = {
                event = "go-tacoshop:ChickenComboMeal"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:CookMeatTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Cook Ground Beef",
            txt = "Ground Beef",
            params = {
                event = "go-tacoshop:CookedBeef"
            }
        },
        {
            header = "Cook Raw Chicken",
            txt = "Raw Chicken",
            params = {
                event = "go-tacoshop:CookedChicken"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:FridgeTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fridge",
            isMenuHeader = true
        },
        {
            header = "Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "go-tacoshop:Storage2"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:OrderMenuTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients",
            isMenuHeader = true
        },
        {
            header = "Get Ingredients",
            txt = "Get New Ingredients",
            params = {
                event = "go-tacoshop:shop"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:DrinkMenuTacoShop', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "Soda Dispenser",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "Pour a Cup of Soda",
            txt = "Soda Syrup",
            params = {
                event = "go-tacoshop:Soda"
            }
        },
        {
            
            header = "Pour a Cup of Coffee",
            txt = "Coffee Beans",
            params = {
                event = "go-tacoshop:Coffee"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

-- Bill Stuff
RegisterNetEvent("go-tacoshop:bill")
AddEventHandler("go-tacoshop:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("go-tacoshop:bill:player", bill.citizenid, bill.billprice)
    end
end)

