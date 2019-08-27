--
-- Mod Atualizador
--
-- Para mod sfinv
--


-- Altera a aba de craftação do inventario de sobrevivencia
sfinv.override_page("sfinv:crafting", {
	title = "Artesanato",
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, [[
				label[2,0.5;Micro Craftador]
				list[current_player;craft;2,1;2,1;1]
				list[current_player;craft;2,2;2,1;4]
				list[current_player;craftpreview;4.95,1.5;1,1;]
				image[3.95,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]
				listring[current_player;main]
				listring[current_player;craft]
				image[0,4.75;1,1;gui_hb_bg.png]
				image[1,4.75;1,1;gui_hb_bg.png]
				image[2,4.75;1,1;gui_hb_bg.png]
				image[3,4.75;1,1;gui_hb_bg.png]
				image[4,4.75;1,1;gui_hb_bg.png]
				image[5,4.75;1,1;gui_hb_bg.png]
				image[6,4.75;1,1;gui_hb_bg.png]
				image[7,4.75;1,1;gui_hb_bg.png]
			]], true)
	end
})

