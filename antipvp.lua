--
-- Mod Atualizador
--
-- Para mod antipvp
--

-- LBM para remover carpetes do antigo mod antpvp [pode remover apos reset do servidor (4/6/2017)]
minetest.register_lbm({
	name = "atualizador:remover_carpetes_antpvp",
	nodenames = {"antpvp:carpete"},
	action = function(pos, node)
		-- Coloca novo node no lugar
		minetest.set_node(pos, {name="antipvp:placa", param2 = node.param2})
	end,
})

