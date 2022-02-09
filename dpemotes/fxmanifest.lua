fx_version 'adamant'

shared_script '@DiamondCasino/shared.lua'

game 'gta5'

client_scripts {
	'NativeUI.lua',
	'Config.lua',
	'Client/*.lua'
}

server_scripts {
	'Config.lua',
	'@mysql-async/lib/MySQL.lua',
	'Server/*.lua'
}
