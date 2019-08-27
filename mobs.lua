--
-- Mod Atualizador
--
-- Para mod mobs
--

-- Mobs Redo
if mobs and mobs.mod == "redo" then

	-- Remove receitas de itens
	-- Etiqueta
	minetest.clear_craft({output = 'mobs:nametag'})
	-- Laço magico
	-- minetest.clear_craft({output = 'mobs:magic_lasso'})
	-- Rede de pegar mobs
	minetest.clear_craft({output = 'mobs:net'})
	-- Sela?
	minetest.clear_craft({output = 'mobs:saddle'})
	-- Runa protetora?
	minetest.clear_craft({output = 'mobs:protector'})
	
	-- Mudando receitas
	-- Tesoura
	minetest.clear_craft({output = 'mobs:shears'})
	minetest.register_craft({
		output = 'mobs:shears',
		recipe = {
			{'', 'default:steel_ingot', ''},
			{'default:steel_ingot', 'default:steel_ingot', 'group:stick'},
			{'', 'group:stick', ''},
		}
	})
	minetest.register_craft({
		output = 'mobs:shears',
		recipe = {
			{'', 'default:steel_ingot', ''},
			{'group:stick', 'default:steel_ingot', 'default:steel_ingot'},
			{'', 'group:stick', ''},
		}
	})
	
end
