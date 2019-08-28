--
-- Mod Atualizador
--
-- Para mod default
--

-- Alimentação
minetest.override_item("default:apple", {on_use = minetest.item_eat(1)})

-- Remover Receitas
minetest.clear_craft({output = 'fire:flint_and_steel'})
minetest.clear_craft({output = 'default:meselamp'})

-- Tirar drops
minetest.override_item("default:glass", {drop = ""})
minetest.override_item("default:obsidian_glass", {drop = ""})

-- Ajustar drops das folhas de arvores
minetest.override_item("default:leaves", {drop = {
	max_items = 1,
	items = {
		{
			items = {'default:sapling'},
			rarity = 20
		}
	}
}})
minetest.override_item("default:jungleleaves", {drop = { 
	max_items = 1,
	items = {
		{
			items = {'default:junglesapling'},
			rarity = 20
		}
	}
}})
minetest.override_item("default:pine_needles", {drop = {
	max_items = 1,
	items = {
		{
			items = {'default:pine_sapling'},
			rarity = 20
		}
	}
}})
minetest.override_item("default:acacia_leaves", {drop = {
	max_items = 1,
	items = {
		{
			items = {'default:acacia_sapling'},
			rarity = 20
		}
	}
}})
minetest.override_item("default:aspen_leaves", {drop = {
	max_items = 1,
	items = {
		{
			items = {'default:aspen_sapling'},
			rarity = 20
		}
	}
}})

-- Alterar alcance de fluxo de alguns liquidos
minetest.override_item("default:lava_flowing", {liquid_range = 1})
minetest.override_item("default:water_flowing", {liquid_range = 4})
minetest.override_item("default:river_water_flowing", {liquid_range = 4})

-- Empilhamento de itens
minetest.override_item("default:apple", {stack_max = 20})

-- Ajuste de Receitas

-- Bloco de Tijolinhos 
minetest.clear_craft({output = 'default:brick'})
minetest.register_craft({
	output = 'default:brick',
	recipe = {
		{'default:clay_brick', 'default:clay_brick', 'default:clay_brick'},
		{'default:clay_brick', 'default:clay_brick', 'default:clay_brick'},
		{'default:clay_brick', 'default:clay_brick', 'default:clay_brick'}
	}
})
-- Livro
minetest.clear_craft({output = 'default:book'})
minetest.register_craft({
	output = 'default:book',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'default:paper', 'farming:string', 'default:paper'},
		{'default:paper', 'default:paper', 'default:paper'}
	}
})
-- Papel
minetest.clear_craft({output = 'default:paper'})
minetest.register_craft({
	output = 'default:paper',
	recipe = {
		{'default:papyrus', 'default:papyrus', 'default:papyrus'},
		{'default:papyrus', 'default:cobble', 'default:papyrus'},
		{'default:papyrus', 'default:papyrus', 'default:papyrus'}
	}
})
-- Chave Lisa (chave bruta)
minetest.clear_craft({output = 'default:skeleton_key'})
minetest.register_craft({
	output = 'default:skeleton_key',
	recipe = {
		{'group:stick', 'default:steel_ingot'},
	}
})

-- Reajuste de Ferramentas

-- Picaretas
minetest.override_item("default:pick_wood", {
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:pick_stone", {
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.20}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:pick_steel", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:pick_bronze", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:pick_mese", {
	description = "Picareta de Mese",
	inventory_image = "default_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	}
})
minetest.override_item("default:pick_diamond", {
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	}
})
-- Pas
minetest.override_item("default:shovel_wood", {
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:shovel_stone", {
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=1.80, [2]=1.20, [3]=0.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:shovel_steel", {
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:shovel_bronze", {
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:shovel_mese", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	}
})
minetest.override_item("default:shovel_diamond", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	}
})
-- Machados
minetest.override_item("default:axe_wood", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=2.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:axe_stone", {
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=2.00, [3]=1.50}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})
minetest.override_item("default:axe_steel", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:axe_bronze", {
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:axe_mese", {
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=3},
	}
})
minetest.override_item("default:axe_diamond", {
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	}
})
-- Espadas
minetest.override_item("default:sword_wood", {
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})
minetest.override_item("default:sword_stone", {
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})
minetest.override_item("default:sword_steel", {
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	}
})
minetest.override_item("default:sword_bronze", {
	description = "Espada de Bronze (Dano 5)",
	inventory_image = "default_tool_bronzesword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})
minetest.override_item("default:sword_mese", {
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.override_item("default:sword_diamond", {
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})
-- Adiciona prefixo indicativo de dado nas espadas
minetest.override_item("default:sword_wood", {description=minetest.registered_tools["default:sword_wood"].description.." (Dano 2)"})
minetest.override_item("default:sword_stone", {description=minetest.registered_tools["default:sword_stone"].description.." (Dano 3)"})
minetest.override_item("default:sword_steel", {description=minetest.registered_tools["default:sword_steel"].description.." (Dano 4)"})
minetest.override_item("default:sword_bronze", {description=minetest.registered_tools["default:sword_bronze"].description.." (Dano 5)"})
minetest.override_item("default:sword_mese", {description=minetest.registered_tools["default:sword_mese"].description.." (Dano 6)"})
minetest.override_item("default:sword_diamond", {description=minetest.registered_tools["default:sword_diamond"].description.." (Dano 7)"})

-- Adicionar fome ao cavar um item
local minerios_fome = {}
if minetest.get_modpath("hbhunger") ~= nil then
        minerios_fome.nodes = {
                -- Nodes dos minerios e fome retirada
                ["default:stone_with_diamond"] = 5,
                ["default:stone_with_mese"] = 4,
                ["default:stone_with_gold"] = 3,
                ["default:stone_with_copper"] = 2,
                ["default:stone_with_iron"] = 1,
        }
        minerios_fome.old_node_dig = minetest.node_dig
        function minetest.node_dig(pos, node, digger)
                if minerios_fome.nodes[node.name] then
                        local name = digger:get_player_name()
                        hbhunger.hunger[name] = hbhunger.hunger[name]-minerios_fome.nodes[node.name]
                end
	        return minerios_fome.old_node_dig(pos, node, digger)
        end
end

-- ABM que faz nuvem sumir
minetest.register_abm({
	nodenames = {"default:cloud"},
	interval = 10,
	chance = 4,
	action = function(pos)
		minetest.remove_node(pos)
	end
})


-- Reduz a intensidade de agrupamento de fogo
local limite_fogo = 20
minetest.register_abm{
        label = "reduzir fogo",
	nodenames = {"fire:basic_flame"},
	interval = 5,
	chance = 5,
	action = function(pos)
		local nds = minetest.find_nodes_in_area({x=pos.x-4, y=pos.y-4, z=pos.z-4}, {x=pos.x+4, y=pos.y+4, z=pos.z+4}, {"fire:basic_flame"})
		
		-- Verifica se fogo está sob controle
		if table.maxn(nds) <= limite_fogo then return end
		
		-- Retirar fogo aleatoriamente até ficar sob controle
		while table.maxn(nds) > limite_fogo do
			
			-- Pega um node de fogo aleatorio
			local i = math.random(1, table.maxn(nds)) -- indice aleatorio da coordenada 
			local nd = nds[i]
			minetest.remove_node(nd) -- remove fogo
			-- Remove a coordenada da tabela
			table.remove(nds, i)
		end
		
		
	end,
}

-- Remove o drop de grama seca (mantendo os itens que não são grama, como sementes)
for _,grass_name in ipairs({"grass", "dry_grass"}) do
	for i = 1, 5 do
	
		local drop = minetest.registered_items["default:"..grass_name.."_"..i].drop
	
	
		if drop then 
	
			-- Caso tenha uma tabela de itens
			if drop.items then
	
				-- Repassa todos os drops exeto o de grama padrão (default:grass_1)
				local n_items = {}
				for _,item in ipairs(drop.items) do
		
					if not string.find(item.items[1], "default:"..grass_name.."_") then
						table.insert(n_items, item)
					end
				end
				drop.items = n_items
	
				minetest.override_item("default:"..grass_name.."_"..i, {drop = drop})
	
			-- Caso só tenha uma string do item
			elseif string.find(drop, "default:"..grass_name.."_") then
				minetest.override_item("default:"..grass_name.."_"..i, {drop = ""})
			end
	
		-- Caso o valor seja torna drop vazio para evitar drop normal
		else
			minetest.override_item("default:"..grass_name.."_"..i, {drop = ""})
		end
	end
end

