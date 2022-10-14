Config = {} -- No delete
Config.InfoIllegal = {} -- No delete

Config.VisualBlips = true -- True = if you want a Blips | False = if you not want the Marker
Config.VisualMarker = true -- True = if you want a Marker | False = if you not want the Marker
Config.SecurityESX = 'esx:getSharedObject' -- Protection for ESX
Config.Device = '$' -- Device for this scripts


Config.InfoIllegal = {
    Price = {
        Weed = 0, -- Price of the Weed 
        Coke = 0, -- Price of the Coke 
        Meth = 0 -- Price of the Meht
    }
}

Config.InfoIllegal.Menu = {
    MenuName = '~r~~italic~Info Illegal', -- Menu title 
    ButtonName1 = '~r~~italic~Information Weed', -- Button 1
    ButtonName2 = '~r~~italic~Information Cocaine', -- Button 2
    ButtonName3 = '~r~~italic~Information Meth' -- Button 3
}

Config.InfoIllegal.Text = {
    Weed = '~g~On m\'as dit que dans une maison vers l\'aéroport y\'aurai des chose qui pourrait t\'intéresset ', -- Message for the Weed
    Coke = '~g~Indice n°2 ', -- Message for the Coke 
    Meth = '~g~Indice n°3', -- Message for the Meth
    NoMoney = '~r~Vous n\'avez pas assez d\'argent' -- Message when you do not have enough money
}

Config.InfoIllegal.Blips = {
    -- Site for Blip Fivem : https://docs.fivem.net/docs/game-references/blips/
    Sprite = 378, -- Sprite of the blips 
    Color = 1, -- Color of the blips 
    Size = 0.80, -- Size of the blips
    Name = 'Info Illegal' -- Name of the blips
}

Config.InfoIllegal.Marker = {
    -- Site for Marker FiveM : https://docs.fivem.net/docs/game-references/markers/
    Sprite = 21, -- Sprite of the marker
    Color = { -- Color of the marker 
        R = 255,
        G = 0,
        B = 0
    },
    Size = { -- Size of the marker
        X = 0.5,
        Y = 0.5,
        Z = 0.5
    },
    Text = '<C>~italic~Vous avez trouvé~r~ Info Illegal~s~ pour plus d\'information appuyez sur ~r~[E]</C>' -- Message for the point
}

Config.InfoIllegal.Pos = {
    Blip = {
        vector3(1069.1, 3077.5, 41.5) -- Position Blip
    },
    Marker = {
        vector3(1069.1, 3077.5, 41.5 - 0.60) -- Position Marker
    }
}