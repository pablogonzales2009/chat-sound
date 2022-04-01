local chatSoundCVar = CreateClientConVar("chat_sound", "csound", true, false, "Usage is displayed on the addon thumbnail. I'm not halfassed to put it here.")
local file = GetConVar("chat_sound"):GetString()
resource.AddFile(file)

hook.Add("OnPlayerChat", "csound", function()
	surface.PlaySound(file..".wav") 
end)

-- WOW!!
