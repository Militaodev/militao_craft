--SCRIPT DESENVOLVIDO POR ! Militao#9976 DIREITOS RESERVADOS https://discord.gg/cz78unW4Ye




local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

militao = Tunnel.getInterface("militao_craft")
-----------------------------------------------------------------------------------------------------------------------------------------
local militin = false
CreateThread(function()
    repeat
        Wait(1)
        for k,v in pairs(blip) do
            local ped = PlayerPedId()
            local cordplayer = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(cordplayer,v.x,v.y,v.z)
            if not militin then
                if distance <= 2 then
                    drawText3D(v.x,v.y,v.z,"APERTE ~b~[E]~w~ PARA ~g~CRAFTAR~w~")
                    if IsControlJustPressed(0,38) then
                        
                        if militao.checkItem() then
                            militin = true
                            vRP._playAnim(false,{"anim@amb@business@coc@coc_packing_hi@","full_cycle_v1_pressoperator"},true)
                            TriggerEvent("Progress",10000,"Craftando...")
                            SetTimeout(tempo*1000,function()
                                vRP._stopAnim()
                                militin = false
                                militao.craftar()
                            end)
                        else
                            TriggerEvent("Notify", "negado", "Você não tem a peça da arma", 1000)
                        end
                    
                    end
                end
            end
        end
    until false
end)


function drawText3D(x,y,z,text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.34, 0.34)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
end
--SCRIPT DESENVOLVIDO POR ! Militao#9976 DIREITOS RESERVADOS https://discord.gg/cz78unW4Ye
