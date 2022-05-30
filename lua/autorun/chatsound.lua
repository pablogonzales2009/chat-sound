if (SERVER) then return end

local function SetChatSound( path )
    local snd = Sound( path )
    hook.Add("OnPlayerChat", "Chat Sound", function()
        surface.PlaySound( snd )
    end)
end

SetChatSound( CreateClientConVar( "chat_sound", "csound.wav", true, false, "Sets a chat sound, cvar is path to sound in gmod filesystem." ):GetString() )
cvars.AddChangeCallback( "chat_sound", function( name, old, new ) SetChatSound( new ) end )

-- WOW!!
