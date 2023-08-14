size = {1920, 1200}
-----------------
-- VARIABLES
-----------------
defineProperty("capt_subpanel", globalPropertyi("sim/an148/capt_subpanel"))
defineProperty("dc_bus", globalPropertyi("sim/an148/dc_bus"))

-----------------
local ses_yellow_light = false
-- local mfi_mnemo_eng = 0
-- local mfi_mnemo_fuel = 0
-- local mfi_mnemo_conf = 0
-- local mfi_mnemo_air = 0
-- local mfi_mnemo_elec = 0
-- local mfi_mnemo_hydr = 0
-- local mfi_mnemo_sys = 1
-- local mfi_mnemo_stat = 0
-- local mfi_mnemo_tcas = 0
-----------------
-- IMAGES
-----------------
defineProperty("background", loadImage("capt_panel_new.png"))
defineProperty("rotary_small", loadImage("rotary_small.png"))
defineProperty("yellow_light", loadImage("yellow_light.png"))

-- local switch_sound = loadSample('Custom Sounds/metal_switch.wav')
-- local switch_plastic = loadSample('Custom Sounds/plastic_switch.wav')
local switch_push = false
-- local vor1_btn = 1
-- local vor2_btn = 1
-- local adf1_btn = 0
-- local adf2_btn = 0

local function map(x, in_min, in_max, out_min, out_max)
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min
end

components = {
------------------------------------------------------------------------------------------------------------------------------------------
--background
texture{ 
	image = get(background),
	position = {0, 0, size[1], size[2]},
},

texture{ 
	image = get(rotary_small),
	position = {595, 608, 50, 50},
},
-- texture{ 
-- 	image = get(rotary_small),
-- 	position = {329, 391, 50, 50},
-- },
-- texture{ --СЭС
-- 	image = get(yellow_light),
-- 	position = {1350, 1049, 39, 8},
-- 	visible = function()
-- 		return get(dc_bus) == 1
-- 	end,
-- },
------------------------------------------------------------------------------------------------------------------------------------------
}
