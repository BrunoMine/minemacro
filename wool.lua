--
-- Mod Atualizador
--
-- Para mod wool
--

-- Tabela de tintas do mod wool original
local dyes = {
	{"white",      "White",      "basecolor_white"},
	{"grey",       "Grey",       "basecolor_grey"},
	{"black",      "Black",      "basecolor_black"},
	{"red",        "Red",        "basecolor_red"},
	{"yellow",     "Yellow",     "basecolor_yellow"},
	{"green",      "Green",      "basecolor_green"},
	{"cyan",       "Cyan",       "basecolor_cyan"},
	{"blue",       "Blue",       "basecolor_blue"},
	{"magenta",    "Magenta",    "basecolor_magenta"},
	{"orange",     "Orange",     "excolor_orange"},
	{"violet",     "Violet",     "excolor_violet"},
	{"brown",      "Brown",      "unicolor_dark_orange"},
	{"pink",       "Pink",       "unicolor_light_red"},
	{"dark_grey",  "Dark Grey",  "unicolor_darkgrey"},
	{"dark_green", "Dark Green", "unicolor_dark_green"},
}


-- Receitas
minetest.clear_craft({output = 'wool:white'}) -- Remove as recetias de tecido branco
for _, row in ipairs(dyes) do

	local name = row[1]
	if name ~= "white" then
		
		-- Remove a receita antiga
		minetest.clear_craft({output = 'wool:'..name})
		
		-- Cria receitas
		minetest.register_craft({
				output = 'wool:'..name,
				recipe = {
	     				{'default:paper','dye:'..name,'default:paper'},
					{'default:paper','wool:white','default:paper'},
					{'default:paper','default:paper','default:paper'},
			}
	
		})
		minetest.register_craft({
				output = 'wool:white',
				recipe = {
	     				{'default:paper','dye:white','default:paper'},
					{'default:paper','wool:'..name,'default:paper'},
					{'default:paper','default:paper','default:paper'},
			}
	
		})
	end
end
