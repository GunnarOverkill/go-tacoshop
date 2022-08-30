local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("TacoShop-Duty", vector3(429.24, -1913.8, 25.47), 0.8, 0.5, {
		name = "TacoShop-Duty",
		heading = 225,
		debugPoly = false,
		minZ=24.0,
		maxZ=27.0,
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

	exports['qb-target']:AddBoxZone("TacoShop-Tray1", vector3(418.15, -1915.08, 25.47), 1, 1, {
		name = "TacoShop-Tray1",
		heading = 315,
		debugPoly = false,
		minZ=24.0,
		maxZ=27.0,
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
    
    exports['qb-target']:AddBoxZone("TacoShop-Tray2", vector3(416.28, -1916.98, 25.47), 1, 1, {
		name="TacoShop-Tray2",
		heading=315,
		debugPoly=false,
		minZ=24.0,
		maxZ=27.0,
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

    exports['qb-target']:AddBoxZone("TacoShop-Fridge", vector3(424.18, -1921.79, 25.47), 1.5, 1, {
        name="TacoShop",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
           {
            event = "nh-context:TacoShop-FridgeMenu",
            icon = "fa-solid fa-refrigerator",
            label = "Open Fridge",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-OrderIngredients", vector3(425.96, -1913.62, 25.47), 2, 1.8, {
        name="TacoShop-OrderIngredients",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-OrderIngredientsMenu",
            icon = "fas fa-laptop",
            label = "Get Ingredients",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-Display1", vector3(420.06, -1916.67, 25.47), 2, 0.9, {
        name="TacoShop-Display1",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "go-tacoshop:Display",
            icon = "fas fa-box",
            label = "Storage",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-Display2", vector3(424.83, -1914.34, 25.48), 1.6, 0.7, {
        name="TacoShop-Display2",
        heading=225,
        debugPoly=false,
		minZ=24.0,
		maxZ=27.0,
    }, {
        options = {
            {
            event = "go-tacoshop:Display",
            icon = "fas fa-box",
            label = "Storage",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-MakeFood", vector3(422.91, -1922.99, 25.47), 2, 0.8, {
        name="TacoShop-MakeFood",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-FoodMenu",
            icon = "fa-solid fa-taco",
            label = "Food Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("TacoShop-MakeMeals", vector3(427.62, -1918.54, 25.47), 1.7, 1, {
        name="TacoShop-MakeMeals",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-MealMenu",
            icon = "fa-solid fa-hand-holding-box",
            label = "Meal Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })
    
    exports['qb-target']:AddBoxZone("TacoShop-CookMeats", vector3(425.3, -1920.77, 25.47), 1.6, 1, {
        name="TacoShop-CookMeats",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-CookMeatMenu",
            icon = "fa-solid fa-meat",
            label = "Cook Meats Work Station",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-Register1", vector3(418.98, -1914.3, 25.47), 0.8, 0.8, {
        name="TacoShop-Register1",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
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

    exports['qb-target']:AddBoxZone("TacoShop-Register2", vector3(416.94, -1916.34, 25.47), 0.8, 0.8, {
        name="TacoShop-Register2",
        debugPoly=false,
        heading=315,
        minZ=24.0,
        maxZ=27.0,
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

    exports['qb-target']:AddBoxZone("TacoShop-SodaDispenser1", vector3(418.84, -1917.76, 25.47), 0.8, 0.8, {
        name="TacoShop-SodaDispenser1",
        heading=315,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-SodaDispenserMenu",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "taco",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("TacoShop-SodaDispenser2", vector3(422.97, -1912.58, 25.47), 1.3, 0.8, {
        name="TacoShop-SodaDispenser2",
        heading=34,
        debugPoly=false,
        minZ=24.0,
        maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:TacoShop-SodaDispenserMenu",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "taco",
            },
        },
        distance = 1.5
    })

end)

-- QB-Menu --

RegisterNetEvent('nh-context:TacoShop-FoodMenu', function(data)
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

RegisterNetEvent('nh-context:TacoShop-MealMenu', function(data)
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

RegisterNetEvent('nh-context:TacoShop-CookMeatMenu', function(data)
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

RegisterNetEvent('nh-context:TacoShop-FridgeMenu', function(data)
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

RegisterNetEvent('nh-context:TacoShop-OrderIngredientsMenu', function(data)
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

RegisterNetEvent('nh-context:TacoShop-SodaDispenserMenu', function(data)
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

