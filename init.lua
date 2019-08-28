--
-- Mod Atualizador
--

-- Lista de mods para atualizar
--[[
	Para adicionar um novo script de atualização para um mod
	crie um novo arquivo com o nome do mod (meu_mod.lua) e
	insira o nome dele na lista abaixo.
	Traduções não são o foco desse atualizador.
  ]]
local lista = {
	-- Nativos (minetest_game)
	"doors",
	"default",
	"farming",
	"tnt",
	"wool",
	-- Avulsos
	"creatures",
	"3d_armor",
	"mobs",
	"itemframes",
	"mesecons",
	"hbhunger",
}




-- Colocar mods na tabela
local mods = {}
for i, name in ipairs(minetest.get_modnames()) do
	mods[name] = true
end

-- Notificador de Inicializador
local notificar = function(msg)
	if minetest.setting_get("log_mods") then
		minetest.debug("[Minemacro (mod)]"..msg)
	end
end

local modpath = minetest.get_modpath("minemacro")

-- Carregar scripts de atualização de cada mod
notificar("Carregando...")
for i, name in ipairs(lista) do
	if mods[name] then dofile(modpath.."/"..name..".lua") end
end
notificar("OK")



