fx_version 'cerulean'
game 'gta5'

author 'GunnarOverkill'
description 'go-tacoshop for QBCore, modified script (it is not my code for the script). Modified Version of qb-taco by elvodka: https://github.com/elvodkaa/qb-taco and qb-burgershot which is the Original Script and its Author: qb-burgershot Created By Zach488: https://github.com/Zach488/qb-burgershot'
version '3.1.0'

shared_scripts {
    'config.lua'
}

client_scripts {
	'client/main.lua',
	'client/garage.lua',
	'client/menus.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
