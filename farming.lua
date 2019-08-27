--
-- Mod Atualizador
--
-- Para mod farming
--

-- Alimentação
minetest.override_item("farming:bread", {on_use = minetest.item_eat(3)})

-- Empilhamento de itens
minetest.override_item("farming:bread", {stack_max = 10})

-- Ajustando Enxadas
minetest.override_item("farming:hoe_wood", {max_uses = 10})
minetest.override_item("farming:hoe_stone", {max_uses = 20})
minetest.override_item("farming:hoe_steel", {max_uses = 100})
minetest.override_item("farming:hoe_bronze", {max_uses = 220})
minetest.override_item("farming:hoe_mese", {max_uses = 350})
minetest.override_item("farming:hoe_diamond", {max_uses = 500})

