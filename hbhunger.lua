--[[
	Mod Minemacro para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Alterações para hbhunger
  ]]

local register_food = hbhunger.register_food

if minetest.get_modpath("default") ~= nil then
	register_food("default:apple", 1)
end

if minetest.get_modpath("farming") ~= nil then
	register_food("farming:bread", 3)
end

if minetest.get_modpath("creatures") ~= nil then
	register_food("creatures:flesh", 5)
	register_food("creatures:meat", 10)
end

if minetest.get_modpath("flowers") ~= nil then
	register_food("flowers:mushroom_brown", 1)
end

if minetest.get_modpath("oficios:basicos") ~= nil then
	register_food("oficios_basicos:frutos_selvagens", 1)
end

if minetest.get_modpath("chicken") ~= nil then
	register_food("creatures:chicken_flesh", 4)
	register_food("creatures:chicken_meat", 7)
end
