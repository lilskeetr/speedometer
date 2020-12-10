function text (content)
SetTextFont(1)
SetTextProportional(0)
SetTextScale(1.9,1.9)
SetTextEntry("STRING")
AddTextComponentString(content)
DrawText(0.9,0.7)
end

Citizen.CreateThread(function()

while true do
Citizen.Wait(2)
--[[
   converterar entityspeed till kph = 3.6
]]
Local speed = GetEntitiySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*3.6
-- kollar om spelaren är innne i fordonet
if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) 
then 
text(math.floor(speed))
end
end

end)