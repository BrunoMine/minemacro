--
-- Mod Atualizador
--
-- Para mod tnt
--

-- Arquivos de audio estão sendo carregados para explosões do explosivo

local b = true

local z = function()
	b = true
end

-- Metodo de explosao original
local old_boom = tnt.boom

-- Evita explosões em massa que travam o servidor
tnt.boom = function(pos, def, name)
	
	-- Pega o nome do explosivo
	if not name then
		local node = minetest.get_node(pos)
		name = string.gsub(node.name, "_burning", "")
		if minetest.get_node_group(name, "tnt") == 0 then
			return
		end
	end
	
	-- Verifica se o explosivo ainda esta la
	local node = minetest.get_node(pos)
	if string.gsub(node.name, "_burning", "") ~= name then
		return
	end
	
	if b then
		b = false
		minetest.after(1, z)
		return old_boom(pos, def)
	end
	
	-- Tenta explodir novamente apos 2 segundos
	return minetest.after(2, tnt.boom, pos, def, name)
end

-- Limpar explosivos acessos
minetest.register_abm({
	nodenames = {"tnt:tnt_burning"},
	interval = 15,
	chance = 4,
	action = function(pos)
		minetest.after(15, minetest.remove_node, {x=pos.x,y=pos.y,z=pos.z})
	end
})

-- Receita de Explosivo TNT
minetest.clear_craft({output = 'tnt:tnt'}) -- Remove a padrão
minetest.register_craft({ 
	output = "tnt:tnt",
	recipe = {
		{"farming:cotton", "tnt:gunpowder", "farming:cotton"},
		{"tnt:gunpowder", "tnt:gunpowder", "tnt:gunpowder"},
		{"default:paper", "tnt:gunpowder", "default:paper"}
	}
})

-- Receita de Polvora
minetest.clear_craft({output = 'tnt:gunpowder'}) -- Remove a padrão
minetest.register_craft({ 
	output = "tnt:gunpowder",
	recipe = {
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "macronodes:enxofre", "default:coal_lump"},
		{"default:junglewood", "macronodes:enxofre", "default:junglewood"}
	}
})
