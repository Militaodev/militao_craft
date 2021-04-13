--SCRIPT DESENVOLVIDO POR ! Militao#9976 DIREITOS RESERVADOS https://discord.gg/cz78unW4Ye


local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")

militao = {}
Tunnel.bindInterface("militao_craft",militao)
Proxy.addInterface("militao_craft",militao)
----------------------------------------------------------------------------------------------------------------------
function militao.checkItem() 
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.getInventoryItemAmount(user_id ,item) >= quantidadeDeItens then
            vRP.tryGetInventoryItem(user_id,item,quantidadeDeItens,true,slot)
            return true
        end
    end    
end
function militao.craftar()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if  vRP.giveInventoryItem(user_id,"WEAPON_ASSAULTRIFLE_MK2",quantidadeDeItens,true) then
            return true
    
        end
    end          
end
--SCRIPT DESENVOLVIDO POR ! Militao#9976 DIREITOS RESERVADOS https://discord.gg/cz78unW4Ye

