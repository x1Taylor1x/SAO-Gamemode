AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("player.lua")
include("shared.lua")

function GM:PlayerConnect( name, ip )
	print("Player" .. name .. "Has Joined.")
end

function GM:PlayerInitialSpawn( ply )
	print("Player" .. ply:Nick() .. "Has Spawned.")
	ply:SetGamemodeTeam( 1 )
	
end

function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Player" .. ply:Nick() .. "Has Been Authenticated.")
end

GM:PlayerSetModel( ply )
	ply:SetModel("models/player/Group01/Male_07.mdl")
end
