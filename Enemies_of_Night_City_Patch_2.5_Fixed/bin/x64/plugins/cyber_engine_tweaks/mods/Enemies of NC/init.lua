ENC = {}


function ENC:new()


    registerForEvent("onInit", function() 
	

	dofile("modules/Native Settings.lua")
	dofile("modules/Base.lua")
	dofile("modules/EnemyVariety.lua")
	dofile("modules/BreachProtocol.lua")
	dofile("modules/reloadable_config.lua")
	dofile("modules/Detection.lua")
	dofile("modules/StatusEffects.lua")
	dofile("modules/SmartWeapon.lua")
	dofile("modules/TimeDilation.lua")

	print("Enemies of Night City loaded")
	
    end)







	

end



return ENC:new()
