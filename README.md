OUTDATED! New Version of QB/QB-Inventory changes things and I am unsure how to fix them.

Based on the ATMTACO MLO

# Taco Shop for QBCore Framework
Taco Shop with target 

## Dependencies :
QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-menu - https://github.com/qbcore-framework/qb-menu

nh-keyboard - https://github.com/nerohiro/nh-keyboard

nh-context - https://github.com/nerohiro/nh-context

## The original scripts 
https://github.com/Zach488/qb-burgershot
https://github.com/elvodkaa/qb-taco

## add to qb-core/shared/jobs.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
    ["taco"] = {
		label = "Taco Shop",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 50
            },
			['1'] = {
                name = "Employee",
                payment = 75
            },
			['2'] = {
                name = "Cooker",
                payment = 100
            },
			['3'] = {
                name = "Manager",
                payment = 125
            },
			['4'] = {
                name = "Owner",
				isboss = true,
                payment = 150
            },
        },
	},
  ```
 ## add to qb-bossmenu/config.lua
 ```
     ['taco'] = vector3(20.45, -1602.09, 29.38),
 ```
 
 ## add to qb-target/init.lua(sometimes config.lua) in the Config.TargetModels
 ```
	["tacoshopgarage"] = {
		models = {
			"ig_floyd"
		},
		options = {
			{
				type = "client",
				event = "garage:TacoShopGarage",
				icon = "fas fa-car",
				label = "Taco Shop Garage",
				job = "taco",
			}
		},
	distance = 2.5,
	},
 ```
 
 ## add to qb-core/shared/items.lua or qb-core/shared.lua (depending on which version of QBCore you are using)
```
	-- Taco Shop

	-- Food/Drinks
	['ts-beef_taco'] 		 	     = {['name'] = 'ts-beef_taco', 			    ['label'] = 'Beef Taco', 	   		    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-beeftaco.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Beef Tacos huh?'},
	['ts-chicken_taco'] 	 	     = {['name'] = 'ts-chicken_taco', 		    ['label'] = 'Chicken Taco',    			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-chickentaco.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Chicken Tacos huh?'},
	['ts-burrito'] 				 = {['name'] = 'ts-burrito', 			  	  	['label'] = 'Burrito', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-burrito.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Burritos huh?'},
	['ts-enchilada'] 		         = {['name'] = 'ts-enchilada', 			    ['label'] = 'Enchilada', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-enchilada.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Enchiladas huh?'},
	['ts-quesadilla'] 		     = {['name'] = 'ts-quesadilla', 			    ['label'] = 'Quesadilla', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-quesadilla.png',        ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Quesadillas huh?'},
	['ts-nachos'] 		 	     = {['name'] = 'ts-nachos', 			        ['label'] = 'Nachos', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-nachos.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar really makes some damn good Nachos huh?'},
	['ts-soda'] 		 	   		 = {['name'] = 'ts-soda', 			    	['label'] = 'Soda', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-soda.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Sodas good huh?'},
	['ts-coffee'] 		 	     = {['name'] = 'ts-coffee', 			    	['label'] = 'Coffee', 	   		  	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-coffee.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The Coffees good huh?'},

	-- Ingredients
	['ts-lettuce'] 		 	     = {['name'] = 'ts-lettuce', 			        ['label'] = 'Lettuce', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-lettuce.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-tortilla'] 		 	     = {['name'] = 'ts-tortilla', 			    ['label'] = 'Tortilla', 		        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-tortilla.png', 	   		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-seasoning'] 		 	     = {['name'] = 'ts-seasoning', 			    ['label'] = 'Seasoning', 			    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-seasoning.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-cooked_beef'] 		     = {['name'] = 'ts-cooked_beef', 			  	['label'] = 'Cooked Beef', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-cookedbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-cooked_chicken']          = {['name'] = 'ts-cooked_chicken', 			['label'] = 'Cooked Chicken', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-cookedchicken.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-enchilada_sauce'] 	     = {['name'] = 'ts-enchilada_sauce', 			['label'] = 'Enchilada Sauce', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-enchiladasauce.png',   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-ground_beef'] 			 = {['name'] = 'ts-ground_beef', 			  	['label'] = 'Ground Beef', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-groundbeef.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-raw_chicken'] 		     = {['name'] = 'ts-raw_chicken', 			  	['label'] = 'Raw Chicken', 		  		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-rawchicken.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-refried_beans'] 		     = {['name'] = 'ts-refried_beans', 			['label'] = 'Refried Beans', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-refriedbeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-tortilla_chips'] 	     = {['name'] = 'ts-tortilla_chips', 			['label'] = 'Tortilla Chips', 		  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-tortillachips.png',  	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-soda_syrup'] 		     = {['name'] = 'ts-soda_syrup', 				['label'] = 'Soda Syrup', 			  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-sodasyrup.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-coffee_beans'] 		     = {['name'] = 'ts-coffee_beans', 			['label'] = 'Coffee Beans', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-coffeebeans.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-cheese'] 			     = {['name'] = 'ts-cheese', 			        ['label'] = 'Cheese', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-cheese.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-nacho_cheese'] 		  	 = {['name'] = 'ts-nacho_cheese', 		   	['label'] = 'Nacho Cheese', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-nachocheese.png', 	   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	['ts-salsa'] 			         = {['name'] = 'ts-salsa', 			       	['label'] = 'Salsa', 				  	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-salsa.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Might be used to make something'},
	
	-- Meals
	['ts-beef_combo_meal'] 		 = {['name'] = 'ts-beef_combo_meal', 		    ['label'] = 'Beef Combo Meal', 	   	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-combomeal.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},
	['ts-chicken_combo_meal'] 	 = {['name'] = 'ts-chicken_combo_meal',   	['label'] = 'Chicken Combo Meal', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ts-combomeal.png',		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Gunnar made a whole combo meal, better hope you get something special...'},
```

## add to qb-smallresources/server/consumables.lua
```
-- Taco Shop

-- Food
QBCore.Functions.CreateUseableItem("ts-beef_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-chicken_taco", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-burrito", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-enchilada", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-quesadilla", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-nachos", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

-- Drinks
QBCore.Functions.CreateUseableItem("ts-soda", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ts-coffee", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)
```
## qb-smallresources/config.lua

# inside the config add this to ConsumeablesEat
```
    ["ts-beef_taco"] = math.random(40, 60),
    ["ts-chicken_taco"] = math.random(40, 60),
    ["ts-burrito"] = math.random(50, 80),
    ["ts-enchilada"] = math.random(40, 60),
    ["ts-quesadilla"] = math.random(40, 60),
    ["ts-nachos"] = math.random(50, 80),
```

# inside the config add this to ConsumablesDrink
```
    ["ts-soda"] = math.random(40, 50),
    ["ts-coffee"] = math.random(40, 50),
```
