ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.SecurityESX, function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

local MainMenu = RageUI.CreateMenu(Config.InfoIllegal.Menu.MenuName, "~s~", nil, nil, "commonmenu", "interaction_bgd" )

function RageUI.PoolMenus:Example()
    MainMenu:IsVisible(function(Items)

        Items:AddButton(Config.InfoIllegal.Menu.ButtonName1, nil, { IsDisabled = false, RightLabel = '~g~'..Config.InfoIllegal.Price.Weed..Config.Device }, function(onSelected)
            if onSelected then 
                TriggerServerEvent(":[AnarchyProtect]:InfoIllegal:BuyWeed", Config.InfoIllegal.Price.Weed) 
            end
        end)

        Items:AddButton(Config.InfoIllegal.Menu.ButtonName2, nil, { IsDisabled = false, RightLabel = '~g~'..Config.InfoIllegal.Price.Coke..Config.Device }, function(onSelected)
            if onSelected then 
                TriggerServerEvent(":[AnarchyProtect]:InfoIllegal:BuyCoke", Config.InfoIllegal.Price.Coke) 
            end
        end)

        Items:AddButton(Config.InfoIllegal.Menu.ButtonName3, nil, { IsDisabled = false, RightLabel = '~g~'..Config.InfoIllegal.Price.Meth..Config.Device }, function(onSelected)
            if onSelected then  
                TriggerServerEvent(":[AnarchyProtect]:InfoIllegal:BuyMeth", Config.InfoIllegal.Price.Meth) 
            end
        end)

    end, function(Panels)
    end)
end

Citizen.CreateThread(function()
    for k, v in pairs(Config.InfoIllegal.Pos.Blip) do 
        if Config.VisualBlips then 
            local blipinfoillegal = AddBlipForCoord(v.x, v.y, v.z)
            SetBlipSprite(blipinfoillegal, Config.InfoIllegal.Blips.Sprite)
            SetBlipScale(blipinfoillegal, Config.InfoIllegal.Blips.Size)
            SetBlipColour(blipinfoillegal, Config.InfoIllegal.Blips.Color)
            SetBlipAsShortRange(blipinfoillegal, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.InfoIllegal.Blips.Name)
            EndTextCommandSetBlipName(blipinfoillegal)
        end
    end 

    while true do
        local wait = 500
        local playerCoords = GetEntityCoords(PlayerPedId())
    
        for k, v in pairs(Config.InfoIllegal.Pos.Marker) do
    
        local distance = GetDistanceBetweenCoords(playerCoords, v.x, v.y, v.z, true)
    

            if distance <= 3.0 then
                if Config.VisualMarker then
                    wait = 7
                    DrawMarker(Config.InfoIllegal.Marker.Sprite, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.InfoIllegal.Marker.Size.X, Config.InfoIllegal.Marker.Size.Y, Config.InfoIllegal.Marker.Size.Z, Config.InfoIllegal.Marker.Color.R, Config.InfoIllegal.Marker.Color.G, Config.InfoIllegal.Marker.Color.B, 255, true, true, p19, true) 
                end

                if distance <= 1.0 then
                    wait = 7
                    Visual.Subtitle(Config.InfoIllegal.Marker.Text, 1)
        
                    if IsControlJustReleased(0, 38) then
                            RageUI.Visible(MainMenu, not RageUI.Visible(MainMenu))
                        end
                    end
                end
            end
    Citizen.Wait(0)
    end
end)