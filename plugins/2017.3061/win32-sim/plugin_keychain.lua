local Library = require "CoronaLibrary"

-- Create library
local lib = Library:new{ name='keychain', publisherId='us.datalabs' }

-------------------------------------------------------------------------------
-- BEGIN (Insert your implementation starting here)
-------------------------------------------------------------------------------

lib.get = function(key)
	print( '[Plugin Keychain]: This plugin only works on iOS/Android devices. Simulating it here using system.getPreferences' )
    return system.getPreference( "app", key, "string" )
end

lib.set = function(key,value)
	if value == nil then
		print( '[Plugin Keychain]: This plugin only works on iOS/Android devices. Simulating it here using system.deletePreferences' )
		system.deletePreferences( "app", { key } )
		return
	end
	print( '[Plugin Keychain]: This plugin only works on iOS/Android devices. Simulating it here using system.setPreferences and so your data is not being securely stored!' )
    return system.setPreferences( "app", { [key] = value} )
end

lib.setAccessibility = function()
	print( '[Plugin Keychain]: This plugin only works on iOS/Android devices.' )
    return
end

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------

-- Return an instance
return lib
