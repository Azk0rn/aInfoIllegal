fx_version 'cerulean'
games { 'rdr3', 'gta5' } -- Soon For Read Dead Redemption 2 

author 'Pomme | Shimotsuki'
description 'Info Illegal FiveM'
version '1.0.0'

client_scripts {
    'src/RageUI.lua',
    'src/Menu.lua',
    'src/MenuController.lua',
    'src/components/*.lua',
    'src/elements/*.lua',
    'src/items/*.lua'
}


client_scripts {
    'pClient.lua'
}

server_scripts {
    'pServer.lua'
}

shared_scripts {
    'pConfig.lua'
}