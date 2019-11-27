AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "Pringles Skirt Lights Amber"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/int_5led.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
}

COMPONENT.Meta = {
	int_led = {
		AngleOffset = 0,
		W = 3.8,
		H = 3.8,
		WMult = 1.25,
		Sprite = "sprites/emv/tdm_small_interior",
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( -1.4, 0, 0.58 ), Angle( 0, 90, 0 ), "int_led" },
	[2] = { Vector( -1.4, 3.72, 0.58 ), Angle( 0, 90, 0 ), "int_led" },
	[3] = { Vector( -1.4, -3.72, 0.58 ), Angle( 0, 90, 0 ), "int_led" },
	[4] = { Vector( -1.4, 7.44, 0.58 ), Angle( 0, 90, 0 ), "int_led" },
	[5] = { Vector( -1.4, -7.44, 0.58 ), Angle( 0, 90, 0 ), "int_led" },

}

COMPONENT.Sections = {
	["auto_int5led"] = {
		[1] = { { 1, "_1" }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" }, },
		[2] = { { 1, "_2" }, { 2, "_2" }, { 3, "_2" }, { 4, "_2" }, { 5, "_2" }, },
		[3] = { { 1, "_3" }, { 2, "_3" }, { 3, "_3" }, { 4, "_3" }, { 5, "_3" }, },
		[4] = { { 1, "_3" }, { 2, "_3" }, { 3, "_3" }, { 4, "_3" }, { 5, "_3" }, },

		[5] = { { 1, "_1" } },
		[6] = { { 1, "_1" }, { 2, "_1" }, { 3, "_1" } },
		[7] = { { 1, "_1" }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" }, },
		[8] = { { 1, "_2" }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" }, },
		[9] = { { 1, "_2" }, { 2, "_2" }, { 3, "_2" }, { 4, "_1" }, { 5, "_1" }, },
		[10] = { { 1, "_2" }, { 2, "_2" }, { 3, "_2" }, { 4, "_2" }, { 5, "_2" }, },
		[11] = { { 2, "_2" }, { 3, "_2" }, { 4, "_2" }, { 5, "_2" }, },
		[12] = { { 4, "_2" }, { 5, "_2" }, },

		[13] = { { 5, "_1" }, { 3, "_1" }, { 1, "_1" } },
		[14] = { { 4, "_2" }, { 2, "_2" }, { 1, "_2" } },

		[15] = { { 5, "_3" }, { 3, "_3" }, { 1, "_3" }, { 2, "_2" }, { 4, "_2" }, },
		[16] = { { 5, "_1" }, { 3, "_1" }, { 1, "_3" }, { 2, "_3" }, { 4, "_3" }, },
	},
	["auto_int5cruise"] = {
		[1] = { { 5, "_1" }, { 4, "_2" } }
	},
	--_________________________________________________________________________
	--|-----------------------------------------------------------------------|
	--|-------------------\\ PRINGLES CUSTOM CODE // -------------------------|
	--|-----------------------------------------------------------------------|
	--|_______________________________________________________________________|

	["skirt_lights_C2"] = {
		[1] = { { 4 , CW } , {5 , CW} },
		[2] = { { 2 , A } , {1 , A}, { 3 , A }, }
	},
	["skirt_lights_C1"] = {
		[1] = {
			{4,CW}, {2,CW}, {1,CW}, {3,CW}, {5,CW}
		},
		[2] = {
			{4,A}, {2,A}, {1,A}, {3,A}, {5,A}
		},
	},
	["skirt_lights_C3"] = {
		-- Left Right Lighting
		[1] = { { 4 , A }, { 2 , A } },
		[2] = { { 2 , A }, { 1 , A } },
		[3] = { { 1 , A }, { 3 , A } },
		[4] = { { 3 , A }, { 5 , A } },
		[5] = { { 5 , A }}, 
		-- 
		[6] = { { 5 , CW } , { 3 , CW } },
		[7] = { { 3 , CW } , { 1 , CW } },
		[8] = { { 1 , CW } , { 2 , CW } },
		[9] = { { 2 , CW } , { 4 , CW } },
		[10] = { { 4 , CW }},
		-- END L/R
		-- C1 
		[11] = {
			{4,CW}, {2,CW}, {1,CW}, {3,CW}, {5,CW}
		},
		[12] = {
			{4,A}, {2,A}, {1,A}, {3,A}, {5,A}
		},
		-- C2
		[13] = {
			 { 4 , CW } , {5 , CW} 
		},
		
		[14] = {
			 { 2 , A } , {1 , A}, { 3 , A }, 
		}, 

	}

}

COMPONENT.Patterns = {
	["auto_int5led"] = {
		["slide"] = { 5, 6, 7, 8, 9, 10, 11, 12, 0, 0, 0, 0 },
		["code3"] = { 
			5, 6, 7, 8, 9, 10, 11, 12,
			5, 6, 7, 8, 9, 10, 11, 12,
			5, 6, 7, 8, 9, 10, 11, 12,
			1, 0, 2, 0, 3, 0, 1, 0, 2, 0, 3, 0, 1, 0, 2, 0, 3, 0,
			13, 0, 13, 0, 14, 0, 14, 0, 13, 0, 13, 0, 14, 0, 14, 0, 13, 0, 13, 0, 14, 0, 14, 0, 
			13, 13, 13, 14, 14, 14, 13, 13, 13, 14, 14, 14, 13, 13, 14, 14, 13, 13, 14, 14, 13, 13, 14, 14,
			13, 14, 13, 14, 13, 14, 13, 14, 13, 14, 13, 14, 13, 14, 13, 14,  13, 14, 
		},
		["code1"] = { 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 2, 0, 2, 0, 2, 2, 2, 2, 0, 0, 0 },
		["alert"] = { 15, 16 },
	},
	["auto_int5cruise"] = {
		["cruise"] = { 1 },
		["off"] = { 0 },
	},
	-----PRINGLES CODE ----------
	["skirt_lights_C2"] = {
		["CODE2"] = { 1,1,0,1,1,0,2,2,0,2,2}
	},
	["skirt_lights_C1"] = {
		["CODE1"] = { 1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,2,2,0,0,1,1,0,0,2,2,0,0,1,1,0,0,2,2,0,0,1,1,0,0,2,2 }
	},
	["skirt_lights_C3"] = {
		["CODE3"] = { 1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10
		--C1
		,11,11,11,11,11,11,12,12,12,12,12,12,11,11,11,11,11,11,12,12,12,12,12,12,11,11,11,11,11,11,12,12,12,12,12,12,0,0,11,11,0,0,12,12,0,0,11,11,0,0,12,12,0,0,11,11,0,0,12,12,
		--C2
		13,13,0,13,13,0,14,14,0,14,14,13,13,0,13,13,0,14,14,0,14,14,13,13,0,13,13,0,14,14,0,14,14 },
	},

}

COMPONENT.TrafficDisconnect = { 
	["auto_int5cruise"] = {
		4, 5
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["skirt_lights_C1"] = "CODE1", 
		},
		M2 = { 
			["skirt_lights_C2"] = "CODE2"
		},
		M3 = { 
			 ["skirt_lights_C3"] = "CODE3"
		},
		ALERT = { ["auto_int5led"] = "alert" 
		}
	},
	Auxiliary = {
		C = { ["auto_int5cruise"] = "cruise" }	
	},
	Illumination = {
		T = {
			{ 4, W }, { 5, W }
		},
		F = {
			{ 1, W }, { 2, W }, { 3, W }, { 4, W }, { 5, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )