--
-- Mod Atualizador
--
-- Para modpack mesecons
--

-- FPGA
minetest.clear_craft({output = 'mesecons_fpga:fpga0000'})
minetest.clear_craft({output = 'mesecons_fpga:programmer'})

-- Planta que pisca
minetest.clear_craft({output = 'mesecons_blinkyplant:blinky_plant_off'})

-- Detectores
minetest.clear_craft({output = 'mesecons_detector:object_detector_off'})
minetest.clear_craft({output = 'mesecons_detector:node_detector_off'})

-- Botao
minetest.clear_craft({output = 'mesecons_button:button_off'})

-- Delayer (temporizador)
minetest.clear_craft({output = 'mesecons_delayer:delayer_off_1'})

-- Portas Lógicas
minetest.clear_craft({output = 'mesecons_gates:nand_off'})
minetest.clear_craft({output = 'mesecons_gates:diode_off'})
minetest.clear_craft({output = 'mesecons_gates:xor_off'})
minetest.clear_craft({output = 'mesecons_gates:nor_off'})
minetest.clear_craft({output = 'mesecons_gates:not_off'})

-- Micro Controlador
minetest.clear_craft({output = 'mesecons_microcontroller:microcontroller0000'})

-- Controlador Lua
minetest.clear_craft({output = 'mesecons_luacontroller:luacontroller0000'})

-- Switch
minetest.clear_craft({output = 'mesecons_switch:mesecon_switch_off'})

-- Lavanca
minetest.clear_craft({output = 'mesecons_walllever:wall_lever_off'})

-- Placas de pressao
minetest.clear_craft({output = 'mesecons_pressureplates:pressure_plate_stone_off'})
minetest.clear_craft({output = 'mesecons_pressureplates:pressure_plate_wood_off'})

-- Tocha
minetest.clear_craft({output = 'mesecons_torch:mesecon_torch_on'})

-- Planta de força
minetest.clear_craft({output = 'mesecons_powerplant:power_plant'})

-- Turbina de agua
minetest.clear_craft({output = 'mesecons_hydroturbine:hydro_turbine_off'})
