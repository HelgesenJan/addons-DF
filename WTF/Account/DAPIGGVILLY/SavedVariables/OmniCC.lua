
OmniCCDB = {
	["profileKeys"] = {
		["Voidtrain - Vashj"] = "Default",
		["Kidneytrain - Ravencrest"] = "Default",
		["Kidneytrain - Vashj"] = "Default",
		["Fdgfssdfsdf - Ravencrest"] = "Default",
		["Voidtrain - Ravencrest"] = "Default",
		["Shocktrain - Ravencrest"] = "Default",
		["Bubbletrain - Ravencrest"] = "Default",
		["Shapetrain - Ravencrest"] = "Default",
		["Dreamtrain - Ravencrest"] = "Default",
		["Bubbletrain - Vashj"] = "Default",
		["Cobratrain - Vashj"] = "Default",
		["Polytrain - Ravencrest"] = "Default",
		["Shapetrain - Vashj"] = "Default",
		["Chaostrain - Ravencrest"] = "Default",
		["Runetrain - Vashj"] = "Default",
		["Runetrain - Ravencrest"] = "Default",
		["Slamtrain - Vashj"] = "Default",
		["Slamtrain - Ravencrest"] = "Default",
		["Knuckletrain - Vashj"] = "Default",
		["Feltrain - Ravencrest"] = "Default",
		["Dadasdsada - Ravencrest"] = "Default",
		["Polytrain - Vashj"] = "Default",
		["Discotrain - Kazzak"] = "Default",
		["Cobratrain - Ravencrest"] = "Default",
		["Feltrain - Vashj"] = "Default",
		["Knuckletrain - Ravencrest"] = "Default",
		["Chaostrain - Vashj"] = "Default",
		["Voidtrain - Kazzak"] = "Default",
		["Shocktrain - Vashj"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.0",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 4,
					["theme"] = "Plater Nameplates Theme",
				}, -- [4]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["soon"] = {
						},
						["seconds"] = {
						},
					},
					["minSize"] = 0.35,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["seconds"] = {
						},
						["soon"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
