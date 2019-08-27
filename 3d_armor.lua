--
-- Mod Atualizador
--
-- Para modpack 3d_armor
--

-- Redefinir resistencia das armaduras
minetest.override_item("3d_armor:helmet_wood", {groups = {armor_head=5, armor_heal=0, armor_use=40}})
minetest.override_item("3d_armor:chestplate_wood", {groups = {armor_torso=7, armor_heal=0, armor_use=60}})
minetest.override_item("3d_armor:leggings_wood", {groups = {armor_legs=5, armor_heal=0, armor_use=50}})
minetest.override_item("3d_armor:boots_wood", {groups = {armor_feet=5, armor_heal=0, armor_use=20}})
minetest.override_item("3d_armor:helmet_steel", {groups = {armor_head=7, armor_heal=0, armor_use=150}})
minetest.override_item("3d_armor:chestplate_steel", {groups = {armor_torso=9, armor_heal=0, armor_use=200}})
minetest.override_item("3d_armor:leggings_steel", {groups = {armor_legs=7, armor_heal=0, armor_use=175}})
minetest.override_item("3d_armor:boots_steel", {groups = {armor_feet=7, armor_heal=0, armor_use=100}})

-- Redefinir resistencia dos escudos
minetest.override_item("shields:shield_wood", {groups = {armor_shield=5, armor_heal=0, armor_use=50}})
minetest.override_item("shields:shield_enhanced_wood", {groups = {armor_shield=7, armor_heal=0, armor_use=100}})
minetest.override_item("shields:shield_steel", {groups = {armor_shield=9, armor_heal=0, armor_use=170}})

-- Remover receitas indesejadas
-- Armadura de cacto
minetest.clear_craft({output = '3d_armor:helmet_cactus'})
minetest.clear_craft({output = '3d_armor:chestplate_cactus'})
minetest.clear_craft({output = '3d_armor:leggings_cactus'})
minetest.clear_craft({output = '3d_armor:boots_cactus'})
minetest.clear_craft({output = 'shields:shield_cactus'})
minetest.clear_craft({output = 'shields:shield_enhanced_cactus'})
-- Armadura de bronze
minetest.clear_craft({output = '3d_armor:helmet_bronze'})
minetest.clear_craft({output = '3d_armor:chestplate_bronze'})
minetest.clear_craft({output = '3d_armor:leggings_bronze'})
minetest.clear_craft({output = '3d_armor:boots_bronze'})
minetest.clear_craft({output = 'shields:shield_bronze'})
-- Armadura de ouro
minetest.clear_craft({output = '3d_armor:helmet_gold'})
minetest.clear_craft({output = '3d_armor:chestplate_gold'})
minetest.clear_craft({output = '3d_armor:leggings_gold'})
minetest.clear_craft({output = '3d_armor:boots_gold'})
minetest.clear_craft({output = 'shields:shield_gold'})
-- Armadura de diamante
minetest.clear_craft({output = '3d_armor:helmet_diamond'})
minetest.clear_craft({output = '3d_armor:chestplate_diamond'})
minetest.clear_craft({output = '3d_armor:leggings_diamond'})
minetest.clear_craft({output = '3d_armor:boots_diamond'})
minetest.clear_craft({output = 'shields:shield_diamond'})
