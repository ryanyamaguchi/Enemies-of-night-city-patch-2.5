ENC = {}


function ENC:new()


    registerForEvent("onInit", function() 
	

	dofile("Modules/Native Settings.lua")
	dofile("Modules/Base.lua")
	dofile("Modules/EnemyVariety.lua")
	dofile("Modules/BreachProtocol.lua")
	dofile("Modules/reloadable_config.lua")
	dofile("Modules/Detection.lua")
	dofile("Modules/StatusEffects.lua")
	dofile("Modules/SmartWeapon.lua")
	dofile("Modules/TimeDilation.lua")

	print("Enemies of Night City loaded")
	
    end)







	

    return self

end



return ENC:new()
