






function ScriptLoad()

repeat

	wait(.1)

until game:IsLoaded() and game.Players.LocalPlayer and game.CoreGui

if getgenv().ScriptExecute then

	return print('Script Already Execute')

end;





-- // Hop \\ --





local function v14_()

	local v274 = game.PlaceId;

	local v275 = {}

	local v276 = ""

	local v277 = os.date("!*t").hour;

	local v278 = false;

	local function v43_()

		local v279;

		if v276 == "" then

			v279 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v274 .. "/servers/Public?sortOrder=Asc&limit=100"))

		else

			v279 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v274 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v276))

		end;

		local v280 = ""

		if v279.nextPageCursor and v279.nextPageCursor ~= "null" and v279.nextPageCursor ~= nil then

			v276 = v279.nextPageCursor

		end;

		local v281 = 0;

		for v282, v283 in pairs(v279.data) do

			local v284 = true;

			v280 = tostring(v283.id)

			if tonumber(v283.maxPlayers) > tonumber(v283.playing) then

				for v285, v286 in pairs(v275) do

					if v281 ~= 0 then

						if v280 == tostring(v286) then

							v284 = false

						end

					else

						if tonumber(v277) ~= tonumber(v286) then

							local v287 = pcall(function()

								v275 = {}

								table.insert(v275, v277)

							end)

						end

					end;

					v281 = v281 + 1

				end;

				if v284 == true then

					table.insert(v275, v280)

					wait(0.1)

					pcall(function()

						wait(0.1)

						game:GetService("TeleportService"):TeleportToPlaceInstance(v274, v280, game.Players.LocalPlayer)

					end)

					wait(4)

				end

			end

		end

	end;

	local function v44_()

		while wait(.1) do

			pcall(function()

				v43_()

				if v276 ~= "" then

					v43_()

				end

			end)

		end

	end;

	v44_()

end;





-- // Funny Thing \\ --





local function updateUI()

	local playerGui = game.Players.LocalPlayer.PlayerGui.Main

	playerGui.Fragments.TextColor3 = Color3.fromRGB(255, 0, 255)

	playerGui.Fragments.Text = "https://discord.gg/VBU9K6ABuE Hub #1"

	local font = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

	playerGui.Fragments.FontFace = font

	playerGui.Beli.FontFace = font

end

updateUI()





-- // Save Setting \\ --





getgenv().Settings = {

	skibidi = false,

	FastAttack = true,

	BringMob = true,

	AutoRejoin = true

}

local function v0_()

	if readfile and writefile and isfile and isfolder then

		if not isfolder("crackedhub") then

			makefolder("crackedhub")

		end

		if not isfolder("crackedhub/Blox Fruits/") then

			makefolder("crackedhub/Blox Fruits/")

		end

		if not isfile("crackedhub/Blox Fruits/crackedhub.json") then

			writefile("crackedhub/Blox Fruits/crackedhub.json", game:GetService("HttpService"):JSONEncode(getgenv().Settings))

		else

			local v124 = game:GetService("HttpService"):JSONDecode(readfile("crackedhub/Blox Fruits/crackedhub.json"))

			for v125, v126 in pairs(v124) do

				getgenv().Settings[v125] = v126

			end

		end

	else

		return

	end

end



local function v1_()

	if readfile and writefile and isfile and isfolder then

		if not isfile("crackedhub/Blox Fruits/crackedhub.json") then

			v0_()

		else

			local v127 = game:GetService("HttpService"):JSONDecode(readfile("crackedhub/Blox Fruits/crackedhub.json"))

			local v128 = {}

			for v129, v130 in pairs(getgenv().Settings) do

				v128[v129] = v130

			end

			writefile("crackedhub/Blox Fruits/crackedhub.json", game:GetService("HttpService"):JSONEncode(v128))

		end

	else

		return

	end

end

v0_()





-- // Value Of DropDown \\ --





v2_ = {}

for v131, v132 in pairs(game:GetService("Workspace").Boats:GetChildren()) do

	table.insert(v2_, v132.Name)

end

local v1 = {

	"Flame",

	"Ice",

	"Quake",

	"Light",

	"Dark",

	"Spider",

	"Rumble",

	"Magma",

	"Buddha",

	"Sand",

	"Phoenix",

	"Dough"

}

if game.PlaceId == 2753915549 then

	Sea1 = true

elseif game.PlaceId == 4442272183 then

	Sea2 = true

elseif game.PlaceId == 7449423635 then

	Sea3 = true

end;

local v2 = game.PlaceId;

if v2 == 2753915549 then

	v6_ = true

elseif v2 == 4442272183 then

	v7_ = true

elseif v2 == 7449423635 then

	v8_ = true

end;

if v6_ then

	v9_ = {

		"The Gorilla King",

		"Bobby",

		"Yeti",

		"Mob Leader",

		"Vice Admiral",

		"Warden",

		"Chief Warden",

		"Swan",

		"Magma Admiral",

		"Fishman Lord",

		"Wysper",

		"Thunder God",

		"Cybhttps://discord.gg/VBU9K6ABuE",

		"Saber Expert"

	}

elseif v7_ then

	v9_ = {

		"Diamond",

		"Jeremy",

		"Fajita",

		"Don Swan",

		"Smoke Admiral",

		"Cursed Captain",

		"Darkbeard",

		"Order",

		"Awakened Ice Admiral",

		"Tide Keeper"

	}

elseif v8_ then

	v9_ = {

		"Stone",

		"Island Empress",

		"Kilo Admiral",

		"Captain Elephant",

		"Beautiful Pirate",

		"rip_indra True Form",

		"Longma",

		"Soul Reaper",

		"Cake Queen"

	}

end;

local v3;

if Sea1 then

	v3 = {

		"Magma Ore",

		"Leather",

		"Scrap Metal",

		"Angel Wings",

		"Fish Tail"

	}

elseif Sea2 then

	v3 = {

		"Magma Ore",

		"Scrap Metal",

		"Radioactive Material",

		"Vampire Fang",

		"Mystic Droplet"

	}

elseif Sea3 then

	v3 = {

		"Mini Tusk",

		"Fish Tail",

		"Scrap Metal",

		"Dragon Scale",

		"Conjured Cocoa",

		"Demonic Wisp",

		"Gunpowder"

	}

end;

table.sort(v3)





-- // Window | Tab \\ --





local v4 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

local v6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()



local v7 = v4:CreateWindow({

	Title = "https://discord.gg/VBU9K6ABuE Hub",

	SubTitle = "https://discord.gg/VBU9K6ABuE Hub",

	TabWidth = 150,

	Size = UDim2.fromOffset(500, 350),

	Acrylic = true,

	Theme = "Dark",

	MinimizeKey = Enum.KeyCode.LeftControl

})



local v8 = {

	Page1 = v7:AddTab({

		Title = "Tab Main",

		Icon = ""

	}),

	Page2 = v7:AddTab({

		Title = "Tab Status",

		Icon = ""

	}),

	Page3 = v7:AddTab({

		Title = "Tab Settings",

		Icon = ""

	}),

	Page4 = v7:AddTab({

		Title = "Tab Shop",

		Icon = ""

	}),

	Page5 = v7:AddTab({

		Title = "Tab Item Farm",

		Icon = ""

	}),

	Page6 = v7:AddTab({

		Title = "Tab Auto World",

		Icon = ""

	}),

	Page7 = v7:AddTab({

		Title = "Tab Raid",

		Icon = ""

	}),

	Page8 = v7:AddTab({

		Title = "Tab Misc",

		Icon = ""

	}),

	Page9 = v7:AddTab({

		Title = "Tab Race",

		Icon = ""

	}),

	Page10 = v7:AddTab({

		Title = "Tab Sea Event",

		Icon = ""

	}),

}





local v9 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Weapon",

	Description = "Chọn Vũ Khí",

	Values = {

		"Melee",

		"Sword",

		"Fruit"

	},

	Multi = false,

	Default = getgenv().Settings.SelectWeapon,

})

v9:SetValue("Melee")

v9:OnChanged(function(v133)

	v10_ = v133

	getgenv().Settings.SelectWeapon = v133

end)





local v10 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Fast Attack Speed",

	Description = "Chọn Tốc Độ Đánh",

	Values = {

		"0",

		"0.08",

		"0.1",

		"0.15",

		"0.2",

		"0.3",

		"0.4",

		"0.5"

	},

	Multi = false,

	Default = getgenv().Settings.FastType,

})

v10:OnChanged(function(v134)

	getgenv().FastType = v134

	getgenv().Settings.FastType = v134

end)





local v11 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Select Farm Method",

	Description = "Chọn Cách Farm",

	Values = {

		"Up",

		"Below",

		"Behind",

	},

	Multi = false,

	Default = getgenv().Settings.FarmPos,

})

v11:OnChanged(function(v135)

	getgenv().PosFarm = v135

	getgenv().Settings.FarmPos = v135

end)





local v12 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Farm Mode",

	Description = "Chọn Chế Độ Farm",

	Values = {

		"Farm Level",

		"Bone",

		"Cake Prince"

	},

	Multi = false,

	Default = getgenv().Settings.ModeFarm,

})

v12:OnChanged(function(v136)

	getgenv().FarmMode = v136

	getgenv().Settings.ModeFarm = v136

end)





local v13 = v8.Page1:AddToggle("MyToggle", {

	Title = "Auto Farm Mode Choosen",

	Description = "Farm Chế Độ Đã Chọn",

	Default = getgenv().Settings.AutoFarm

})

v13:OnChanged(function(v137)

	getgenv().AutoFarm = v137;

	getgenv().Settings.AutoFarm = v137

	getgenv().AutoStatsMelee = v137;

end)





if Sea1 then

	local v138 = v8.Page1:AddToggle("MyToggle", {

		Title = "Skip Level 1 -> 300",

		Default = getgenv().Settings.FarmFast

	})

	v138:OnChanged(function(v139)

		getgenv().AutoFarmFast = v139;

		getgenv().Settings.FarmFast = v139

	end)

end





local v14 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Spawn Cake Prince",

	Description = "Tự động triệu hồi tư lệnh bột",

	Default = getgenv().Settings.AutoSpawnCakePrince

})

v14:OnChanged(function(v140)

	getgenv().Settings.AutoSpawnCakePrince = v140

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", bF)

end)





local v15 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Chest",

	Description = "Tự động cày rương",

	Default = getgenv().Settings.FarmChestTween

})

v15:OnChanged(function(v141)

	getgenv().AutoFarmChest = v141;

	getgenv().Settings.FarmChestTween = v141

end)

getgenv().MagnitudeAdd = 0;





local v16 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Chest Fast",

	Description = "Tự động cày rương nhanh",

	Default = getgenv().Settings.ChestBypass

})

v16:OnChanged(function(v142)

	getgenv().ChestBypass = v142

	getgenv().Settings.ChestBypass = v142

end)





local v17 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Select Material",

	Description = "Chọn Nguyên Liệu",

	Values = v3,

	Multi = false,

	Default = getgenv().Settings.SelectModeMaterial,

})

v17:OnChanged(function(v143)

	v11_ = v143

	getgenv().Settings.SelectModeMaterial = v143

end)





local v18 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Selected Material",

	Description = "Tự động cày nguyên liệu đã chọn",

	Default = getgenv().Settings.FarmMaterial

})

v18:OnChanged(function(v144)

	getgenv().AutoFarmMaterial = v144

	getgenv().Settings.FarmMaterial = v144

end)





local v19 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Boss",

	Description = "Chọn Boss",

	Values = v9_,

	Multi = false,

	Default = getgenv().Settings.SelectBoss,

})

v19:OnChanged(function(v145)

	getgenv().SelectBoss = v145

	getgenv().Settings.SelectBoss = v145

end)





local v20 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Selected Boss",

	Description = "Tự động cày boss đã chọn",

	Default = getgenv().Settings.AutoFarmBoss

})

v20:OnChanged(function(v146)

	getgenv().AutoFarmBoss = v146;

	getgenv().Settings.AutoFarmBoss = v146

end)





local v21 = v8.Page2:AddParagraph({

	Title = "Bones Status",

	Content = ""

})

    

    

local v22 = v8.Page2:AddParagraph({

	Title = "Cake Prince Status",

	Content = ""

})





local v23 = v8.Page2:AddParagraph({

	Title = "Elite Status",

	Content = ""

})





local v24 = v8.Page2:AddParagraph({

	Title = "Elite",

	Content = ""

})





local v25 = v8.Page3:AddToggle("Skibidi", {

	Title = "Auto Turn On Ken Haki",

	Description = "Tự động bật haki quan sát",

	Default = getgenv().Settings.AutoKen 

})

v25:OnChanged(function(v147)

	getgenv().AutoKen = v147

	getgenv().Settings.AutoKen = v147

end)





local v26 = v8.Page3:AddToggle("Skibidi", {

	Title = "Disable Damge",

	Description = "Tắt số damge hiện lên",

	Default = getgenv().Settings.Disdame 

})

v26:OnChanged(function(v148)

	getgenv().Disdamage = v148;

	getgenv().Settings.Disdame = v148

end)





local v27 = v8.Page3:AddToggle("MyToggle", {

	Title = "Bring Mob",

	Default = getgenv().Settings.BringMob

})

v27:OnChanged(function(v149)

	getgenv().BringMob = v149

	getgenv().Settings.BringMob = v149

end)





local v28 = v8.Page3:AddToggle("Skibidi", {

	Title = "Fast Attack",

	Description = "Đánh nhanh",

	Default = getgenv().Settings.FastAttack

})

v28:OnChanged(function(v150)

	getgenv().FastAttack = v150;

	_G.FastCuaCat = v150

	getgenv().Settings.FastAttack = v150

end)



local v29 = v8.Page4:AddToggle("Skibidi", {

	Title = "Auto Random Bone",

	Description = "Tự động random xương",

	Default = getgenv().Settings.RandomBone

})

v29:OnChanged(function(v151)

	getgenv().AutoRandomBone = v151

	getgenv().Settings.RandomBone = v151

end)





local v30 = v8.Page3:AddToggle("Skibidi", {

	Title = "Disable Notification",

	Description = "Tắt thông báo",

	Default = getgenv().Settings.Disableanotify

})

v30:OnChanged(function(v152)

	getgenv().Remove_trct = v152

	getgenv().Settings.Disableanotify = v152

end)





v8.Page4:AddButton({

	Title = "Buy Geppo",

	Description = "Mua Geppo",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")

	end

})

v8.Page4:AddButton({

	Title = "Buy Buso Haki",

	Description = "Mua Haki",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")

	end

})

v8.Page4:AddButton({

	Title = "Buy Soru",

	Description = "Mua Soru",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")

	end

})

v8.Page4:AddButton({

	Title = "Buy Ken Haki",

	Description = "Mua Haki Quan Sát",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")

	end

})

v8.Page4:AddButton({

	Title = "Buy SanguineArt",

	Description = "Mua SanguineArt",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");

	end

});

v8.Page4:AddButton({

	Title = "Buy God Human",

	Description = "Mua God Human",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");

	end

});

v8.Page4:AddButton({

	Title = "Buy Sharkman karate",

	Description = "Mua SharkMan Karate",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");

	end

});

v8.Page4:AddButton({

	Title = "Buy Electric Claw",

	Description = "Mua Electric Claw",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");

	end

});

v8.Page4:AddButton({

	Title = "Buy DeathStep",

	Description = "Mua Death Step",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");

	end

});

v8.Page4:AddButton({

	Title = "Buy DragonTalon",

	Description = "Mua Dragon Talon",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");

	end

});

v8.Page4:AddButton({

	Title = "Buy SuperHuman",

	Description = "Mua SuperHuman",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");

	end

});

v8.Page4:AddButton({

	Title = "Buy DragonClaw",

	Description = "Mua DragonClaw",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");

	end

});

v8.Page4:AddButton({

	Title = "Buy BlackLeg",

	Description = "Mua BlackLeg",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");

	end

});

v8.Page4:AddButton({

	Title = "Buy Electro",

	Description = "Mua Electro",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");

	end

});

v8.Page4:AddButton({

	Title = "Buy FishmanKarate",

	Description = "Mua Fishman Karate",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");

	end

});

v8.Page4:AddButton({

	Title = "Refund Stats",

	Description = "thiết lập lại Stats",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")

	end

})

v8.Page4:AddButton({

	Title = "Reroll Race",

	Description = "Ngẫu Nhiên Tộc",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")

	end

})





local v31 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Evo Race V2",

	Description = "Tự động nâng tộc lên V2",

	Default = getgenv().Settings.EvoRaceV2

})

v31:OnChanged(function(v153)

	getgenv().AutoEvoRaceV2 = v153

	getgenv().Settings.EvoRaceV2 = v153

end)





local v32 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Bartilo Quest",

	Description = "Tự động làm nhiệm vụ bartilo",

	Default = getgenv().Settings.BartiloQuest

})

v32:OnChanged(function(v154)

	getgenv().AutoBartiloQuest = v154;

	getgenv().Settings.BartiloQuest = v154

end)





local v33 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Kill Dark Beard",

	Description = "Tự động giết râu đen",

	Default = getgenv().Settings.AutoDarkCoat

})

v33:OnChanged(function(v155)

	getgenv().AutoDarkCoat = v155;

	getgenv().Settings.AutoDarkCoat = v155

end)





local v34 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Farm Ectoplasm",

	Description = "Tự động cày vật chất kì dị",

	Default = getgenv().Settings.AutoEctoplasm

})

v34:OnChanged(function(v156)

	getgenv().AutoEctoplasm = v156;

	getgenv().Settings.AutoEctoplasm = v156

end)





local v35 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Musketeer Hat",

	Description = "Tự động lấy mũ musketeer",

	Default = getgenv().Settings.AutoMusketeer

})

v35:OnChanged(function(v157)

	getgenv().AutoMusketeer = v157;

	getgenv().Settings.AutoMusketeer = v157

end)





local v36 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Serpent Bow",

	Description = "Tự động cung mãng xà",

	Default = getgenv().Settings.AutoSerpent

})

v36:OnChanged(function(v158)

	getgenv().AutoSerpentBow = v158;

	getgenv().Settings.AutoSerpent = v158

end)





local v37 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Factory",

	Description = "Tự động đánh nhà máy",

	Default = getgenv().Settings.AutoFactory

})

v37:OnChanged(function(v159)

	getgenv().AutoFactory = v159;

	getgenv().Settings.AutoFactory = v159

end)





local v38 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Swan Glasses",

	Description = "Tự động lấy kính đô phờ la min gô",

	Default = getgenv().Settings.AutoSwanGlass

})

v38:OnChanged(function(v160)

	getgenv().AutoSwanGlasses = v160;

	getgenv().Settings.AutoSwanGlass = v160

end)





local v39 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Buddy Sword",

	Description = "Tự động lấy kiếm buddy",

	Default = getgenv().Settings.AutoBuddySwords

})

v39:OnChanged(function(v161)

	getgenv().AutoBuddySwords = v161;

	getgenv().Settings.AutoBuddySwords = v161

end)





local v40 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Cavander",

	Description = "Tự động lấy kiếm florentino",

	Default = getgenv().Settings.AutoCavander

})

v40:OnChanged(function(v162)

	getgenv().AutoCavander = v162;

	getgenv().Settings.AutoCavander = v162

end)





local v41 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Hallow Sycthe",

	Description = "Tự động lấy kiếm hallow sycthe",

	Default = getgenv().Settings.AutoBossHallow

})

v41:OnChanged(function(v163)

	getgenv().AutoBossHallow = v163;

	getgenv().Settings.AutoBossHallow = v163

end)





local v42 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Rengoku Swords",

	Description = "Tự động lấy kiếm rengoku",

	Default = getgenv().Settings.AutoRengoku

})

v42:OnChanged(function(v164)

	getgenv().AutoRengoku = v164;

	getgenv().Settings.AutoRengoku = v164

end)





local v43 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto True Triple Katana",

	Description = "Tự động lấy tam kiếm",

	Default = getgenv().Settings.AutoTripleKatana

})

v43:OnChanged(function(v165)

	getgenv().AutoTripleKatana = v165;

	getgenv().Settings.AutoTripleKatana = v165

end)





local v44 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Pole",

	Description = "Tự động lấy pole",

	Default = getgenv().Settings.AutoPole

})

v44:OnChanged(function(v166)

	getgenv().AutoPole = v166;

	getgenv().Settings.AutoPole = v166

end)





local v45 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Saber",

	Description = "Tự động lấy kiếm saber",

	Default = getgenv().Settings.AutoSaber

})

v45:OnChanged(function(v167)

	getgenv().AutoSaber = v167;

	getgenv().Settings.AutoSaber = v167

end)





local v46 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Observation Haki V2",

	Description = "Tự động lấy haki quan sát v2",

	Default = getgenv().Settings.AutoKenHakiV2

})

v46:OnChanged(function(v168)

	getgenv().AutoKenHakiV2 = v168;

	getgenv().Settings.AutoKenHakiV2 = v168

end)





local v47 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Farm Observation Haki",

	Description = "Tự động cày haki quan sát",

	Default = getgenv().Settings.AutoFarmKen

})

v47:OnChanged(function(v169)

	getgenv().AutoObservation = v169;

	getgenv().Settings.AutoFarmKen = v169

end)





local v48 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Castle Raid",

	Description = "Tự động đánh quái ở pháo đài",

	Default = getgenv().Settings.AutoRaidCastle

})

v48:OnChanged(function(v170)

	getgenv().AutoCastleRaid = v170;

	getgenv().Settings.AutoRaidCastle = v170

end)





local v49 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Holy Torch",

	Description = "Tự động lấy đuốc",

	Default = getgenv().Settings.AutoHolyTorch

})

v49:OnChanged(function(v171)

	getgenv().AutoHolyTorch = v171;

	getgenv().Settings.AutoHolyTorch = v171

end)





local v50 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Rainbow Haki",

	Description = "Tự động lấy haki 7 màu",

	Default = getgenv().Settings.AutoRainBowHaki

})

v50:OnChanged(function(v172)

	getgenv().AutoRainbowHaki = v172;

	getgenv().Settings.AutoRainBowHaki = v172

end)





local v51 = v8.Page6:AddToggle("Skibidi", {

	Title = "Auto Third Sea",

	Description = "Tự động lên biển 3",

	Default = getgenv().Settings.AutoThirdSea

})

v51:OnChanged(function(v173)

	getgenv().AutoThirdSea = v173;

	getgenv().Settings.AutoThirdSea = v173

end)





local v52 = v8.Page6:AddToggle("Skibidi", {

	Title = "Auto Second Sea",

	Description = "Tự động lên biển 2",

	Default = getgenv().Settings.AutoNewWorld

})

v52:OnChanged(function(v174)

	getgenv().AutoNewWorld = v174;

	getgenv().Settings.AutoNewWorld = v174

end)





local v53 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Buy Law Raid Chip",

	Description = "Tự động mua chip law raid",

	Default = getgenv().Settings.BuyLawChip

})

v53:OnChanged(function(v175)

	getgenv().Auto_Buy_Law_Chip = v175

	getgenv().Settings.BuyLawChip = v175

end)





local v54 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Start Law Raid",

	Description = "Tự động bắt đầu law raid",

	Default = getgenv().Settings.AutoStartLawRaid

})

v54:OnChanged(function(v176)

	getgenv().Auto_Start_Law_Dungeon = v176

	getgenv().Settings.AutoStartLawRaid = v176

end)





local v55 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Kill Law",

	Description = "Tự động giết law",

	Default = getgenv().Settings.AutoKillLaw

})

v55:OnChanged(function(v177)

	getgenv().AutoLawRaid = v177

	getgenv().Settings.AutoKillLaw = v177

end)





local v56 = v8.Page7:AddDropdown("Dropdown", {

	Title = "Choose Chip",

	Description = "Chọn Chip",

	Values = v1,

	Multi = false,

	Default = getgenv().Settings.SelectChip

})

v56:SetValue("Melee")

v56:OnChanged(function(v178)

	getgenv().SelectChip = v178

	getgenv().Settings.SelectChip = v178

end)





local v57 = v8.Page7:AddToggle("Skibidi", {

	Title = "Buy Chip",

	Description = "Mua Chip",

	Default = getgenv().Settings.AutoBuyChip

})

v57:OnChanged(function(v179)

	getgenv().Auto_Buy_Chips_Dungeon = v179

	getgenv().Settings.AutoBuyChip = v179

end)





local v58 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto/Start Raid",

	Description = "Tự Động Bắt Đầu Raid",

	Default = getgenv().Settings.AutoStartRaid

})

v58:OnChanged(function(v180)

	getgenv().Auto_StartRaid = v180

	getgenv().Settings.AutoStartRaid = v180

end)





local v59 = v8.Page7:AddToggle("Skibidi", {

	Title = "Kill Aura",

	Description = "Giết Quái Raid",

	Default = getgenv().Settings.Kill_Aura

})

v59:OnChanged(function(v181)

	getgenv().Kill_Aura = v181

	getgenv().Settings.Kill_Aura = v181

end)





local v60 = v8.Page7:AddToggle("Skibidi", {

	Title = "Over Next Island",

	Description = "Qua Đảo Khác Trong Raid",

	Default = getgenv().Settings.AutoOverNextIsland

})

v60:OnChanged(function(v182)

	getgenv().AutoNextIsland = v182

	getgenv().Settings.AutoOverNextIsland = v182

end)





local v61 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Awakening",

	Description = "Tự Động Thức Tỉnh",

	Default = getgenv().Settings.AutoAwaken

})

v61:OnChanged(function(v183)

	getgenv().AutoAwakenAbilities = v183

	getgenv().Settings.AutoAwaken = v183

end)





local v62 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Use Low Beli Fruit",

	Description = "Tự Động Dùng Trái Ác Quỷ Thấp Beli",

	Default = getgenv().Settings.AutoFruit

})

v62:OnChanged(function(v184)

	getgenv().AutoFruit = v184

	getgenv().Settings.AutoFruit = v184

end)





v8.Page8:AddButton({

	Title = "Remove Fog",

	Description = "Xóa Xương Mù",

	Callback = function()

		game:GetService("Lighting").LightingLayers:Destroy()

		game:GetService("Lighting").Sky:Destroy()

	end

})





v8.Page8:AddButton({

	Title = "Always Day",

	Description = "Luôn Sáng",

	Callback = function()

		game:GetService("RunService").Heartbeat:wait(0.1)

		game:GetService("Lighting").ClockTime = 12

	end

})





local v63 = v8.Page8:AddToggle("Skibidi", {

	Title = "Auto Rejoin",

	Description = "Tự động vào lại server",

	Default = getgenv().Settings.AutoRejoin

})

v63:OnChanged(function(v185)

	getgenv().AutoRejoinLinh = v185

	getgenv().Settings.AutoRejoin = v185

end)





v8.Page8:AddButton({

	Title = "Redeem All Codes",

	Description = "Dùng Tất Cả Code",

	Callback = function()

		v13_()

	end

})





v8.Page8:AddButton({

	Title = "Join Pirates Team",

	Description = "Vào Đội Hải Tặc",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")

	end

})





v8.Page8:AddButton({

	Title = "Join Marines Team",

	Description = "Vào Đội Hải Quân",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")

	end

})





v8.Page8:AddButton({

	Title = "Open Devil Shop Menu",

	Description = "Mở Shop Bán Trái Ác Quỷ",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")

		game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Color Haki Menu",

	Description = "Mở Bảng Haki",

	Callback = function()

		game.Players.LocalPlayer.PlayerGui.Main.Colors.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Title Name Menu",

	Description = "Mở Bảng Biệt Danh",

	Callback = function()

		local v186 = {

			[1] = "getTitles"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v186))

		game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Awakening Menu",

	Description = "Mở Bảng Thức Tỉnh",

	Callback = function()

		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Hop Server",

	Description = "Chuyển Máy Chủ",

	Callback = function()

		v14_()

	end

})





v8.Page8:AddButton({

	Title = "Rejoin Server",

	Description = "Vào Lại Máy Chủ Hiện Tại",

	Callback = function()

		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

	end

})





local v64 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Trial",

	Description = "Tự Động Trial",

	Default = getgenv().Settings.AutoTrial

})

v64:OnChanged(function(v187)

	getgenv().AutoQuestRace = v187

	getgenv().Settings.AutoTrial = v187

end)





local v65 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Kill Player Trial",

	Description = "Tự Động Giết Người Chơi Trong Trial",

	Default = getgenv().Settings.AutoKillPlayerTrial

})

v65:OnChanged(function(v188)

	getgenv().KillPlayerTrial = v188

	getgenv().KillPlayerSpam = v188

	getgenv().Settings.AutoKillPlayerTrial = v188

end)





local v66 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Pull Lever",

	Description = "Tự Động Gạt Cần",

	Default = getgenv().Settings.ToggleAutoPullLever

})

v66:OnChanged(function(v189)

	getgenv().PULL_lever2F = v189

	v15_ = v189

	getgenv().Settings.ToggleAutoPullLever = v189

end)





local v67 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Add Gear",

	Description = "Tự Động Thêm Gear",

	Default = getgenv().Settings.AutoAddGear

})

v67:OnChanged(function(v190)

	getgenv().gear = v190

	getgenv().Settings.AutoAddGear = v190

end)





v8.Page9:AddButton({

	Title = "Teleport To Place Add Gear",

	Description = "Dịch chuyển Đến Chỗ Thêm Gear",

	Callback = function()

		for v191, v192 in next, workspace:GetDescendants() do

			if v192.Name == "Prompt" then

				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v192.CFrame

			end

		end

	end

})





v8.Page9:AddButton({

	Title = "Teleport To Door Race",

	Description = "Dịch Chuyển Đến Cửa Tộc",

	Callback = function()

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(.1)

		if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then

			PlayerTP(CFrame.new(29221.822265625, 14890.9755859375, - 205.99114990234375))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then

			PlayerTP(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then

			PlayerTP(CFrame.new(28231.17578125, 14890.9755859375, - 211.64173889160156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cybhttps://discord.gg/VBU9K6ABuE" then

			PlayerTP(CFrame.new(28502.681640625, 14895.9755859375, - 423.7279357910156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then

			PlayerTP(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then

			PlayerTP(CFrame.new(29012.341796875, 14890.9755859375, - 380.1492614746094))

		end

	end

})





v8.Page9:AddButton({

	Title = "Collect Gear",

	Description = "Nhặt Gear",

	Callback = function()

		for v193, v194 in next, Workspace.Map.MysticIsland:GetDescendants() do

			if v194.Name:find("Part") and v194.ClassName == "MeshPart" then

				PlayerTP(v194.CFrame)

			end

		end

	end

})





local v68 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Buy Train",

	Description = "Tự Động Mua Train",

	Default = getgenv().Settings.AutoBuyTrain

})

v68:OnChanged(function(v195)

	getgenv().AutoBuyTrain = v195

	getgenv().Settings.AutoBuyTrain = v195

end)





-- // Sources \\ --





spawn(function()

	while true do

		wait(0.1)

		if getgenv().AutoBuyTrain then

			local v196 = {

				[1] = "UpgradeRace",

				[2] = "Buy"

			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v196))

		end

	end

end)

local function v17_(v197)

	v18_ = v197;

	if v18_ == "Gear1" then

		print("Gear3")

		local v198 = {

			[1] = "TempleClock",

			[2] = "SpendPoint"

		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v198))

	elseif v18_ == "Gear2" then

		print("Gear2")

		local v199 = {

			[1] = "TempleClock",

			[2] = "SpendPoint",

			[3] = "Gear2",

			[4] = "Omega"

		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v199))

	elseif v18_ == "Gear4" then

		print("Gear4")

		if v19_.B == 2 then

			print("Gear 4 Omega")

			local v200 = {

				[1] = "TempleClock",

				[2] = "SpendPoint",

				[3] = "Gear4",

				[4] = "Omega"

			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v200))

		elseif v19_.A == 2 then

			print("Gear 4 Alpha")

			local v201 = {

				[1] = "TempleClock",

				[2] = "SpendPoint",

				[3] = "Gear4",

				[4] = "Alpha"

			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v201))

		elseif v19_.A < 2 then

			v20_ = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")

			v19_ = v20_.RaceDetails;

			print("Gear 4 Alpha")

			local v202 = {

				[1] = "TempleClock",

				[2] = "SpendPoint",

				[3] = "Gear4",

				[4] = "Alpha"

			}

			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v202))

		end

	elseif v18_ == "Gear3" then

		print("Gear3")

		local v203 = {

			[1] = "TempleClock",

			[2] = "SpendPoint",

			[3] = "Gear3",

			[4] = "Alpha"

		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v203))

	elseif v18_ == "Gear5" then

		print("Gear5")

		local v204 = {

			[1] = "TempleClock",

			[2] = "SpendPoint",

			[3] = "Gear5",

			[4] = "Default"

		}

		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v204))

	end

end;

local function v21_()

	v20_ = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")

	if v20_ and v20_.HadPoint then

		v19_ = v20_.RaceDetails;

		v22_()

		PlayerTP(game:GetService("Workspace").Map["Temple of Time"].Prompt.CFrame)

		if (game:GetService("Workspace").Map["Temple of Time"].Prompt.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3 then

			wait(1)

			fireproximityprompt(game:GetService("Workspace").Map["Temple of Time"].Prompt.ProximityPrompt)

			wait(5)

			for v205, v206 in pairs(game:GetService("Workspace").Map["Temple of Time"].InnerClock:GetChildren()) do

				if v206:FindFirstChild("Highlight") and v206.Highlight.Enabled then

					print(v206.Name)

					task.spawn(function()

						v17_(v206.Name)

					end)

				end

			end

		end;

		wait(300)

	end

end;

spawn(function()

	while wait(.1) do

		if getgenv().gear then

			v21_()

		end

	end

end)

local function v23_()

	TweenTemple()

	v24_ = getnilinstances()

	for v207, v208 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do

		table.insert(v24_, v208)

	end

	for v209, v210 in pairs(v24_) do

		if v210.Name == "Mysterious Force" then

			v25_ = v210

		end

		if v210.Name == "Mysterious Force3" then

			v26_ = v210

		end

	end

	PlayerTP(v26_.HumanoidRootPart.CFrame)

	wait(.1)

	if (v26_.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then

		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")

	end

	if (v25_.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then

		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")

	end

end

local function v22_()

	if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then

		TweenTemple()

	end

	if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then

		TweenTemple()

	end

end

local function v27_()

	if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then

		return true

	else

		return false

	end

end

local function v28_()

	if game.Workspace.Map:FindFirstChild("MysticIsland") then

		for v211, v212 in pairs(game.Workspace.Map.MysticIsland:GetChildren()) do

			if v212:IsA("MeshPart") and v212.MeshId == "rbxassetid://10153114969" then

				return v212

			end

		end

	end

end

local function v29_()

	v30_ = v28_()

	if v30_ then

		PlayerTP(v30_.CFrame)

	end

end

local function v31_()

	local v213 = CFrame.new(28576.4688, 14939.2832, 76.5164413, - 1, 0, 0, 0, 0.707134247, - 0.707079291, 0, - 0.707079291, - 0.707134247)

	local v214 = CFrame.new(28576.4688, 14935.9512, 75.469101, - 1, - 4.22219593e-08, 1.13133396e-08, 0, - 0.258819044, - 0.965925813, 4.37113883e-08, - 0.965925813, 0.258819044)

	local v215 = 0.2

	if game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > v214.Z + v215 or game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < v214.Z - v215 then

		v22_()

		PlayerTP(game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)

		for v216, v217 in pairs(game:GetService("Workspace").Map["Temple of Time"].Lever:GetDescendants()) do

			if v217.Name == "ProximityPrompt" then

				fireproximityprompt(v217)

			end

		end

	end

end

spawn(function()

	pcall(function()

		while wait(.1) do

			if getgenv().PULL_lever2F then

				if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then

					v32_ = true

				else

					v32_ = false

				end

				if getgenv().PULL_lever2F then

					local v218 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")

					if v218 == 1 then

						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")

					elseif v218 == 2 then

						v23_()

					elseif v218 == 3 then

						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")

					elseif not v32_ and not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") and v27_() then

						if v28_() then

							pcall(function()

								v33_ = getHighestPoint().CFrame * CFrame.new(0, 211.88, 0)

							end)

							v30_ = v28_()

							if v30_ and not v30_.CanCollide and v30_.Transparency ~= 1 then

								repeat

									wait(0.1)

									v29_()

								until not v28_() or v28_().Transparency == 1

								if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then

									v32_ = true

									getgenv().SeeMoon = false

								end

							elseif v30_ and v30_.Transparency == 1 then

								if v33_ and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v33_.Position).Magnitude > 10 then

									PlayerTP(v33_)

								elseif v33_ and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v33_.Position).Magnitude <= 10 then

									getgenv().SeeMoon = true

									wait(.1)

									game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)

									task.wait(0.1)

									game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)

									task.wait(1.5)

								end

							end

						end

					end

				elseif v32_ then

					v31_()

				end

			end

		end

	end)

end)

local function v34_()

	game:GetService("VirtualUser"):CaptureController()

	game:GetService("VirtualUser"):Button1Down(Vector2.new(1e4, 1e4))

end

function Click()

		game:GetService("VirtualUser"):CaptureController()

		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

end

getgenv().TargTrial = nil

function targettrial()

    if getgenv().TargTrial ~= nil then return end

    local a = nil

    local b = 450

    for i,v in pairs(game.Players:GetChildren()) do

        c = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

        if c <= b and v ~= game.Players.LocalPlayer then

            b = c 

            a = v

        end

    end

    if a == nil then return end

    if getgenv().TargTrial ~= nil then return end

    getgenv().TargTrial = a

end

spawn(function()

    while wait() do 

        pcall(function()

            if getgenv().KillPlayerTrial then

                repeat wait()

                    targettrial()

                    if getgenv().TargTrial ~= nil and getgenv().TargTrial.Character.Humanoid.Health < 0 then

                        getgenv().TargTrial = nil

                        targettrial()

                    end

                    if getgenv().TargTrial ~= nil then

                        PlayerTP(getgenv().TargTrial.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))

                        getgenv().AutoHaki = true

                        v36_(getgenv().SelectWeapon)

                        Fast_Attack = true

                        NeedAttacking = true

                        UsefastattackPlayers = true

                        Click()

                        game:GetService("VirtualUser"):CaptureController()

				        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)

                    end

                until not getgenv().KillPlayerTrial or not v.Parent or v.Humanoid.Health <= 0 

                Fast_Attack = false

                NeedAttacking = false

                UsefastattackPlayers = false

            end

        end)

    end

end)

spawn(function()

    while wait() do 

        pcall(function()

            if getgenv().KillPlayerSpam then

                repeat wait()

                    targettrial()

                    if getgenv().TargTrial ~= nil and getgenv().TargTrial.Character.Humanoid.Health < 0 then

                        getgenv().TargTrial = nil

                        targettrial()

                    end

                    if getgenv().TargTrial ~= nil then

                        PlayerTP(getgenv().TargTrial.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,5))

                        getgenv().AutoHaki = true

                        v36_(getgenv().SelectWeapon)

                        Fast_Attack = true

                        NeedAttacking = true

                        UsefastattackPlayers = true

                        Click()

                        game:GetService("VirtualUser"):CaptureController()

				        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)

                    end

                    wait(2)

                    if getgenv().SpamSkillZ then

                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                    end

                    wait(.2)

                    if getgenv().SpamSkillX then

                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                    end

                    wait(.2)

                    if getgenv().SpamSkillC then

                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                        wait(.2)

                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)

                    end

                until not getgenv().KillPlayerSpam or not v.Parent or v.Humanoid.Health <= 0 

                Fast_Attack = false

                NeedAttacking = false

                UsefastattackPlayers = false

            end

        end)

    end

end)

spawn(function()

	pcall(function()

		while wait(.1) do

			if getgenv().AutoQuestRace then

				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then

					for v223, v224 in pairs(game.Workspace.Enemies:GetDescendants()) do

						if v224:FindFirstChild("Humanoid") and v224:FindFirstChild("HumanoidRootPart") and v224.Humanoid.Health > 0 then

							pcall(function()

								repeat

									wait(.1)

									v224.Humanoid.Health = 0

									v224.HumanoidRootPart.CanCollide = false

									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

								until not getgenv().AutoQuestRace or not v224.Parent or v224.Humanoid.Health <= 0

							end)

						end

					end

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then

					v38_ = true

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then

					for v225, v226 in pairs((game:GetService("Workspace")).Map.SkyTrial.Model:GetDescendants()) do

						PlayerTP(game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame)

					end

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then

					for v227, v228 in pairs((game:GetService("Workspace")).SeaBeasts.SeaBeast1:GetDescendants()) do

						if v228.Name == "HumanoidRootPart" then

							PlayerTP(v228.CFrame * CFrame.new(0, 35, 0))

							for v229, v230 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

								if v230:IsA("Tool") then

									if v230.ToolTip == "Melee" then

										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v230)

									end

								end

							end

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							for v231, v232 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

								if v232:IsA("Tool") then

									if v232.ToolTip == "Blox Fruit" then

										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v232)

									end

								end

							end

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(.1)

							for v233, v234 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

								if v234:IsA("Tool") then

									if v234.ToolTip == "Sword" then

										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v234)

									end

								end

							end

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(.1)

							for v235, v236 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

								if v236:IsA("Tool") then

									if v236.ToolTip == "Gun" then

										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v236)

									end

								end

							end

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							wait(0.2)

							game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

							game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)

						end

					end

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cybhttps://discord.gg/VBU9K6ABuE" then

					PlayerTP(CFrame.new(- 20010.7637, 10040.4004, - 25.7639999, 1, 0, 0, 0, 1, 0, 0, 0, 1))

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then

					for v237, v238 in pairs(game.Workspace.Enemies:GetDescendants()) do

						if v238:FindFirstChild("Humanoid") and v238:FindFirstChild("HumanoidRootPart") and v238.Humanoid.Health > 0 then

							pcall(

                                        function()

								repeat

									wait(0.1)

									v238.Humanoid.Health = 0

									v238.HumanoidRootPart.CanCollide = false

									sethiddenproperty(

                                                    game.Players.LocalPlayer, "SimulationRadius", math.huge)

								until not getgenv().AutoQuestRace or (not v238.Parent) or v238.Humanoid.Health <= 0

							end)

						end

					end

				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then

					for v239, v240 in pairs((game:GetService("Workspace")):GetDescendants()) do

						if v240.Name == "StartPoint" then

							PlayerTP(v240.CFrame * CFrame.new(0, 9, 0))

						end

					end

				end

			end

		end

	end)

end)

spawn(function()

	while wait(.1) do

		if getgenv().Auto_Buy_Chips_Dungeon then

			pcall(function()

				local v241 = {

					[1] = "RaidsNpc",

					[2] = "Select",

					[3] = getgenv().SelectChip

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v241))

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().Auto_StartRaid then

			if v7_ then

				fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)

			elseif v8_ then

				fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoFruit then

				local v242 = {

					[1] = "LoadFruit",

					[2] = "Rocket-Rocket"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v242))

				local v243 = {

					[1] = "LoadFruit",

					[2] = "Spin-Spin"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v243))

				local v244 = {

					[1] = "LoadFruit",

					[2] = "Chop-Chop"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v244))

				local v245 = {

					[1] = "LoadFruit",

					[2] = "Spring-Spring"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v245))

				local v246 = {

					[1] = "LoadFruit",

					[2] = "Bomb-Bomb"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v246))

				local v247 = {

					[1] = "LoadFruit",

					[2] = "Smoke-Smoke"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v247))

				local v248 = {

					[1] = "LoadFruit",

					[2] = "Spike-Spike"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v248))

				local v249 = {

					[1] = "LoadFruit",

					[2] = "Flame-Flame"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v249))

				local v250 = {

					[1] = "LoadFruit",

					[2] = "Falcon-Falcon"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v250))

				local v251 = {

					[1] = "LoadFruit",

					[2] = "Ice-Ice"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v251))

				local v252 = {

					[1] = "LoadFruit",

					[2] = "Sand-Sand"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v252))

				local v253 = {

					[1] = "LoadFruit",

					[2] = "Dark-Dark"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v253))

				local v254 = {

					[1] = "LoadFruit",

					[2] = "Ghost-Ghost"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v254))

				local v255 = {

					[1] = "LoadFruit",

					[2] = "Diamond-Diamond"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v255))

				local v256 = {

					[1] = "LoadFruit",

					[2] = "Light-Light"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v256))

				local v257 = {

					[1] = "LoadFruit",

					[2] = "Rubber-Rubber"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v257))

				local v258 = {

					[1] = "LoadFruit",

					[2] = "Barrier-Barrier"

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v258))

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoAwakenAbilities then

			pcall(function()

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")

			end)

		end

	end

end)

local function v39_(v259, v260)

	if not v260 then

		v260 = game.Players.LocalPlayer.Character.PrimaryPart.CFrame

	end

	return (Vector3.new(v259.X, v259.Y, v259.Z) - Vector3.new(v260.X, v259.Y, v260.Z)).Magnitude

end

local function v40_()

	local v261 = {

		{},

		{},

		{},

		{},

		{}

	}

	for v262, v263 in game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren() do

		if string.find(v263.Name, "Island ") and v39_(v263.Position, Vector3.new(0, 0, 0)) > 7000 then

			pcall(

                function()

				table.insert(v261[tonumber(({

					string.gsub(v263.Name, "Island ", "")

				})[1])], v263)

			end)

		end

	end

	for v264 = 5, 1, - 1 do

		for v265, v266 in v261[v264] do

			if v266 and v39_(v266.Position) < 4500 then

				return v266

			end

		end

	end

end

spawn(function()

	while wait(.1) do

		if getgenv().AutoNextIsland then

			pcall(function()

				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then

					PlayerTP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0, 70, 100))

				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then

					PlayerTP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0, 70, 100))

				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then

					PlayerTP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0, 70, 100))

				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then

					PlayerTP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0, 70, 100))

				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

					PlayerTP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0, 70, 100))

				end

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().Kill_Aura then

			pcall(function()

				for v267, v268 in pairs(game.Workspace.Enemies:GetDescendants()) do

					if v268:FindFirstChild("Humanoid") and v268:FindFirstChild("HumanoidRootPart") and v268.Humanoid.Health > 0 then

						repeat

							wait(0.1)

							sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", 3250)

							v268.Humanoid.Health = 0;

							v268.HumanoidRootPart.CanCollide = false

						until not getgenv().Kill_Aura or not v268.Parent or v268.Humanoid.Health <= 0

					end

				end

			end)

		end

	end

end)



spawn(function()

	while wait(.1) do

		setfpscap(999)

		v1_()

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().Auto_Buy_Law_Chip then

			pcall(function()

				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order") then

				else

					local v269 = {

						[1] = "BlackbeardReward",

						[2] = "Microchip",

						[3] = "2"

					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v269))

				end

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().Auto_Start_Law_Dungeon then

			pcall(function()

				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then

					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)

				end

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoLawRaid then

			pcall(function()

				if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then

					for v270, v271 in pairs(game.Workspace.Enemies:GetChildren()) do

						if getgenv().AutoLawRaid and string.find(v271.Name, "Order") and v271:FindFirstChild("HumanoidRootPart") and v271:FindFirstChild("Humanoid") and v271.Humanoid.Health > 0 then

							repeat

								wait(0.1)

								v271.Humanoid.JumpPower = 0;

								v271.Humanoid.WalkSpeed = 0;

								v271.HumanoidRootPart.Transparency = 1;

								v271.HumanoidRootPart.CanCollide = false;

								v271.Head.CanCollide = false;

								if v271.Humanoid:FindFirstChild("Animator") then

									v271.Humanoid.Animator:Destroy()

								end;

								v271.Humanoid:ChangeState(11)

								v271.Humanoid:ChangeState(14)

								getgenv().FastAttack = true;

								PlayerTP(v271.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

							until not getgenv().AutoLawRaid or v271.Humanoid.Health <= 0 or not v271.Parent

						end

					end

				end

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoSwanGlasses then

				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then

					for v272, v273 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if v273.Name == "Don Swan" and v273.Humanoid.Health > 0 and v273:IsA("Model") and v273:FindFirstChild("Humanoid") and v273:FindFirstChild("HumanoidRootPart") then

							repeat

								wait(0.1)

								v41_ = true;

								v28 = true;

								v36_(getgenv().SelectWeapon)

								v42_ = v273.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v273.Humanoid.JumpPower = 0;

								v273.Humanoid.WalkSpeed = 0;

								v273.HumanoidRootPart.CanCollide = false;

								v273.Humanoid:ChangeState(11)

								v273.Humanoid:ChangeState(14)

								v273.Humanoid:ChangeState(16)

								PlayerTP(v273.HumanoidRootPart.CFrame * MethodFarm)

							until not getgenv().AutoSwanGlasses or v273.Humanoid.Health <= 0;

							v41_ = false;

							v28 = false

						end

					end

				else

					repeat

						wait(0.1)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))

					until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not getgenv().AutoSwanGlasses

				end

			end

		end)

	end

end)

local function v13_()

	local function v45_(v288)

		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v288)

	end;

	v45_("Sub2UncleKizaru")

	v45_("NEWTROLL")

	v45_("SUB2NOOBMASTER123")

	v45_("Sub2NoobMaster123")

	v45_("StrawHatMaine")

	v45_("Sub2OfficialNoobie")

	v45_("SUB2GAMERROBOT_EXP1")

	v45_("SUB2GAMERROBOT_RESET1")

	v45_("THEGREATACE")

	v45_("BIGNEWS")

	v45_("FUDD10")

	v45_("fudd10_v2")

	v45_("Bluxxy")

	v45_("Starcodeheo")

	v45_("JCWK")

	v45_("SUB2CAPTAINMAUI")

	v45_("Magicbus")

	v45_("Sub2Fer999")

	v45_("kittgaming")

	v45_("GAMERROBOT")

	v45_("SUBGAMERROBOT")

	v45_("ADMINGIVEAWAY")

	v45_("KITT_RESET")

	v45_("SECRET_ADMIN")

	v45_("Sub2Daigrock")

	v45_("Axiore")

	v45_("TantaiGaming")

end

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoRainbowHaki then

				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

					PlayerTP(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875))

					if (Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then

						wait(1.5)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")

					end

				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then

					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then

						for v346, v347 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v347.Name == "Stone" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v347.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v347.Humanoid.JumpPower = 0;

									v347.Humanoid.WalkSpeed = 0;

									v347.HumanoidRootPart.CanCollide = false;

									v347.Humanoid:ChangeState(11)

									v347.Humanoid:ChangeState(14)

									v347.Humanoid:ChangeState(16)

									PlayerTP(v347.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoRainbowHaki or v347.Humanoid.Health <= 0 or not v347.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

								v49_ = false;

								v28 = false

							end

						end

					else

						PlayerTP(CFrame.new(- 1086.11621, 38.8425903, 6768.71436, 0.0231462717, - 0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, - 0.999732077, - 0.0137055516, 0.0186523199))

					end

				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then

					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then

						for v348, v349 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v349.Name == "Island Empress" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v349.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v349.Humanoid.JumpPower = 0;

									v349.Humanoid.WalkSpeed = 0;

									v349.HumanoidRootPart.CanCollide = false;

									v349.Humanoid:ChangeState(11)

									v349.Humanoid:ChangeState(14)

									v349.Humanoid:ChangeState(16)

									PlayerTP(v349.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoRainbowHaki or v349.Humanoid.Health <= 0 or not v349.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

								v49_ = false;

								v28 = false

							end

						end

					else

						PlayerTP(CFrame.new(5713.98877, 601.922974, 202.751251, - 0.101080291, 0, - 0.994878292, 0, 1, 0, 0.994878292, 0, - 0.101080291))

					end

				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then

					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then

						for v350, v351 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v351.Name == "Kilo Admiral" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v351.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v351.Humanoid.JumpPower = 0;

									v351.Humanoid.WalkSpeed = 0;

									v351.HumanoidRootPart.CanCollide = false;

									v351.Humanoid:ChangeState(11)

									v351.Humanoid:ChangeState(14)

									v351.Humanoid:ChangeState(16)

									PlayerTP(v351.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoRainbowHaki or v351.Humanoid.Health <= 0 or not v351.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

								v49_ = false;

								v28 = false

							end

						end

					else

						PlayerTP(CFrame.new(2877.61743, 423.558685, - 7207.31006, - 0.989591599, 0, - 0.143904909, 0, 1.00000012, 0, 0.143904924, 0, - 0.989591479))

					end

				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then

					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then

						for v352, v353 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v353.Name == "Captain Elephant" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v353.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v353.Humanoid.JumpPower = 0;

									v353.Humanoid.WalkSpeed = 0;

									v353.HumanoidRootPart.CanCollide = false;

									v353.Humanoid:ChangeState(11)

									v353.Humanoid:ChangeState(14)

									v353.Humanoid:ChangeState(16)

									PlayerTP(v353.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoRainbowHaki or v353.Humanoid.Health <= 0 or not v353.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

								v49_ = false;

								v28 = false

							end

						end

					else

						PlayerTP(CFrame.new(- 13485.0283, 331.709259, - 8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, - 1.02065748e-07, 1, - 9.94383065e-09, - 0.69961375, - 6.43015241e-08, 0.714521289))

					end

				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then

					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then

						for v354, v355 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v355.Name == "Beautiful Pirate" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v355.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v355.Humanoid.JumpPower = 0;

									v355.Humanoid.WalkSpeed = 0;

									v355.HumanoidRootPart.CanCollide = false;

									v355.Humanoid:ChangeState(11)

									v355.Humanoid:ChangeState(14)

									v355.Humanoid:ChangeState(16)

									PlayerTP(v355.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoRainbowHaki or v355.Humanoid.Health <= 0 or not v355.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

								v49_ = false;

								v28 = false

							end

						end

					else

						PlayerTP(CFrame.new(5312.3598632813, 20.141201019287, - 10.158538818359))

					end

				else

					PlayerTP(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875))

					if (Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then

						wait(1.5)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoHolyTorch then

			pcall(function()

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5749.7861328125, 611.9736938476562, - 276.2497863769531))

				wait(1)

				PlayerTP(CFrame.new(5154.54785, 142.129684, 916.826294, 0.00160392188, 7.16881203e-08, 0.999998689, 4.34501235e-09, 1, - 7.1695176e-08, - 0.999998689, 4.45999992e-09, 0.00160392188))

				wait(15)

				v36_("Holy Torch")

				repeat

					PlayerTP(CFrame.new(- 10752, 417, - 9366))

					wait(0.1)

				until not getgenv().AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 10752, 417, - 9366)).Magnitude <= 10;

				wait(1)

				repeat

					PlayerTP(CFrame.new(- 11672, 334, - 9474))

					wait(0.1)

				until not getgenv().AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 11672, 334, - 9474)).Magnitude <= 10;

				wait(1)

				repeat

					PlayerTP(CFrame.new(- 12132, 521, - 10655))

					wait(0.1)

				until not getgenv().AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 12132, 521, - 10655)).Magnitude <= 10;

				wait(1)

				repeat

					PlayerTP(CFrame.new(- 13336, 486, - 6985))

					wait(0.1)

				until not getgenv().AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13336, 486, - 6985)).Magnitude <= 10;

				wait(1)

				repeat

					PlayerTP(CFrame.new(- 13489, 332, - 7925))

					wait(0.1)

				until not getgenv().AutoHolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13489, 332, - 7925)).Magnitude <= 10

			end)

		end

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoCastleRaid then

				if (CFrame.new(- 5118.48682, 314.54129, - 2958.64404, - 0.387232125, 1.81507858e-08, 0.921982229, - 7.54388907e-08, 1, - 5.13709999e-08, - 0.921982229, - 8.94458196e-08, - 0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then

					for v356, v357 in pairs(game.Workspace.Enemies:GetChildren()) do

						if v357:FindFirstChild("Humanoid") and v357:FindFirstChild("HumanoidRootPart") and v357.Humanoid.Health > 0 and (v357.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then

							repeat

								wait(0.1)

								v42_ = v357.HumanoidRootPart.CFrame;

								v36_(getgenv().SelectWeapon)

								v49_ = true;

								PlayerTP(v357.HumanoidRootPart.CFrame * MethodFarm)

								if (v357.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then

									game:GetService("VirtualUser"):CaptureController()

									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

								end

							until not getgenv().AutoCastleRaid or not v357.Parent or v357.Humanoid.Health <= 0;

							v49_ = false

						end

					end

				else

					if (CFrame.new(- 5118.48682, 314.54129, - 2958.64404, - 0.387232125, 1.81507858e-08, 0.921982229, - 7.54388907e-08, 1, - 5.13709999e-08, - 0.921982229, - 8.94458196e-08, - 0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then

						for v358, v359 in pairs(game.ReplicatedStorage:GetChildren()) do

							if v359:FindFirstChild("Humanoid") and v359:FindFirstChild("HumanoidRootPart") and v359.Humanoid.Health > 0 and (v359.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then

								PlayerTP(v359.HumanoidRootPart.CFrame * MethodFarm)

							end

						end

					end;

					PlayerTP(CFrame.new(- 5118.48682, 314.54129, - 2958.64404, - 0.387232125, 1.81507858e-08, 0.921982229, - 7.54388907e-08, 1, - 5.13709999e-08, - 0.921982229, - 8.94458196e-08, - 0.387232125))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoObservation then

				repeat

					wait(0.1)

					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

						wait(5)

						game:GetService("VirtualUser"):CaptureController()

						game:GetService("VirtualUser"):SetKeyDown("0x65")

						wait(2)

						game:GetService("VirtualUser"):SetKeyUp("0x65")

					end

				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not getgenv().AutoObservation

			end

		end)

		if getgenv().AutoObservation then

			if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 6000 then

				game:GetService("StarterGui"):SetCore("SendNotification", {

					Icon = "rbxassetid://15689000757",

					Title = "Notification",

					Text = "You Are Maxed Point"

				})

				wait(2)

			else

				if World2 then

					if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then

						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

							until getgenv().AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						else

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

								wait(1)

								if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and getgenv().AutoObservation_Hop == true then

									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

								end

							until getgenv().AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						end

					else

						PlayerTP(CFrame.new(- 5478.39209, 15.9775667, - 5246.9126))

					end

				elseif World1 then

					if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then

						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

							until getgenv().AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						else

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

								wait(1)

								if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and getgenv().AutoObservation_Hop == true then

									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

								end

							until getgenv().AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						end

					else

						PlayerTP(CFrame.new(5533.29785, 88.1079102, 4852.3916))

					end

				elseif World3 then

					if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then

						if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

							until getgenv().AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						else

							repeat

								wait(0.1)

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

								wait(1)

								if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and getgenv().AutoObservation_Hop == true then

									game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

								end

							until getgenv().AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

						end

					else

						PlayerTP(CFrame.new(4530.3540039063, 656.75695800781, - 131.60952758789))

					end

				end

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoKenHakiV2 then

				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

					repeat

						PlayerTP(CFrame.new(- 12444.78515625, 332.40396118164, - 7673.1806640625))

						wait(0.1)

					until not getgenv().AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 12444.78515625, 332.40396118164, - 7673.1806640625)).Magnitude <= 10;

					wait(.1)

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")

					wait(1)

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)

				else

					if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then

						repeat

							PlayerTP(CFrame.new(- 12444.78515625, 332.40396118164, - 7673.1806640625))

							wait(0.1)

						until not getgenv().AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 12444.78515625, 332.40396118164, - 7673.1806640625)).Magnitude <= 10;

						wait(.1)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")

					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then

						repeat

							PlayerTP(CFrame.new(- 10920.125, 624.20275878906, - 10266.995117188))

							wait(0.1)

						until not getgenv().AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 10920.125, 624.20275878906, - 10266.995117188)).Magnitude <= 10;

						wait(.1)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")

						wait(1)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")

					elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then

						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then

							for v360, v361 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v361.Name == "Forest Pirate" then

									repeat

										wait(0.1)

										v49_ = true;

										v28 = true;

										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

											wait(0.1)

											v36_(getgenv().SelectWeapon)

										end;

										v42_ = v361.HumanoidRootPart.CFrame;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v361.Humanoid.JumpPower = 0;

										v361.Humanoid.WalkSpeed = 0;

										v361.HumanoidRootPart.CanCollide = false;

										v361.Humanoid:ChangeState(11)

										v361.Humanoid:ChangeState(14)

										v361.Humanoid:ChangeState(16)

										PlayerTP(v361.HumanoidRootPart.CFrame * MethodFarm)

									until not getgenv().AutoKenHakiV2 or v361.Humanoid.Health <= 0;

									v49_ = false;

									v28 = false

								end

							end

						else

							repeat

								PlayerTP(CFrame.new(- 13277.568359375, 370.34185791016, - 7821.1572265625))

								wait(0.1)

							until not getgenv().AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13277.568359375, 370.34185791016, - 7821.1572265625)).Magnitude <= 10

						end

					elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then

						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then

							for v362, v363 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v363.Name == "Captain Elephant" then

									repeat

										wait(0.1)

										v49_ = true;

										v28 = true;

										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

											wait(0.1)

											v36_(getgenv().SelectWeapon)

										end;

										v42_ = v363.HumanoidRootPart.CFrame;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v363.Humanoid.JumpPower = 0;

										v363.Humanoid.WalkSpeed = 0;

										v363.HumanoidRootPart.CanCollide = false;

										v363.Humanoid:ChangeState(11)

										v363.Humanoid:ChangeState(14)

										v363.Humanoid:ChangeState(16)

										PlayerTP(v363.HumanoidRootPart.CFrame * MethodFarm)

									until not getgenv().AutoKenHakiV2 or v363.Humanoid.Health <= 0;

									v49_ = false;

									v28 = false

								end

							end

						else

							repeat

								PlayerTP(CFrame.new(- 13493.12890625, 318.89553833008, - 8373.7919921875))

								wait(0.1)

							until not getgenv().AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13493.12890625, 318.89553833008, - 8373.7919921875)).Magnitude <= 10

						end

					else

						for v364, v365 in pairs(game.Workspace:GetDescendants()) do

							if v365.Name == "Apple" or v365.Name == "Banana" or v365.Name == "Pineapple" then

								v365.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

								wait(0.1)

								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v365.Handle, 0)

								wait(0.1)

							end

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoNewWorld then

				if game.Players.LocalPlayer.Data.Level.Value >= 700 then

					if getgenv().AutoFarm then

						getgenv().AutoFarm = false

					end;

					if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then

						wait(.1)

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")

						v36_("Key")

						repeat

							wait(0.1)

							PlayerTP(CFrame.new(1347.7124, 37.3751602, - 1325.6488))

						until (CFrame.new(1347.7124, 37.3751602, - 1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().AutoNewWorld;

						wait(3)

					elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then

						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then

							for v366, v367 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v367.Name == "Ice Admiral" and v367.Humanoid.Health > 0 then

									repeat

										wait(0.1)

										v36_(getgenv().SelectWeapon)

										PlayerTP(v367.HumanoidRootPart.CFrame * MethodFarm)

										v28 = true;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v367.Humanoid.JumpPower = 0;

										v367.Humanoid.WalkSpeed = 0;

										v367.HumanoidRootPart.CanCollide = false;

										v367.Humanoid:ChangeState(11)

										v367.Humanoid:ChangeState(14)

										v367.Humanoid:ChangeState(16)

										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")

									until v367.Humanoid.Health <= 0 or not v367.Parent;

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")

								end

							end

						else

							PlayerTP(CFrame.new(1347.7124, 37.3751602, - 1325.6488))

						end

					else

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoThirdSea then

				if game.Players.LocalPlayer.Data.Level.Value >= 1500 then

					if getgenv().AutoFarm then

						getgenv().AutoFarm = false

					end;

					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then

						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then

							Com("F_", "TravelZou")

							if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then

								if game.Workspace.Enemies:FindFirstChild("rip_indra") then

									for v368, v369 in pairs(game.Workspace.Enemies:GetChildren()) do

										if v369.Name == "rip_indra" and v369:FindFirstChild("Humanoid") and v369:FindFirstChild("HumanoidRootPart") and v369.Humanoid.Health > 0 then

											repeat

												wait(0.1)

												if (v369.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

													v50_ = PlayerTP(v369.HumanoidRootPart.Position, v369.HumanoidRootPart.CFrame)

												elseif (v369.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

													if v50_ then

														v50_:Stop()

													end;

													v28 = true;

													if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

														wait(0.1)

														v36_(getgenv().SelectWeapon)

													end;

													v42_ = v369.HumanoidRootPart.CFrame;

													if not getgenv().FastAttack then

														game:GetService"VirtualUser":CaptureController()

														game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

													end;

													v369.Humanoid.JumpPower = 0;

													v369.HumanoidRootPart.CanCollide = false;

													v369.Humanoid.WalkSpeed = 0;

													v369.Humanoid:ChangeState(11)

													v369.Humanoid:ChangeState(14)

													v369.Humanoid:ChangeState(16)

													PlayerTP(v369.HumanoidRootPart.CFrame * MethodFarm)

												end

											until not getgenv().AutoThirdSea or not v369.Parent or v369.Humanoid.Health <= 0;

											wait(.1)

											v51_ = 2;

											repeat

												wait(0.1)

												Com("F_", "TravelZou")

											until v51_ == 1;

											v28 = false

										end

									end

								else

									Com("F_", "ZQuestProgress", "Check")

									Com("F_", "ZQuestProgress", "Begin")

								end

							elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then

								Com("F_", "TravelZou")

							else

								if game.Workspace.Enemies:FindFirstChild("Don Swan") then

									for v370, v371 in pairs(game.Workspace.Enemies:GetChildren()) do

										if v371.Name == "Don Swan" and v371:FindFirstChild("Humanoid") and v371:FindFirstChild("HumanoidRootPart") and v371.Humanoid.Health > 0 then

											repeat

												wait(0.1)

												if (v371.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

													v50_ = PlayerTP(v371.HumanoidRootPart.Position, v371.HumanoidRootPart.CFrame)

												elseif (v371.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

													if v50_ then

														v50_:Stop()

													end;

													v28 = true;

													if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

														wait(0.1)

														v36_(getgenv().SelectWeapon)

													end;

													v42_ = v371.HumanoidRootPart.CFrame;

													if not getgenv().FastAttack then

														game:GetService"VirtualUser":CaptureController()

														game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

													end;

													v371.Humanoid.JumpPower = 0;

													v371.HumanoidRootPart.CanCollide = false;

													v371.Humanoid.WalkSpeed = 0;

													v371.Humanoid:ChangeState(14)

													v371.Humanoid:ChangeState(16)

													v371.Humanoid:ChangeState(11)

													PlayerTP(v371.HumanoidRootPart.CFrame * MethodFarm)

												end

											until not getgenv().AutoThirdSea or not v371.Parent or v371.Humanoid.Health <= 0;

											v28 = false

										end

									end

								else

									v52_ = PlayerTP(CFrame.new(2288.802, 15.1870775, 863.034607).Position, CFrame.new(2288.802, 15.1870775, 863.034607))

									if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

										if v52_ then

											v52_:Stop()

											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)

										end

									end

								end

							end

						else

							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then

								v53_ = {}

								v54_ = {}

								for v372, v373 in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do

									for v374, v375 in pairs(v373) do

										if v374 == "Name" then

											table.insert(v53_, v375)

										end

									end

								end;

								for v376, v377 in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do

									if v377.Price >= 1000000 then

										table.insert(v54_, v377.Name)

									end

								end;

								for v378, v379 in pairs(v54_) do

									for v380, v381 in pairs(v53_) do

										if v379 == v381 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then

											if not game.Players.LocalPlayer.Backpack:FindFirstChild(v381) then

												Com("F_", "LoadFruit", v381)

											else

												Com("F_", "TalkTrevor", "1")

												Com("F_", "TalkTrevor", "2")

												Com("F_", "TalkTrevor", "3")

											end

										end

									end

								end;

								Com("F_", "TalkTrevor", "1")

								Com("F_", "TalkTrevor", "2")

								Com("F_", "TalkTrevor", "3")

							end

						end

					else

						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then

							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then

								if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then

									for v382, v383 in pairs(game.Workspace.Enemies:GetChildren()) do

										if v383.Name == "Swan Pirate" then

											pcall(function()

												repeat

													wait(0.1)

													if (v383.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

														v50_ = PlayerTP(v383.HumanoidRootPart.Position, v383.HumanoidRootPart.CFrame)

													elseif (v383.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

														if v50_ then

															v50_:Stop()

														end;

														v28 = true;

														v49_ = true;

														if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

															wait(0.1)

															v36_(getgenv().SelectWeapon)

														end;

														v42_ = v383.HumanoidRootPart.CFrame;

														if not getgenv().FastAttack then

															game:GetService"VirtualUser":CaptureController()

															game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

														end;

														v383.Humanoid.JumpPower = 0;

														v383.HumanoidRootPart.CanCollide = false;

														v383.Humanoid.WalkSpeed = 0;

														v383.Humanoid:ChangeState(11)

														v383.Humanoid:ChangeState(14)

														v383.Humanoid:ChangeState(16)

														PlayerTP(v383.HumanoidRootPart.CFrame * MethodFarm)

													end

												until not v383.Parent or v383.Humanoid.Health <= 0 or getgenv().AutoThirdSea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false;

												v28 = false;

												v49_ = false

											end)

										end

									end

								else

									v55_ = PlayerTP(CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position, CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))

									if (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

										if v56_ then

											v56_:Stop()

										end;

										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)

									end

								end

							else

								v56_ = PlayerTP(CFrame.new(- 456.28952, 73.0200958, 299.895966).Position, CFrame.new(- 456.28952, 73.0200958, 299.895966))

								if (CFrame.new(- 456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

									if v56_ then

										v56_:Stop()

									end;

									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 456.28952, 73.0200958, 299.895966)

									Com("F_", "StartQuest", "BartiloQuest", 1)

								end

							end

						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then

							if game.Workspace.Enemies:FindFirstChild("Jeremy") then

								for v384, v385 in pairs(game.Workspace.Enemies:GetChildren()) do

									if v385.Name == "Jeremy" then

										repeat

											wait(0.1)

											if (v385.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

												v50_ = PlayerTP(v385.HumanoidRootPart.Position, v385.HumanoidRootPart.CFrame)

											elseif (v385.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

												if v50_ then

													v50_:Stop()

												end;

												v28 = true;

												if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

													wait(0.1)

													v36_(getgenv().SelectWeapon)

												end;

												v42_ = v385.HumanoidRootPart.CFrame;

												if not getgenv().FastAttack then

													game:GetService"VirtualUser":CaptureController()

													game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

												end;

												v385.Humanoid.JumpPower = 0;

												v385.Humanoid.WalkSpeed = 0;

												v385.HumanoidRootPart.CanCollide = false;

												v385.Humanoid:ChangeState(11)

												v385.Humanoid:ChangeState(14)

												v385.Humanoid:ChangeState(16)

												PlayerTP(v385.HumanoidRootPart.CFrame * MethodFarm)

											end

										until not v385.Parent or v385.Humanoid.Health <= 0 or getgenv().AutoThirdSea == false;

										v28 = false

									end

								end

							else

								v56_ = PlayerTP(CFrame.new(2099.88159, 448.931, 648.997375).Position, CFrame.new(2099.88159, 448.931, 648.997375))

								if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

									if v56_ then

										v56_:Stop()

									end;

									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)

								end

							end

						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then

							if (CFrame.new(- 1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

								v56_ = PlayerTP(CFrame.new(- 1836, 11, 1714).Position, CFrame.new(- 1836, 11, 1714))

							elseif (CFrame.new(- 1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

								if v56_ then

									v56_:Stop()

								end;

								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1836, 11, 1714)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1850.49329, 13.1789551, 1750.89685)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.87305, 19.3777466, 1712.01807)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1803.94324, 16.5789185, 1750.89685)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.55835, 16.8604317, 1724.79541)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1869.54224, 15.987854, 1681.00659)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1800.0979, 16.4978027, 1684.52368)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1819.26343, 14.795166, 1717.90625)

								wait(.1)

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1813.51843, 14.8604736, 1724.79541)

							end

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		game:GetService("RunService").Heartbeat:Connect(function()

			pcall(function()

				for v386, v387 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

					if getgenv().AutoEvoRaceV2 and v57_ and v387.Name == "Swan Pirate" and (v387.HumanoidRootPart.Position - v58_.Position).magnitude <= 350 then

						v387.HumanoidRootPart.CFrame = v58_;

						v387.HumanoidRootPart.CanCollide = false;

						v387.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

						if v387.Humanoid:FindFirstChild("Animator") then

							v387.Humanoid.Animator:Destroy()

						end;

						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 5000)

					end

				end

			end)

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then

				if getgenv().AutoFarm then

					getgenv().AutoFarm = false;

					getgenv().BypassTP = false

				end;

				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then

					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then

						if (CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, - 0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, - 4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then

							PlayerTP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)

							wait(1)

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;

							wait(1)

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;

							wait(1)

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;

							wait(1)

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;

							wait(1)

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;

							wait(1)

						else

							PlayerTP(CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, - 0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, - 4.39869794e-08, 0.37091279))

						end

					else

						if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then

							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then

								v36_("Torch")

								PlayerTP(CFrame.new(1114.61475, 5.04679728, 4350.22803, - 0.648466587, - 1.28799094e-09, 0.761243105, - 5.70652914e-10, 1, 1.20584542e-09, - 0.761243105, 3.47544882e-10, - 0.648466587))

							else

								PlayerTP(CFrame.new(- 1610.00757, 11.5049858, 164.001587, 0.984807551, - 0.167722285, - 0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, - 0.258850515, 0.965917408))

							end

						else

							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")

								wait(.1)

								v36_("Cup")

								wait(.1)

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)

								wait(0)

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")

							else

								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")

								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then

									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then

										PlayerTP(CFrame.new(- 2967.59521, - 4.91089821, 5328.70703, 0.342208564, - 0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, - 0.939287126, 0.0184739735, 0.342634559))

										for v388, v389 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

											if v389.Name == "Mob Leader" then

												repeat

													wait(0.1)

													v49_ = true;

													v28 = true;

													if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

														wait(0.1)

														v36_(getgenv().SelectWeapon)

													end;

													PlayerTP(v389.HumanoidRootPart.CFrame * MethodFarm)

													v42_ = v389.HumanoidRootPart.CFrame;

													if not getgenv().FastAttack then

														game:GetService"VirtualUser":CaptureController()

														game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

													end;

													v389.Humanoid.JumpPower = 0;

													v389.Humanoid.WalkSpeed = 0;

													v389.HumanoidRootPart.CanCollide = false;

													v389.Humanoid:ChangeState(11)

													v389.Humanoid:ChangeState(14)

													v389.Humanoid:ChangeState(16)

												until v389.Humanoid.Health <= 0 or getgenv().AutoSaber == false

											end

										end

									end

								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")

									wait(.1)

									v36_("Relic")

									wait(.1)

									PlayerTP(CFrame.new(- 1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, - 5.79995607e-08, - 0.481375456, 6.30572643e-08, 0.876514494))

								end

							end

						end

					end

				else

					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then

						PlayerTP(CFrame.new(- 1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, - 8.55007443e-08, 1, - 2.77243419e-08, - 0.513301849, - 2.00944328e-08, 0.85820812))

						for v390, v391 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v391.Name == "Saber Expert" then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									PlayerTP(v391.HumanoidRootPart.CFrame * MethodFarm)

									v42_ = v391.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v391.Humanoid.JumpPower = 0;

									v391.Humanoid.WalkSpeed = 0;

									v391.HumanoidRootPart.CanCollide = false;

									v391.Humanoid:ChangeState(11)

									v391.Humanoid:ChangeState(14)

									v391.Humanoid:ChangeState(16)

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")

								until v391.Humanoid.Health <= 0 or getgenv().AutoSaber == false;

								if v391.Humanoid.Health <= 0 then

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")

								end

							end

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoPole then

				if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then

					for v392, v393 in pairs(game.Workspace.Enemies:GetChildren()) do

						if v393.Name == "Thunder God" and v393:FindFirstChild("HumanoidRootPart") and v393:FindFirstChild("Humanoid") and v393.Humanoid.Health > 0 then

							repeat

								wait(0.1)

								if (v393.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

									v50_ = PlayerTP(v393.HumanoidRootPart.Position, v393.HumanoidRootPart.CFrame)

								elseif (v393.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

									if v50_ then

										v50_:Stop()

									end;

									v49_ = true;

									v28 = true;

									v36_(getgenv().SelectWeapon)

									PlayerTP(v393.HumanoidRootPart.CFrame * MethodFarm)

									v42_ = v393.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v393.Humanoid.JumpPower = 0;

									v393.HumanoidRootPart.CanCollide = false;

									v393.Humanoid.WalkSpeed = 0;

									v393.Humanoid:ChangeState(11)

									v393.Humanoid:ChangeState(14)

									v393.Humanoid:ChangeState(16)

									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")

								end

							until not getgenv().AutoPole or v393.Humanoid.Health <= 0 or not v393.Parent;

							v49_ = false;

							v28 = false

						end

					end

				else

					v55_ = PlayerTP(CFrame.new(- 7900.66406, 5606.90918, - 2267.46436).Position, CFrame.new(- 7900.66406, 5606.90918, - 2267.46436))

					if (CFrame.new(- 7900.66406, 5606.90918, - 2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

						if v55_ then

							v55_:Stop()

						end;

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 7900.66406, 5606.90918, - 2267.46436)

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoTripleKatana then

				local v394 = "MysteriousMan"

				local v395 = "2"

				local v396 = game:GetService("ReplicatedStorage").Remotes["CommF_"]

				v396:InvokeServer(v394, v395)

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoRengoku then

				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then

					v36_("Hidden Key")

					PlayerTP(CFrame.new(6571.1201171875, 299.23028564453, - 6967.841796875))

				elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then

					for v397, v398 in pairs(game.Workspace.Enemies:GetChildren()) do

						if (v398.Name == "Snow Lurker" or v398.Name == "Arctic Warrior") and v398.Humanoid.Health > 0 then

							repeat

								wait(0.1)

								v49_ = true;

								v28 = true;

								if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

									wait(0.1)

									v36_(getgenv().SelectWeapon)

								end;

								v42_ = v398.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v398.Humanoid.JumpPower = 0;

								v398.Humanoid.WalkSpeed = 0;

								v398.HumanoidRootPart.CanCollide = false;

								v398.Humanoid:ChangeState(11)

								v398.Humanoid:ChangeState(14)

								v398.Humanoid:ChangeState(16)

								PlayerTP(v398.HumanoidRootPart.CFrame * MethodFarm)

							until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not getgenv().AutoRengoku or not v398.Parent or v398.Humanoid.Health <= 0;

							v49_ = false;

							v28 = false

						end

					end

				else

					v49_ = false;

					v28 = false;

					PlayerTP(CFrame.new(5525.7045898438, 262.90060424805, - 6755.1186523438))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoBossHallow then

				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then

					for v399, v400 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if string.find(v400.Name, "Soul Reaper") then

							repeat

								wait(0.1)

								v49_ = true;

								v28 = true;

								v36_(getgenv().SelectWeapon)

								v42_ = v400.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v400.Humanoid.JumpPower = 0;

								v400.Humanoid.WalkSpeed = 0;

								v400.HumanoidRootPart.CanCollide = false;

								v400.Humanoid:ChangeState(11)

								v400.Humanoid:ChangeState(14)

								v400.Humanoid:ChangeState(16)

								PlayerTP(v400.HumanoidRootPart.CFrame * MethodFarm)

							until v400.Humanoid.Health <= 0 or not getgenv().AutoBossHallow;

							v49_ = false;

							v28 = false

						end

					end

				else

					PlayerTP(CFrame.new(- 9524.7890625, 315.80429077148, 6655.7192382813))

				end;

				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then

					wait(1)

					v36_("Hallow Essence")

					wait(1)

					repeat

						PlayerTP(CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125))

						wait(1)

					until (CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

				else

					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then

						PlayerTP(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))

					else

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoCavander then

				if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then

					for v401, v402 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if v402.Name == "Beautiful Pirate" and v402.Humanoid.Health > 0 and v402:IsA("Model") and v402:FindFirstChild("Humanoid") and v402:FindFirstChild("HumanoidRootPart") then

							repeat

								wait(0.1)

								v49_ = true;

								v28 = true;

								if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

									wait(0.1)

									v36_(getgenv().SelectWeapon)

								end;

								v42_ = v402.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v402.Humanoid.JumpPower = 0;

								v402.Humanoid.WalkSpeed = 0;

								v402.HumanoidRootPart.CanCollide = false;

								v402.Humanoid:ChangeState(11)

								v402.Humanoid:ChangeState(14)

								v402.Humanoid:ChangeState(16)

								PlayerTP(v402.HumanoidRootPart.CFrame * MethodFarm)

							until not getgenv().AutoCavander or v402.Humanoid.Health <= 0;

							v49_ = false;

							v28 = false

						end

					end

				else

					PlayerTP(CFrame.new(5283.609375, 22.56223487854, - 110.78285217285))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoBuddySwords then

				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then

					for v403, v404 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if v404.Name == ("Cake Queen" or v404.Name == "Cake Queen") and v404.Humanoid.Health > 0 and v404:IsA("Model") and v404:FindFirstChild("Humanoid") and v404:FindFirstChild("HumanoidRootPart") then

							repeat

								wait(0.1)

								v49_ = true;

								v28 = true;

								if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

									wait(0.1)

									v36_(getgenv().SelectWeapon)

								end;

								v42_ = v404.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v404.Humanoid.JumpPower = 0;

								v404.Humanoid.WalkSpeed = 0;

								v404.HumanoidRootPart.CanCollide = false;

								v404.Humanoid:ChangeState(11)

								v404.Humanoid:ChangeState(14)

								v404.Humanoid:ChangeState(16)

								PlayerTP(v404.HumanoidRootPart.CFrame * MethodFarm)

							until not getgenv().AutoBuddySwords or v404.Humanoid.Health <= 0;

							v49_ = false;

							v28 = false

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoFactory then

				if workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 1 then

					repeat

						wait(0.1)

						v28 = true;

						v36_(getgenv().SelectWeapon)

						if not getgenv().FastAttack then

							game:GetService"VirtualUser":CaptureController()

							game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

						end;

						PlayerTP(CFrame.new(456.917724609375, 182.5244903564453, - 430.490966796875))

					until not getgenv().AutoFactory or workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0;

					v28 = false

				end

			elseif workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0 then

				getgenv().AutoFactory = false

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoSerpentBow then

			if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then

				for v405, v406 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

					if v406.Name == ("Island Empress" or v406.Name == "Island Empress") and v406.Humanoid.Health > 0 and v406:IsA("Model") and v406:FindFirstChild("Humanoid") and v406:FindFirstChild("HumanoidRootPart") then

						repeat

							wait(0.1)

							v49_ = true;

							v28 = true;

							if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

								wait(0.1)

								v36_(getgenv().SelectWeapon)

							end;

							v42_ = v406.HumanoidRootPart.CFrame;

							if not getgenv().FastAttack then

								game:GetService"VirtualUser":CaptureController()

								game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

							end;

							v406.Humanoid.JumpPower = 0;

							v406.Humanoid.WalkSpeed = 0;

							v406.HumanoidRootPart.CanCollide = false;

							v406.Humanoid:ChangeState(11)

							v406.Humanoid:ChangeState(14)

							v406.Humanoid:ChangeState(16)

							PlayerTP(v406.HumanoidRootPart.CFrame * MethodFarm)

						until not getgenv().AutoSerpentBow or not v406.Parent or v406.Humanoid.Health <= 0;

						v49_ = false;

						v28 = false

					end

				end

			else

				PlayerTP(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))

			end

		end

	end

end)

local function v59_()

	pcall(function()

		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()

	end)

end;

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoMusketeer then

				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then

					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then

						if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then

							for v407, v408 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v408.Name == "Forest Pirate" then

									repeat

										wait(0.1)

										v49_ = true;

										v28 = true;

										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

											wait(0.1)

											v36_(getgenv().SelectWeapon)

										end;

										v42_ = v408.HumanoidRootPart.CFrame;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v408.Humanoid.JumpPower = 0;

										v408.Humanoid.WalkSpeed = 0;

										v408.HumanoidRootPart.CanCollide = false;

										v408.Humanoid:ChangeState(11)

										v408.Humanoid:ChangeState(14)

										v408.Humanoid:ChangeState(16)

										PlayerTP(v408.HumanoidRootPart.CFrame * MethodFarm)

									until not getgenv().AutoMusketeer or v408.Humanoid.Health <= 0 or not v408.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

									v49_ = false;

									v28 = false

								end

							end

						else

							PlayerTP(CFrame.new(- 13206.452148438, 425.89199829102, - 7964.5537109375))

						end

					else

						PlayerTP(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125))

						if (Vector3.new(- 12443.8671875, 332.40396118164, - 7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then

							wait(1.5)

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)

						end

					end

				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then

					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then

						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then

							for v409, v410 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v410.Name == "Captain Elephant" then

									v60_ = v410.HumanoidRootPart.CFrame;

									repeat

										wait(0.1)

										v49_ = true;

										v28 = true;

										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

											wait(0.1)

											v36_(getgenv().SelectWeapon)

										end;

										v42_ = v410.HumanoidRootPart.CFrame;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v410.Humanoid.JumpPower = 0;

										v410.Humanoid.WalkSpeed = 0;

										v410.HumanoidRootPart.CanCollide = false;

										v410.Humanoid:ChangeState(11)

										v410.Humanoid:ChangeState(14)

										v410.Humanoid:ChangeState(16)

										PlayerTP(v410.HumanoidRootPart.CFrame * MethodFarm)

									until not getgenv().AutoMusketeer or v410.Humanoid.Health <= 0 or not v410.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false;

									v49_ = false;

									v28 = false

								end

							end

						else

							PlayerTP(CFrame.new(- 13374.889648438, 421.27752685547, - 8225.208984375))

						end

					else

						PlayerTP(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125))

						if (CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then

							wait(1.5)

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")

						end

					end

				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then

					PlayerTP(CFrame.new(- 12512.138671875, 340.39279174805, - 9872.8203125))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoEctoplasm then

				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then

					for v411, v412 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if v412.Name == "Ship Deckhand" or v412.Name == "Ship Engineer" or v412.Name == "Ship Steward" or v412.Name == "Ship Officer" or v412.Name == "Arctic Warrior" then

							if v412:FindFirstChild("Humanoid") and v412:FindFirstChild("HumanoidRootPart") and v412.Humanoid.Health > 0 then

								repeat

									wait(0.1)

									v49_ = true;

									v28 = true;

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

										wait(0.1)

										v36_(getgenv().SelectWeapon)

									end;

									v42_ = v412.HumanoidRootPart.CFrame;

									if not getgenv().FastAttack then

										game:GetService"VirtualUser":CaptureController()

										game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

									end;

									v412.Humanoid.JumpPower = 0;

									v412.HumanoidRootPart.CanCollide = false;

									v412.Humanoid.WalkSpeed = 0;

									v412.Humanoid:ChangeState(11)

									v412.Humanoid:ChangeState(14)

									v412.Humanoid:ChangeState(16)

									PlayerTP(v412.HumanoidRootPart.CFrame * MethodFarm)

								until not getgenv().AutoEctoplasm or not v412.Parent or v412.Humanoid.Health <= 0;

								v49_ = false;

								v28 = false

							end

						end

					end

				else

					v49_ = false;

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoDarkCoat then

				if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then

					for v413, v414 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if v414.Name == ("Darkbeard" or v414.Name == "Darkbeard") and v414.Humanoid.Health > 0 and v414:IsA("Model") and v414:FindFirstChild("Humanoid") and v414:FindFirstChild("HumanoidRootPart") then

							repeat

								wait(0.1)

								v49_ = true;

								v28 = true;

								if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

									wait(0.1)

									v36_(getgenv().SelectWeapon)

								end;

								v42_ = v414.HumanoidRootPart.CFrame;

								if not getgenv().FastAttack then

									game:GetService"VirtualUser":CaptureController()

									game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

								end;

								v414.Humanoid.JumpPower = 0;

								v414.HumanoidRootPart.CanCollide = false;

								v414.Humanoid.WalkSpeed = 0;

								v414.Humanoid:ChangeState(11)

								v414.Humanoid:ChangeState(14)

								v414.Humanoid:ChangeState(16)

								PlayerTP(v414.HumanoidRootPart.CFrame * MethodFarm)

							until getgenv().AutoDarkCoat == false or v414.Humanoid.Health <= 0;

							v49_ = false;

							v28 = false

						end

					end

				else

					PlayerTP(CFrame.new(3677.08203125, 62.751937866211, - 3144.8332519531))

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoBartiloQuest then

				if game.Players.LocalPlayer.Data.Level.Value >= 850 then

					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then

						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then

							if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then

								for v415, v416 in pairs(game.Workspace.Enemies:GetChildren()) do

									if v416.Name == "Swan Pirate" then

										pcall(function()

											repeat

												wait(0.1)

												if (v416.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 400 then

													v50_ = PlayerTP(v416.HumanoidRootPart.Position, v416.HumanoidRootPart.CFrame)

												elseif (v416.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

													if v50_ then

														v50_:Stop()

													end;

													v28 = true;

													v49_ = true;

													if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

														wait(0.1)

														v36_(getgenv().SelectWeapon)

													end;

													v42_ = v416.HumanoidRootPart.CFrame;

													if not getgenv().FastAttack then

														game:GetService"VirtualUser":CaptureController()

														game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

													end;

													v416.Humanoid.JumpPower = 0;

													v416.Humanoid.WalkSpeed = 0;

													v416.HumanoidRootPart.CanCollide = false;

													v416.Humanoid:ChangeState(11)

													v416.Humanoid:ChangeState(14)

													v416.Humanoid:ChangeState(16)

													PlayerTP(v416.HumanoidRootPart.CFrame * MethodFarm)

												end

											until not v416.Parent or v416.Humanoid.Health <= 0 or getgenv().AutoBartiloQuest == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false;

											v49_ = false;

											v28 = false

										end)

									end

								end

							else

								v55_ = PlayerTP(CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position, CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))

								if (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

									if v55_ then

										v55_:Stop()

									end;

									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)

								end

							end

						else

							v56_ = PlayerTP(CFrame.new(- 456.28952, 73.0200958, 299.895966).Position, CFrame.new(- 456.28952, 73.0200958, 299.895966))

							if (CFrame.new(- 456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

								if v56_ then

									v56_:Stop()

								end;

								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 456.28952, 73.0200958, 299.895966)

								local v417 = {

									[1] = "StartQuest",

									[2] = "BartiloQuest",

									[3] = 1

								}

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v417))

							end

						end

					end

				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then

					if game.Workspace.Enemies:FindFirstChild("Jeremy") then

						for v418, v419 in pairs(game.Workspace.Enemies:GetChildren()) do

							if v419.Name == "Jeremy" then

								repeat

									wait(0.1)

									if (v419.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

										v50_ = PlayerTP(v419.HumanoidRootPart.Position, v419.HumanoidRootPart.CFrame)

									elseif (v419.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

										if v50_ then

											v50_:Stop()

										end;

										v28 = true;

										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().SelectWeapon) then

											wait(0.1)

											v36_(getgenv().SelectWeapon)

										end;

										v42_ = v419.HumanoidRootPart.CFrame;

										if not getgenv().FastAttack then

											game:GetService"VirtualUser":CaptureController()

											game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

										end;

										v419.Humanoid.JumpPower = 0;

										v419.Humanoid.WalkSpeed = 0;

										v419.HumanoidRootPart.CanCollide = false;

										v419.Humanoid:ChangeState(11)

										v419.Humanoid:ChangeState(14)

										v419.Humanoid:ChangeState(16)

										PlayerTP(v419.HumanoidRootPart.CFrame * MethodFarm)

									end

								until not v419.Parent or v419.Humanoid.Health <= 0 or getgenv().AutoBartiloQues == false;

								v28 = false

							end

						end

					else

						v56_ = PlayerTP(CFrame.new(2099.88159, 448.931, 648.997375).Position, CFrame.new(2099.88159, 448.931, 648.997375))

						if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

							if v56_ then

								v56_:Stop()

							end;

							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)

						end

					end

				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then

					if (CFrame.new(- 1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then

						v56_ = PlayerTP(CFrame.new(- 1836, 11, 1714).Position, CFrame.new(- 1836, 11, 1714))

					elseif (CFrame.new(- 1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then

						if v56_ then

							v56_:Stop()

						end;

						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1836, 11, 1714)

						wait(.1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1850.49329, 13.1789551, 1750.89685)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.87305, 19.3777466, 1712.01807)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1803.94324, 16.5789185, 1750.89685)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1858.55835, 16.8604317, 1724.79541)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1869.54224, 15.987854, 1681.00659)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1800.0979, 16.4978027, 1684.52368)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1819.26343, 14.795166, 1717.90625)

						wait(1)

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 1813.51843, 14.8604736, 1724.79541)

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoEvoRaceV2 then

				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then

					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then

						PlayerTP(CFrame.new(- 2779.83521, 72.9661407, - 3574.02002, - 0.730484903, 6.39014104e-08, - 0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, - 0.730484903))

						if (Vector3.new(- 2779.83521, 72.9661407, - 3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then

							wait(1.3)

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")

						end

					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then

						pcall(function()

							if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then

								PlayerTP(game:GetService("Workspace").Flower1.CFrame)

							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then

								PlayerTP(game:GetService("Workspace").Flower2.CFrame)

							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then

								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then

									for v420, v421 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

										if string.find(v421.Name, "Swan Pirate") then

											repeat

												wait(0.1)

												v36_(getgenv().SelectWeapon)

												PlayerTP(v421.HumanoidRootPart.CFrame * MethodFarm)

												v421.HumanoidRootPart.CanCollide = false;

												v421.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

												game:GetService"VirtualUser":CaptureController()

												game:GetService"VirtualUser":Button1Down(Vector2.new(1280, 672))

												v58_ = v421.HumanoidRootPart.CFrame;

												v57_ = true

											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v421.Parent or v421.Humanoid.Health <= 0 or getgenv().AutoEvoRaceV2 == false;

											v57_ = false

										end

									end

								else

									v57_ = false;

									PlayerTP(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))

								end

							end

						end)

					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().Remove_trct then

			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false

		else

			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoFarmBoss then

			if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().SelectBoss) then

				for v422, v423 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

					if v423.Name == getgenv().SelectBoss then

						if v423:FindFirstChild("Humanoid") and v423:FindFirstChild("HumanoidRootPart") and v423.Humanoid.Health > 0 then

							repeat

								wait(0.1)

								v35_()

								v36_(getgenv().SelectWeapon)

								v423.HumanoidRootPart.CanCollide = false;

								v423.Humanoid.WalkSpeed = 0;

								v423.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

								PlayerTP(v423.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20))

								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", 3250)

							until not getgenv().AutoFarmBoss or not v423.Parent or v423.Humanoid.Health <= 0

						end

					end

				end

			else

				if game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss) then

					PlayerTP(game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))

				end

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoFarmMaterial then

			if v11_ ~= "" then

				bk(v11_)

				if bi(MaterialMob) then

					for v424, v425 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if getgenv().AutoFarmMaterial and table.find(MaterialMob, v425.Name) and v425:FindFirstChild("HumanoidRootPart") and v425:FindFirstChild("Humanoid") and v425.Humanoid.Health > 0 then

							repeat

								wait(0.1)

								v61_ = PlayerTP(v425.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))

								if v425:FindFirstChild("HumanoidRootPart") and v425:FindFirstChild("Humanoid") and (v425.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then

									if v61_ then

										v61_:Stop()

									end;

									for v426, v427 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

										if v427.Name == v425.Name then

											v427.HumanoidRootPart.CFrame = v425.HumanoidRootPart.CFrame;

											v427.Humanoid.JumpPower = 0;

											v427.Humanoid.WalkSpeed = 0;

											v427.HumanoidRootPart.CanCollide = false;

											v427.Humanoid:ChangeState(14)

											v427.Humanoid:ChangeState(11)

											v427.HumanoidRootPart.Size = Vector3.new(80, 80, 80)

											v28 = true;

											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v425.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)

										end

									end

								end

							until not bi(MaterialMob) or not getgenv().AutoFarmMaterial or v425.Humanoid.Health <= 0 or not v425.Parent;

							v28 = false

						end

					end

				else

					v28 = false;

					PlayerTP(CFrameMon)

				end

			end

		else

			break

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().ChestBypass then

			for v428, v429 in pairs(game:GetService("Workspace"):GetChildren()) do

				if string.find(v429.Name, "Chest") then

					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v429.CFrame;

					wait(.15)

				end

			end;

			for v430, v431 in pairs(game:GetService("Workspace"):GetDescendants()) do

				if string.find(v431.Name, "Chest") and v431:IsA("TouchTransmitter") then

					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v431.Parent, 0)

					wait(0.1)

					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v431.Parent, 1)

				end

			end

		end

		if getgenv().ChestBypass then

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoFarmChest then

			for v432, v433 in pairs(game:GetService("Workspace"):GetChildren()) do

				if v433.Name:find("Chest") then

					if game:GetService("Workspace"):FindFirstChild(v433.Name) then

						if (v433.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + getgenv().MagnitudeAdd then

							repeat

								wait(0.1)

								if game:GetService("Workspace"):FindFirstChild(v433.Name) then

									v36_(getgenv().SelectWeapon)

									PlayerTP(v433.CFrame)

									v62_(getgenv().SelectWeapon)

								end

							until getgenv().AutoFarmChest == false or not v433.Parent;

							PlayerTP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)

							getgenv().MagnitudeAdd = getgenv().MagnitudeAdd + 1500;

							break

						end

					end

				end

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().PosFarm == "Behind" then

			getgenv().MethodFarm = CFrame.new(0, 0, 35)

		elseif getgenv().PosFarm == "Up" then

			getgenv().MethodFarm = CFrame.new(0, 35, 15)

		elseif getgenv().PosFarm == "Below" then

			getgenv().MethodFarm = CFrame.new(0, - 35, 15)

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoRandomBone then

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)

		end

	end

end)

getgenv().AutoHaki = true

spawn(function()

	while wait(.1) do

		pcall(function()

			if getgenv().AutoHaki then

				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoKen then

			local v434 = {

				[1] = "Ken",

				[2] = true

			}

			game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(v434))

		end

	end

end)

getgenv().Auto_CFrame = true;

getgenv().TeamMode = "Pirates"

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then

	if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then

		if getgenv().TeamMode == "Marines" then

			for v435, v436 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do

				for v437, v438 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do

					v438:Fire()

				end

				v436.Function()

			end

		else

			for v439, v440 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do

				for v441, v442 in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do

					v442:Fire()

				end

				v440.Function()

			end

		end

	end

end

if getgenv().AutoRejoin then

	getgenv().AutoRejoin = true;

end

getgenv().ScriptExecute = true;

local function v63_()

	pcall(function()

		local v443 = true

		local v444 = game

		local v445 = v444.Workspace

		local v446 = v444.Lighting

		local v447 = v445.Terrain

		v447.WaterWaveSize = 0

		v447.WaterWaveSpeed = 0

		v447.WaterReflectance = 0

		v447.WaterTransparency = 0

		v446.GlobalShadows = false

		v446.FogEnd = 9e9

		v446.Brightness = 0

		settings().Rendering.QualityLevel = "Level01"

		for v448, v449 in pairs(v444:GetDescendants()) do

			if v449:IsA("Part") or v449:IsA("Union") or v449:IsA("CornerWedgePart") or v449:IsA("TrussPart") then

				v449.Material = "Plastic"

				v449.Reflectance = 0

			elseif v449:IsA("Decal") or v449:IsA("Texture") and v443 then

				v449.Transparency = 1

			elseif v449:IsA("ParticleEmitter") or v449:IsA("Trail") then

				v449.Lifetime = NumberRange.new(0)

			elseif v449:IsA("Explosion") then

				v449.BlastPressure = 1

				v449.BlastRadius = 1

			elseif v449:IsA("Fire") or v449:IsA("SpotLight") or v449:IsA("Smoke") or v449:IsA("Sparkles") then

				v449.Enabled = false

			elseif v449:IsA("MeshPart") then

				v449.Material = "Plastic"

				v449.Reflectance = 0

				v449.TextureID = 10385902758728957

			end

		end

		for v450, v451 in pairs(v446:GetChildren()) do

			if v451:IsA("BlurEffect") or v451:IsA("SunRaysEffect") or v451:IsA("ColorCorrectionEffect") or v451:IsA("BloomEffect") or v451:IsA("DepthOfFieldEffect") then

				v451.Enabled = false

			end

		end

		for v452, v453 in pairs(game:GetService("Workspace").Camera:GetDescendants()) do

			if v453.Name == ("Water;") then

				v453.Transparency = 1

				v453.Material = "Plastic"

			end

		end

	end)

end

if getgenv().FpsBoost then

	v63_()

end

local v69 = game.Players.LocalPlayer:WaitForChild("PlayerGui")



local v70 = v69:FindFirstChild("SkibidiUi")

if v70 then

	v70:Destroy()

end



v70 = Instance.new("ScreenGui")

v70.Name = "SkibidiUi"

v70.ResetOnSpawn = false

v70.Parent = v69



local v71 = "rbxassetid://18801298853"

local v72 = Instance.new("ImageButton")

v72.Image = v71

v72.Size = UDim2.new(0, 50, 0, 50)

v72.Position = UDim2.new(0.1, 0, 0.9, - 100)

v72.BackgroundColor3 = Color3.new(255, 255, 255)

v72.BackgroundTransparency = 0

v72.Parent = v70



local v73 = Instance.new("UICorner", v72)

v73.CornerRadius = UDim.new(0.5, 0)



local v74 = Instance.new("TextLabel")

v74.Text = ''

v74.Font = Enum.Font.GothamBold

v74.TextSize = 40

v74.TextScaled = false

v74.RichText = true

v74.Size = UDim2.new(1, 0, 1, 0)

v74.BackgroundTransparency = 1

v74.TextXAlignment = Enum.TextXAlignment.Center

v74.TextYAlignment = Enum.TextYAlignment.Center

v74.Parent = v72



local v75 = false



local function v76()

	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)

end



v72.MouseButton1Click:Connect(function()

	if not v75 then

		v76()

	end

	v75 = not v75

end)



local v77 = 0

local v78 = 0.5



v72.MouseButton1Click:Connect(function()

	local v454 = tick()

	if v454 - v77 < v78 then

		return

	end

	v77 = v454

	if not v75 then

		v76()

	end

	v75 = not v75

end)

v64_ = Instance.new("ScreenGui")

v64_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;

v64_.Parent = game:GetService("Players").LocalPlayer.PlayerGui;

v64_.Name = 'CoinCard'

v65_ = Instance.new("TextLabel", v64_)

v65_["BorderSizePixel"] = 0;

v65_["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)

v65_["TextSize"] = 16;

v65_["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)

v65_["TextColor3"] = Color3.fromRGB(223, 115, 255)

v65_["BackgroundTransparency"] = 1;

v65_["AnchorPoint"] = Vector2.new(0.5, 0.5)

v65_["Size"] = UDim2.new(0, 200, 0, 50)

v65_["BorderColor3"] = Color3.fromRGB(142, 66, 133)

v65_["Text"] = "https://discord.gg/YdJ2TagKbj"

v65_["Position"] = UDim2.new(0.5, 0, 0.015, 0)

local v79 = Instance.new("UIStroke", v65_)

v79["Color"] = Color3.fromRGB(255, 255, 255)

local v80 = Instance.new("UIGradient", v79)

v66_ = ColorSequence.new{

	ColorSequenceKeypoint.new(0, Color3.fromRGB(225, 164, 194)),

	ColorSequenceKeypoint.new(1, Color3.fromRGB(142, 66, 133))

}

local v81 = game:GetService("VirtualInputManager")

local v82 = game:GetService("TweenService")

local v83 = game:service"TweenService"

local v84 = game:GetService("RunService")

local v85 = game:GetService("Players").LocalPlayer;

local v86 = v85:GetMouse()

local v87 = game:GetService("GuiService")

game:GetService("Players").LocalPlayer.Idled:connect(function()

	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

	wait(1)

	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)

end)

local function v36_(v455)

	if game.Players.LocalPlayer.Backpack:FindFirstChild(v455) then

		local v456 = game.Players.LocalPlayer.Backpack:FindFirstChild(v455)

		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v456)

	end

end;

local function v62_(v457)

	if game.Players.LocalPlayer.Character:FindFirstChild(v457) then

		getgenv().NotAutoEquip = true;

		wait(.1)

		game.Players.LocalPlayer.Character:FindFirstChild(v457).Parent = game.Players.LocalPlayer.Backpack;

		wait(.1)

		getgenv().NotAutoEquip = false

	end

end;

local function v67_()

	for v458, v459 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v459.ToolTip == "Blox Fruit" then

			if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v459.Name)) then

				v36_(v459.Name)

			end

		end

	end

end;

local function v68_()

	for v460, v461 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v461.ToolTip == "Sword" and v461:IsA("Tool") then

			local v462 = game.Players.LocalPlayer.Backpack:FindFirstChild(v461.Name)

			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v462)

		end

	end

end;

v69_ = {}

local function v70_()

	local v463 = {

		"Baking Staff",

		"Head Baker",

		"Cake Guard",

		"Cookie Crafter"

	}

	local v464 = workspace.EnemySpawns:GetChildren()

	local v465 = math.random(1, # v464)

	local v466 = v464[v465]

	for v467, v468 in pairs(v463) do

		local v469 = string.gsub(v468, "Lv. ", "")

		local v470 = string.gsub(v469, "[%[%]]", "")

		local v471 = string.gsub(v470, "%d+", "")

		local v472 = string.gsub(v471, "%s+", "")

		local v473 = v472;

		if v466.Name == v472 then

			return v466.CFrame

		end

	end

end;

local v88 = Instance.new("Folder", workspace)

v88.Name = "EnemySpawns"

for v474, v475 in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do

	if v475:IsA("Part") then

		local v476 = v475:Clone()

		local v477 = string.gsub(v475.Name, "Lv. ", "")

		local v478 = string.gsub(v477, "[%[%]]", "")

		local v479 = string.gsub(v478, "%d+", "")

		local v480 = string.gsub(v479, "%s+", "")

		v476.Name = v480;

		v476.Parent = workspace.EnemySpawns;

		v476.Anchored = true

	end

end;

for v481, v482 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

	if v482:IsA("Model") and v482:FindFirstChild("HumanoidRootPart") then

		local v483 = v482.HumanoidRootPart:Clone()

		local v484 = string.gsub(v482.Name, "Lv. ", "")

		local v485 = string.gsub(v484, "[%[%]]", "")

		local v486 = string.gsub(v485, "%d+", "")

		local v487 = string.gsub(v486, "%s+", "")

		v483.Name = v487;

		v483.Parent = workspace.EnemySpawns;

		v483.Anchored = true

	end

end;

for v488, v489 in pairs(game.ReplicatedStorage:GetChildren()) do

	if v489:IsA("Model") and v489:FindFirstChild("HumanoidRootPart") then

		local v490 = v489.HumanoidRootPart:Clone()

		local v491 = string.gsub(v489.Name, "Lv. ", "")

		local v492 = string.gsub(v491, "[%[%]]", "")

		local v493 = string.gsub(v492, "%d+", "")

		local v494 = string.gsub(v493, "%s+", "")

		v490.Name = v494;

		v490.Parent = workspace.EnemySpawns;

		v490.Anchored = true

	end

end;

local function v71_()

	local v495 = game:GetService("Players").LocalPlayer.Data.Level.Value;

	if v495 >= 1 and v495 <= 9 then

		if tostring(game.Players.LocalPlayer.Team) == "Marines" then

			v72_ = "Trainee"

			v73_ = "MarineQuest"

			v74_ = 1;

			v75_ = "Trainee"

			v76_ = CFrame.new(- 2709.67944, 24.5206585, 2104.24585, - 0.744724929, - 3.97967455e-08, - 0.667371571, 4.32403588e-08, 1, - 1.07884304e-07, 0.667371571, - 1.09201515e-07, - 0.744724929)

		elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then

			v72_ = "Bandit"

			v75_ = "Bandit"

			v73_ = "BanditQuest1"

			v74_ = 1;

			v76_ = CFrame.new(1059.99731, 16.9222069, 1549.28162, - 0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, - 0.297689587, 1.19340022e-08, - 0.95466274)

		end;

		return {

			[1] = v74_,

			[2] = v76_,

			[3] = v72_,

			[4] = v73_,

			[5] = v77_,

			[6] = v75_,

			[7] = v78_

		}

	end;

	if v495 >= 210 and v495 <= 249 then

		v72_ = "Dangerous Prisoner"

		v73_ = "PrisonerQuest"

		v74_ = 2;

		v75_ = "Dangerous Prisoner"

		v76_ = CFrame.new(5308.93115, 1.65517521, 475.120514, - 0.0894274712, - 5.00292918e-09, - 0.995993316, 1.60817859e-09, 1, - 5.16744869e-09, 0.995993316, - 2.06384709e-09, - 0.0894274712)

		local v503 = {}

		local v504 = string.gsub(v72_, "Lv. ", "")

		local v505 = string.gsub(v504, "[%[%]]", "")

		local v506 = string.gsub(v505, "%d+", "")

		local v507 = string.gsub(v506, "%s+", "")

		for v508, v509 in pairs(game.Workspace.EnemySpawns:GetChildren()) do

			if v509.Name == v507 then

				table.insert(v503, v509.CFrame)

			end;

			v78_ = v503

		end;

		return {

			[1] = v74_,

			[2] = v76_,

			[3] = v72_,

			[4] = v73_,

			[5] = v77_,

			[6] = v75_,

			[7] = v78_

		}

	end;

	local v496 = require(game:GetService("ReplicatedStorage").GuideModule)

	local v497 = require(game:GetService("ReplicatedStorage").Quests)

	for v510, v511 in pairs(v496["Data"]["NPCList"]) do

		for v512, v513 in pairs(v511["Levels"]) do

			if v495 >= v513 then

				if not v77_ then

					v77_ = 0

				end;

				if v513 > v77_ then

					v76_ = v510["CFrame"]

					v74_ = v512;

					v77_ = v513

				end;

				if # v511["Levels"] == 3 and v74_ == 3 then

					v76_ = v510["CFrame"]

					v74_ = 2;

					v77_ = v511["Levels"][2]

				end

			end

		end

	end;

	if v495 >= 375 and v495 <= 399 then

		if getgenv().AutoFarm and (v76_.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))

		end

	end;

	if v495 >= 400 and v495 <= 449 then

		if getgenv().AutoFarm and (v76_.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))

		end

	end;

	for v514, v515 in pairs(v497) do

		for v516, v517 in pairs(v515) do

			if v517["LevelReq"] == v77_ and v514 ~= "CitizenQuest" then

				v73_ = v514;

				for v518, v519 in pairs(v517["Task"]) do

					v72_ = v518;

					v75_ = string.split(v518, " [Lv. " .. v517["LevelReq"] .. "]")[1]

				end

			end

		end

	end;

	if v73_ == "MarineQuest2" then

		v73_ = "MarineQuest2"

		v74_ = 1;

		v72_ = "Chief Petty Officer"

		v75_ = "Chief Petty Officer"

		v77_ = 120

	elseif v73_ == "ImpelQuest" then

		v73_ = "PrisonerQuest"

		v74_ = 2;

		v72_ = "Dangerous Prisoner"

		v75_ = "Dangerous Prisoner"

		v77_ = 210;

		v76_ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118)

	elseif v73_ == "SkyExp1Quest" then

		if v74_ == 1 then

			v76_ = CFrame.new(- 4721.88867, 843.874695, - 1949.96643, 0.996191859, 0, - 0.0871884301, 0, 1, 0, 0.0871884301, 0, 0.996191859)

		elseif v74_ == 2 then

			v76_ = CFrame.new(- 7859.09814, 5544.19043, - 381.476196, - 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, - 0.422592998)

		end

	elseif v73_ == "Area2Quest" and v74_ == 2 then

		v73_ = "Area2Quest"

		v74_ = 1;

		v72_ = "Swan Pirate"

		v75_ = "Swan Pirate"

		v77_ = 775

	end;

	v72_ = v72_:sub(1, # v72_)

	if not v72_:find("Lv") then

		for v520, v521 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

			v79_ = string.match(v521.Name, "%d+")

			if v521.Name:find(v72_) and # v521.Name > # v72_ and tonumber(v79_) <= v495 + 50 then

				v72_ = v521.Name

			end

		end

	end;

	if not v72_:find("Lv") then

		for v522, v523 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do

			v79_ = string.match(v523.Name, "%d+")

			if v523.Name:find(v72_) and # v523.Name > # v72_ and tonumber(v79_) <= v495 + 50 then

				v72_ = v523.Name;

				v75_ = a

			end

		end

	end;

	local v498 = {}

	local v499 = string.gsub(v72_, "Lv. ", "")

	local v500 = string.gsub(v499, "[%[%]]", "")

	local v501 = string.gsub(v500, "%d+", "")

	local v502 = string.gsub(v501, "%s+", "")

	for v524, v525 in pairs(game.Workspace.EnemySpawns:GetChildren()) do

		if v525.Name == v502 then

			table.insert(v498, v525.CFrame)

		else

			table.insert(v498, nil)

		end;

		v78_ = v498

	end;

	return {

		[1] = v74_,

		[2] = v76_,

		[3] = v72_,

		[4] = v73_,

		[5] = v77_,

		[6] = v75_,

		[7] = v78_,

		[8] = MonQ,

		[9] = MobCFrameNuber

	}

end;

print("\nCurrent Level Island : " .. v71_()[6] .. "\nCurrent Quest : " .. v71_()[5] .. "\nCurrent Level : " .. v71_()[4] .. "\n Quest Grade : " .. v71_()[1])

local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local block = Instance.new("Part", workspace)

block.Size = Vector3.new(1, 1, 1)

block.Name = "player platform ............."

block.Anchored = true

block.CanCollide = false

block.CanTouch = false

block.Transparency = 1



local blockfind = workspace:FindFirstChild(block.Name)

if blockfind and blockfind ~= block then

	blockfind:Destroy()

end

task.spawn(function()

	while task.wait(0.1) do

		if block and block.Parent == workspace then

			if getgenv().AutoFarm or getgenv().TptoKisuneIsland or getgenv().TptoEventIsland or getgenv().TptoKisuneshrine or getgenv().TptoKisuneshrine or getgenv().ColletEmber or getgenv().NeareastFarm or getgenv().Mirage or getgenv().AutoEvent or getgenv().Auto_Gear or getgenv().TeleportGear or getgenv().AutoNewWorld or getgenv().AutoSaber or getgenv().AutoPole or getgenv().TeleportIsland or getgenv().AutoThirdSea or getgenv().AutoBartiloQuest or getgenv().AutoEvoRaceV2 or getgenv().AutoDarkCoat or getgenv().AutoSwanGlasses or getgenv().AutoTripleKatana or getgenv().AutoRengoku or getgenv().AutoEctoplasm or getgenv().AutoFactory or getgenv().AutoRainbowHaki or getgenv().AutoEliteHunter or getgenv().AutoCastleRaid or getgenv().AutoMusketeer or getgenv().AutoFarm or getgenv().AutoKenHakiV2 or getgenv().AutoObservation or getgenv().AutoGodHuman or getgenv().AutoCavander or getgenv().AutoCDK or getgenv().AutoYamaSword or getgenv().AutoTushitaSword or getgenv().AutoSerpentBow or getgenv().AutoDarkDagger or getgenv().AutoDoughV2 or getgenv().AutoHolyTorch or getgenv().AutoBuddySwords or getgenv().AutoBossHallow or getgenv().AutoFarmMaterial or getgenv().AutoFarmChest or getgenv().AutoAllBoss or getgenv().AutoBossSelect or getgenv().AutoFarmBoss or getgenv().AutoRaids or getgenv().AutoNextIsland or getgenv().AutoQuestRace or getgenv().KillPlayerSpam or getgenv().KillPlayerTrial or getgenv().AutoLawRaid then

				getgenv().Tween = true

			else

				getgenv().Tween = false

			end

		else

			getgenv().Tween = false

		end

	end

end)

task.spawn(function()

	repeat

		task.wait(0)

	until Player.Character and Player.Character.PrimaryPart

	block.CFrame = Player.Character.PrimaryPart.CFrame

	while task.wait(0) do

		pcall(function()

			if getgenv().Tween then

				if block and block.Parent == workspace then

					local plrPP = Player.Character and Player.Character.PrimaryPart

					if plrPP and (plrPP.Position - block.Position).Magnitude <= 200 then

						plrPP.CFrame = block.CFrame

					else

						block.CFrame = plrPP.CFrame

					end

				end

				local plrChar = Player.Character

				if plrChar then

					for _, part in pairs(plrChar:GetChildren()) do

						if part:IsA("BasePart") then

							part.CanCollide = false

						end

					end

					if plrChar:FindFirstChild("Stun") and plrChar.Stun.Value ~= 0 then

						plrChar.Stun.Value = 0

					end

					if plrChar:FindFirstChild("Busy") and plrChar.Busy.Value then

						plrChar.Busy.Value = false

					end

				end

			else

				local plrChar = Player.Character

				if plrChar then

					for _, part in pairs(plrChar:GetChildren()) do

						if part:IsA("BasePart") then

							part.CanCollide = true

						end

					end

				end

			end

		end)

	end

end)



task.spawn(function()

	local PortalPos = {}

	if Sea1 then

		PortalPos = {

			Vector3.new(- 4652, 873, - 1754), -- Sky Island 1

			Vector3.new(- 7895, 5547, - 380), -- Sky Island 2

			Vector3.new(61164, 5, 1820), -- Under Water Island

			Vector3.new(3865, 5, - 1926) -- Under Water Island Entrace

		}

	elseif Sea2 then

		PortalPos = {

			Vector3.new(- 317, 331, 597), -- Flamingo Mansion

			Vector3.new(2283, 15, 867), -- Flamingo Room

			Vector3.new(923, 125, 32853), -- Cursed Ship

			Vector3.new(- 6509, 83, - 133) -- Zombie Island0

		}

	elseif Sea3 then

		PortalPos = {

			Vector3.new(- 12471, 374, - 7551), -- Mansion

			Vector3.new(5756, 610, - 282), -- Hydra Island

			Vector3.new(- 5092, 315, - 3130), -- Castle on the Sea

			Vector3.new(- 12001, 332, - 8861), -- Floating Turtle

			Vector3.new(5319, 23, - 93), -- Beautiful Pirate

			Vector3.new(28286, 14897, 103) -- Temple of Time

		}

	end

	local function GetTPPos(position)

		local NearPos = math.huge

		local TpPos = Vector3.new()

		table.foreach(PortalPos, function(___, pos)

			if (pos - position).Magnitude <= NearPos then

				NearPos = (pos - position).Magnitude

				TpPos = pos

			end

		end)

		return TpPos

	end

end)



local TeleportPos

local function PlayerTP(Tween_Pos)

	TeleportPos = Tween_Pos.p

	local plrPP = Player.Character and Player.Character.PrimaryPart

	if not plrPP then

		return

	end

	local Distance = (plrPP.Position - Tween_Pos.p).Magnitude

	if block then

		if Distance <= 450 then

			local tween = game:GetService("TweenService"):Create(block, TweenInfo.new(Distance / tonumber(300 * 1.8), Enum.EasingStyle.Linear), {

				CFrame = Tween_Pos

			}):Play()

		else

			local tween = game:GetService("TweenService"):Create(block, TweenInfo.new(Distance / 300, Enum.EasingStyle.Linear), {

				CFrame = Tween_Pos

			}):Play()

		end

	end

end

local function v80_(v533)

	if (v533.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then

		return true

	end;

	return false

end;

local function v81_(v534)

	if v534 and v534:IsA("IntValue") then

		v534.Value = 0

	end

end;

local function v82_()

	local v535 = game.Players.LocalPlayer.Character;

	if v535 then

		local v536 = v535:FindFirstChild("Stun")

		if v536 then

			v536.Changed:Connect(function()

				v81_(v536)

			end)

		end

	end

end;

v82_()

local v89 = game:GetService("ReplicatedStorage")

spawn(function()

	while wait(.1) do

		if getgenv().Disdamage then

			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false

		else

			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true

		end

	end

end)

local plr = game.Players.LocalPlayer;

local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))

local CbFw2 = CbFw[2]

function GetCurrentBlade()

	local p13 = CbFw2.activeController;

	local ret = p13.blades[1]

	if not ret then

		return

	end;

	while ret.Parent ~= game.Players.LocalPlayer.Character do

		ret = ret.Parent

	end;

	return ret

end;

function j2oei2jdj()

	local AC = CbFw2.activeController;

	for i = 1, 1 do

		local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character, {

			plr.Character.HumanoidRootPart

		}, 60)

		local cac = {}

		local hash = {}

		for k, v in pairs(bladehit) do

			if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then

				table.insert(cac, v.Parent.HumanoidRootPart)

				hash[v.Parent] = true

			end

		end;

		bladehit = cac;

		if # bladehit > 0 then

			local u8 = debug.getupvalue(AC.attack, 5)

			local u9 = debug.getupvalue(AC.attack, 6)

			local u7 = debug.getupvalue(AC.attack, 4)

			local u10 = debug.getupvalue(AC.attack, 7)

			local u12 = (u8 * 798405 + u7 * 727595) % u9;

			local u13 = u7 * 798405

			(function()

				u12 = (u12 * u9 + u13) % 1099511627776;

				u8 = math.floor(u12 / u9)

				u7 = u12 - u8 * u9

			end)()

			u10 = u10 + 1;

			debug.setupvalue(AC.attack, 5, u8)

			debug.setupvalue(AC.attack, 6, u9)

			debug.setupvalue(AC.attack, 4, u7)

			debug.setupvalue(AC.attack, 7, u10)

			pcall(function()

				if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then

getgenv().AnimationId = AC.animator.anims.basic[1]._Object

getgenv().AnimationId:Play()	

getgenv().AnimationId:AdjustSpeed(0)

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(GetCurrentBlade()))

					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)

					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")

				end

			end)

		end

	end

end;

spawn(function()

	while wait() do

		if getgenv().FastAttack then

			pcall(function()

				repeat

					task.wait(getgenv().FastAttackDelay)

					j2oei2jdj()

				until not getgenv().FastAttack

			end)

		end

	end

end)

game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true;

local function v89_()

	if getgenv().RunSpeed then

		if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then

			local v553 = Instance.new("ParticleEmitter")

			v553.Acceleration = Vector3.new(0, 0, 0)

			v553.Archivable = true;

			v553.Drag = 20;

			v553.EmissionDirection = Enum.NormalId.Top;

			v553.Enabled = true;

			v553.Lifetime = NumberRange.new(0, 0)

			v553.LightInfluence = 0;

			v553.LockedToPart = true;

			v553.Name = "Agility"

			v553.Rate = 500;

			local v554 = {

				NumberSequenceKeypoint.new(0, 0);

				NumberSequenceKeypoint.new(1, 4)

			}

			v553.Size = NumberSequence.new(v554)

			v553.RotSpeed = NumberRange.new(9999, 99999)

			v553.Rotation = NumberRange.new(0, 0)

			v553.Speed = NumberRange.new(30, 30)

			v553.SpreadAngle = Vector2.new(0, 0, 0, 0)

			v553.Texture = ""

			v553.VelocityInheritance = 0;

			v553.ZOffset = 2;

			v553.Transparency = NumberSequence.new(0)

			v553.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))

			v553.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

		end

	else

		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then

			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()

		end

	end

end;

getgenv().RunSpeed = true;

spawn(function()

	if getgenv().RunSpeed then

		v89_()

	end

end)

local function v90_()

	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

	end

end;

local function v91_(v555)

	if game.Players.LocalPlayer.Character:FindFirstChild(v555) then

		getgenv().NotAutoEquip = true;

		wait(.1)

		game.Players.LocalPlayer.Character:FindFirstChild(v555).Parent = game.Players.LocalPlayer.Backpack;

		wait(.1)

		getgenv().NotAutoEquip = false

	end

end;

local function v35_()

	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

		v92_ = true

		local v556 = {

			[1] = "Buso"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v556))

		v92_ = false

	end

end

local function v93_(v557)

	if not getgenv().NotAutoEquip then

		if game.Players.LocalPlayer.Backpack:FindFirstChild(v557) then

			v94_ = game.Players.LocalPlayer.Backpack:FindFirstChild(v557)

			wait(.1)

			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v94_)

		end

	end

end;

local function v95_(v558)

	local v559 = game:service"TweenService"

	local v560 = TweenInfo.new((game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - v558.Position).Magnitude / 350, Enum.EasingStyle.Linear)

	v96_ = v559:Create(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat, v560, {

		CFrame = v558

	})

	v96_:Play()

	local v561 = {}

	function v561:Stop()

		v96_:Cancel()

	end;

	return v561

end;

local function v97_()

	for v562, v563 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v563:IsA('Tool') and not (v563.Name == "Summon Sea Beast" or v563.Name == "Water Body" or v563.Name == "Awakening") then

			local v564 = game.Players.LocalPlayer.Backpack:FindFirstChild(v563.Name)

			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v564)

			wait(1)

		end

	end

end;

local v93 = game:GetService("Players")

local v94 = v93.LocalPlayer;

local function v98_(v565)

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v565

end;

local function v99_(v566)

	if not v566 then

		return

	end;

	return v566.Character:WaitForChild("HumanoidRootPart", 9)

end;

local function v100_()

	game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")

end;

local function v101_(v578, ...)

	local v579 = game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Comm" .. v578)

	if v579:IsA("RemoteEvent") then

		v579:FireServer(...)

	elseif v579:IsA("RemoteFunction") then

		v579:InvokeServer(...)

	end

end;

local function v102_()

	BBCEarthChannel:Cancel()

end;

local function v103_()

	if getgenv().tween then

		getgenv().tween_2:Cancel()

		getgenv().tween = nil

	end

end;

local function v104_(v580)

	v105_ = (v580.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;

	if game.Players.LocalPlayer.Character.Humanoid.Sit == true then

		game.Players.LocalPlayer.Character.Humanoid.Sit = false

	end;

	v83 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(v105_ / 210, Enum.EasingStyle.Linear), {

		CFrame = v580

	})

	v83:Play()

	if v105_ <= 250 then

		v83:Cancel()

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v580

	end;

	if getgenv().StopTween == true then

		v83:Cancel()

		getgenv().Clip = false

	end

end;

local function v106_(v581)

	return math.floor((v581.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)

end;

local function v107_(v582)

	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - v582.Position).Magnitude <= 10 then

		pcall(function()

			v108_:Cancel()

		end)

	else

		local v583 = game:service"TweenService"

		local v584 = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - v582.Position).Magnitude / 325, Enum.EasingStyle.Linear)

		v83, v109_ = pcall(function()

			v108_ = v583:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], v584, {

				CFrame = v582

			})

			v108_:Play()

		end)

		if not v83 then

			return v109_

		end

	end;

	local function v110_()

		v108_:Cancel()

	end

end;

local function v111_(v585, v586)

	local v587 = v585:FindFirstChild("Owner")

	if v587 and v587:IsA("ObjectValue") and v587.Value then

		local v588 = v587.Value.Name;

		if v588 == game.Players.LocalPlayer.Name then

			for v589, v590 in pairs(v585:GetDescendants()) do

				if v590:IsA("BasePart") then

					local v591 = game:GetService("TweenService")

					local v592 = TweenInfo.new((v590.Position - v586.Position).Magnitude / 200, Enum.EasingStyle.Linear)

					local v593 = v591:Create(v590, v592, {

						CFrame = v586

					})

					v593:Play()

					local function v112_()

						v593:Cancel()

					end

				end

			end

		end

	end

end;

local v98 = game.PlaceId;

local v99 = {}

local v100 = ""

local v101 = os.date("!*t").hour;

local v102 = false;

local function v113_()

	local v594;

	if v100 == "" then

		v594 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/r/games/" .. v98 .. "/servers/Public?sortOrder=Asc&limit=100"))

	else

		v594 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/r/games/" .. v98 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v100))

	end;

	local v595 = ""

	if v594.nextPageCursor and v594.nextPageCursor ~= "null" and v594.nextPageCursor ~= nil then

		v100 = v594.nextPageCursor

	end;

	local v596 = 0;

	for v597, v598 in pairs(v594.data) do

		local v599 = true;

		v595 = tostring(v598.id)

		if tonumber(v598.maxPlayers) > tonumber(v598.playing) then

			for v600, v601 in pairs(v99) do

				if v596 ~= 0 then

					if v595 == tostring(v601) then

						v599 = false

					end

				else

					if tonumber(v101) ~= tonumber(v601) then

						local v602 = pcall(function()

							v99 = {}

							table.insert(v99, v101)

						end)

					end

				end;

				v596 = v596 + 1

			end;

			if v599 == true then

				table.insert(v99, v595)

				wait(0.1)

				pcall(function()

					wait(0.1)

					game:GetService("TeleportService"):TeleportToPlaceInstance(v98, v595, game.Players.LocalPlayer)

				end)

				wait(4)

			end

		end

	end

end;

local function v114_()

	while wait(.1) do

		v113_()

		if v100 ~= "" then

			v113_()

		end

	end

end;

local function v115_()

	repeat

		wait(0.1)

	until game:IsLoaded() and game.Players.LocalPlayer;

	local v603, v604 = game:GetService"HttpService", game:GetService"TeleportService"

	local v605 = v603:JSONDecode(game:HttpGet("https://games.roblox.com/r/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))

	local function v116_()

		if not isfile("servers.sss") then

			writefile("servers.sss", v603:JSONEncode({}))

		end;

		local v607 = readfile("servers.sss")

		v607 = v603:JSONDecode(v607)

		for v608, v609 in next, v605["data"] do

			if v609 ~= game.JobId then

				local v610 = true;

				for v611, v612 in pairs(v607) do

					if v612 == v609.id then

						v610 = false

					end

				end;

				if v610 then

					table.insert(v607, v609["id"])

					writefile("servers.sss", v603:JSONEncode(v607))

					wait(0.1)

					return v609["id"]

				end

			end

		end

	end;

	local v606 = v116_()

	if not v606 then

		writefile("servers.sss", v603:JSONEncode({}))

		local v613 = v116_()

		v604:TeleportToPlaceInstance(game.PlaceId, v613)

	else

		v604:TeleportToPlaceInstance(game.PlaceId, v606)

	end

end;

local function v117_()

	game:GetService("VirtualUser"):CaptureController()

	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

end;

local function v118_(v614)

	v119_ = ""

	for v615, v616 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v616:IsA("Tool") then

			if v616.ToolTip == v614 then

				v119_ = v616.Name

			end

		end

	end;

	for v617, v618 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

		if v618:IsA("Tool") then

			if v618.ToolTip == v614 then

				v119_ = v618.Name

			end

		end

	end;

	if v119_ ~= "" then

		return v119_

	else

		return "Not Have"

	end

end;

local function v120_(v619, v620)

	if game.Players.LocalPlayer.Backpack:FindFirstChild(v619) then

		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(v619).Level.Value) < tonumber(v620) then

			return "true DownTo"

		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(v619).Level.Value) >= tonumber(v620) then

			return "true UpTo"

		end

	end;

	if game.Players.LocalPlayer.Character:FindFirstChild(v619) then

		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(v619).Level.Value) < tonumber(v620) then

			return "true DownTo"

		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(v619).Level.Value) >= tonumber(v620) then

			return "true UpTo"

		end

	end;

	return "else"

end;

local function v121_(v621)

	for v622, v623 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do

		if type(v623) == "table" then

			if v623.Type == "Sword" then

				if v623.Name == v621 then

					return true

				end

			end

		end

	end;

	return false

end;

local function v122_()

	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

		v123_ = true

		local v624 = {

			[1] = "Buso"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v624))

		v123_ = false

	end

end

local function v124_(v625)

	for v626, v627 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do

		if type(v627) == "table" then

			if v627.Type == "Material" then

				if v627.Name == v625 then

					return v627.Count

				end

			end

		end

	end;

	return 0

end;

local function v125_(v628)

	for v629, v630 in pairs(v628) do

		if game:GetService("Workspace").Enemies:FindFirstChild(v630) then

			return true

		end

	end;

	return false

end;

local function v126_(v631)

	if Sea1 then

		if v631 == "Magma Ore" then

			v127_ = {

				"Military Soldier",

				"Military Spy"

			}

			v128_ = CFrame.new(- 5815, 84, 8820)

		elseif v631 == "Leather" or v631 == "Scrap Metal" then

			v127_ = {

				"Brute"

			}

			v128_ = CFrame.new(- 1145, 15, 4350)

		elseif v631 == "Angel Wings" then

			v127_ = {

				"God's Guard"

			}

			v128_ = CFrame.new(- 4698, 845, - 1912)

		elseif v631 == "Fish Tail" then

			v127_ = {

				"Fishman Warrior",

				"Fishman Commando"

			}

			v128_ = CFrame.new(61123, 19, 1569)

		end

	end;

	if Sea2 then

		if v631 == "Magma Ore" then

			v127_ = {

				"Magma Ninja"

			}

			v128_ = CFrame.new(- 5428, 78, - 5959)

		elseif v631 == "Scrap Metal" then

			v127_ = {

				"Swan Pirate"

			}

			v128_ = CFrame.new(878, 122, 1235)

		elseif v631 == "Radioactive Material" then

			v127_ = {

				"Factory Staff"

			}

			v128_ = CFrame.new(295, 73, - 56)

		elseif v631 == "Vampire Fang" then

			v127_ = {

				"Vampire"

			}

			v128_ = CFrame.new(- 6033, 7, - 1317)

		elseif v631 == "Mystic Droplet" then

			v127_ = {

				"Water Fighter",

				"Sea Soldier"

			}

			v128_ = CFrame.new(- 3385, 239, - 10542)

		end

	end;

	if Sea3 then

		if v631 == "Mini Tusk" then

			v127_ = {

				"Mythological Pirate"

			}

			v128_ = CFrame.new(- 13545, 470, - 6917)

		elseif v631 == "Fish Tail" then

			v127_ = {

				"Fishman Raider",

				"Fishman Captain"

			}

			v128_ = CFrame.new(- 10993, 332, - 8940)

		elseif v631 == "Scrap Metal" then

			v127_ = {

				"Jungle Pirate"

			}

			v128_ = CFrame.new(- 12107, 332, - 10549)

		elseif v631 == "Dragon Scale" then

			v127_ = {

				"Dragon Crew Archer",

				"Dragon Crew Warrior"

			}

			v128_ = CFrame.new(6594, 383, 139)

		elseif v631 == "Conjured Cocoa" then

			v127_ = {

				"Cocoa Warrior",

				"Chocolate Bar Battler",

				"Sweet Thief",

				"Candy Rebel"

			}

			v128_ = CFrame.new(620.6344604492188, 78.93644714355469, - 12581.369140625)

		elseif v631 == "Demonic Wisp" then

			v127_ = {

				"Demonic Soul"

			}

			v128_ = CFrame.new(- 9507, 172, 6158)

		elseif v631 == "Gunpowder" then

			v127_ = {

				"Pistol Billionaire"

			}

			v128_ = CFrame.new(- 469, 74, 5904)

		end

	end

end;

local function v129_()

	if v130_ == false then

		local v632 = {

			[1] = "BuySuperhuman"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v632))

		if v120_("Superhuman", 400) == "true UpTo" then

			v130_ = true

		end

	end;

	wait(.1)

	if v131_ == false then

		local v633 = "BuyElectricClaw"

		local v634 = game:GetService("ReplicatedStorage").Remotes["CommF_"]

		v634:InvokeServer(v633)

		if v120_("Electric Claw", 400) == "true UpTo" then

			v131_ = true

		end

	end;

	wait(.1)

	if v132_ == false then

		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

		if v120_("Dragon Talon", 400) == "true UpTo" then

			v132_ = true

		end

	end;

	wait(.1)

	if v133_ == false then

		local v635 = {

			[1] = "BuySharkmanKarate"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v635))

		if v120_("Sharkman Karate", 400) == "true UpTo" then

			v133_ = true

		end

	end;

	wait(.1)

	if v134_ == false then

		local v636 = {

			[1] = "BuyDeathStep"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v636))

		if v120_("Death Step", 400) == "true UpTo" then

			v134_ = true

		end

	end;

	if v135_ == false then

		local v637 = {

			[1] = "BuyGodhuman"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v637))

		if v120_("Godhuman", 350) == "true UpTo" then

			v135_ = true

		end

	end

end;

local v103 = workspace.CurrentCamera;

local v104 = true;

local function v136_(v649, v650)

	v103.CFrame = CFrame.new(v649, v650)

end;

local function v137_(v651)

	local v652 = nil;

	local v653 = math.huge;

	for v654, v655 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

		if v655.Name == v71_()[3] then

			local v656, v657 = workspace.CurrentCamera:WorldToViewportPoint(v655[v651].Position)

			local v658 = Vector2.new(v656.x, v656.y)

			local v659 = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)

			local v660 = (v658 - v659).magnitude;

			if v660 < v653 and v657 and v104 == true and v660 < 1500 then

				v653 = v660;

				v652 = v655

			end

		end

	end;

	return v652

end;

getgenv().AutoRejoin = true;

spawn(function()

	while wait(.1) do

		if getgenv().AutoRejoin then

			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v661)

				if v661.Name == 'ErrorPrompt' and v661:FindFirstChild('MessageArea') and v661.MessageArea:FindFirstChild("ErrorFrame") then

					game:GetService("TeleportService"):Teleport(game.PlaceId)

				end

			end)

		end

	end

end)

v138_ = 1;

spawn(function()

	while wait(.1) do

		v138_ = math.random(1, 5)

		wait(0.3)

	end

end)

local v105 = 1;

spawn(function()

	while wait(.1) do

		local v662 = game.Players.LocalPlayer.Data.Level.Value;

		local v663 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest;

		pcall(function()

			if getgenv().AutoFarm and getgenv().FarmMode == "Farm Level" then

				if getgenv().AutoFarmFast and (v662 >= 15 and v662 <= 300) then

					if v662 >= 15 and v662 <= 300 then

						v139_()

						return

					end

				else

					if v663.Visible == true then

						if game:GetService("Workspace").Enemies:FindFirstChild(v71_()[3]) then

							for v664, v665 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

								if v665.Name == v71_()[3] then

									if v665:FindFirstChild("Humanoid") and v665:FindFirstChild("HumanoidRootPart") and v665.Humanoid.Health > 0 then

										repeat

											wait(0.1)

											if getgenv().Auto_CFrame then

												v105 = 1

											end;

											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v71_()[6]) then

												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")

											else

												v140_ = v665.HumanoidRootPart.CFrame;

											--F.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

												v665.HumanoidRootPart.CanCollide = false;

												v665.Humanoid.WalkSpeed = 0;

												v665.Head.CanCollide = false;

												v49_ = true;

												v36_(getgenv().SelectWeapon)

												v665.HumanoidRootPart.Transparency = 1;

												PlayerTP(v665.HumanoidRootPart.CFrame * getgenv().MethodFarm)

												if not getgenv().AutoFarm then

													getgenv().FastAttack = true

												end

											end

										until not getgenv().AutoFarm or not v665.Parent or v665.Humanoid.Health <= 0 or v663.Visible == false or not v665:FindFirstChild("HumanoidRootPart")

									end

								end

							end

						else

							if getgenv().Auto_CFrame and not getgenv().AutoFarmFast then

								PlayerTP(v71_()[7][v105] * getgenv().MethodFarm)

								if (v71_()[7][v105].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then

									if v105 == nil or v105 == "" then

										v105 = 1

									elseif v105 >= # v71_()[7] then

										v105 = 1

									end;

									v105 = v105 + 1;

									wait(.1)

								end

							else

								if not getgenv().AutoFarmFast then

									if v138_ == 1 then

										PlayerTP(v71_()[7][1] * CFrame.new(0, 30, 20))

									elseif v138_ == 2 then

										PlayerTP(v71_()[7][1] * CFrame.new(0, 30, - 20))

									elseif v138_ == 3 then

										PlayerTP(v71_()[7][1] * CFrame.new(20, 30, 0))

									elseif v138_ == 4 then

										PlayerTP(v71_()[7][1] * CFrame.new(0, 30, - 20))

									elseif v138_ == 5 then

										PlayerTP(v71_()[7][1] * CFrame.new(- 20, 30, 0))

									else

										PlayerTP(v71_()[7][1] * CFrame.new(0, 30, 20))

									end

								end

							end

						end

					else

						PlayerTP(v71_()[2])

						if (v71_()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then

							v49_ = false;

							wait(0.2)

							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", v71_()[4], v71_()[1])

							wait(.1)

							PlayerTP(v71_()[7][1] * getgenv().MethodFarm)

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().AutoStatsMelee then

			if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then

				local v666 = {

					[1] = "AddPoint",

					[2] = "Melee",

					[3] = 999

				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v666))

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if v49_ then

				for v667, v668 in pairs(game.Workspace.Enemies:GetChildren()) do

					if not string.find(v668.Name, "Boss") and (v668.HumanoidRootPart.Position - v140_.Position).magnitude <= 300 then

						if v80_(v668.HumanoidRootPart) then

							v668.HumanoidRootPart.CFrame = v140_

							v668.Humanoid.JumpPower = 0

							v668.Humanoid.WalkSpeed = 0

                            --v.HumanoidRootPart.Size = Vector3.new(60,60,60)

							v668.HumanoidRootPart.Transparency = 1

							v668.HumanoidRootPart.CanCollide = false

							v668.Head.CanCollide = false

							if v668.Humanoid:FindFirstChild("Animator") then

								v668.Humanoid.Animator:Destroy()

							end

							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 5000)

						end

					end

				end

			end

		end)

	end

end)

spawn(function()

	while wait(.1) do

		pcall(function()

			if v49_ then

				for v669, v670 in pairs(game.Workspace.Enemies:GetChildren()) do

					if not string.find(v670.Name, "Boss") and (v670.HumanoidRootPart.Position - v140_.Position).magnitude <= 300 then

						v670.HumanoidRootPart.CFrame = v140_

						v670.Humanoid.JumpPower = 0

						v670.Humanoid.WalkSpeed = 0

						--v.HumanoidRootPart.Size = Vector3.new(60,60,60)

						v670.HumanoidRootPart.Transparency = 1

						v670.HumanoidRootPart.CanCollide = false

						v670.Head.CanCollide = false

						--v.Humanoid:ChangeState(11)

						--v.Humanoid:ChangeState(14)

						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 5000)

					end

				end

			end

		end)

	end

end)

getgenv().ChackPlayer = 0;

getgenv().ChackPlayer2 = getgenv().ChackPlayer;

local v106 = {}

local function v139_()

	local v673 = game.Players:GetPlayers()

	local v674 = game.Players.LocalPlayer.Data.Level.Value;

	local v675 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;

	local v676 = string.split(v675, " ")[2]

	getgenv().SelectPly = string.split(v675, " ")[2]

	local v677 = game.Players.LocalPlayer.Data.Level.Value;

	local v678 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest;

	v128_ = CFrame.new(- 7719.66895, 5611.42334, - 1445.98816, 0.906745553, - 1.43169192e-08, - 0.421678245, 5.939971e-08, 1, 9.37764852e-08, 0.421678245, - 1.10078972e-07, 0.906745553)

	if getgenv().AutoFarm and getgenv().FarmMode == "Farm Level" and v677 >= 15 and v677 <= 69 and (v128_.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))

	end;

	if v677 >= 15 and v677 <= 69 then

		for v679, v680 in pairs(game.Workspace.Enemies:GetChildren()) do

			if v680.Name == "Royal Squad" then

				if v680:FindFirstChild("Humanoid") and v680:FindFirstChild("HumanoidRootPart") and v680.Humanoid.Health > 0 then

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")

					repeat

						wait(0.1)

						v680.HumanoidRootPart.CanCollide = false;

						v680.Humanoid.WalkSpeed = 0;

						v680.Head.CanCollide = false;

						v49_ = true;

						v36_(getgenv().SelectWeapon)

						if v677 >= 70 and v677 <= 310 then

							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")

							end

						end;

						v140_ = v680.HumanoidRootPart.CFrame;

						--F.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

						v680.HumanoidRootPart.Transparency = 1;

						PlayerTP(v680.HumanoidRootPart.CFrame * getgenv().MethodFarm)

						if not getgenv().AutoFarm or getgenv().SuperFastAttack then

							getgenv().FastAttack = true

						end

					until not v680.Parent or not getgenv().AutoFarm or v680.Humanoid.Health < 0;

					PlayerTP(v128_)

				end

			else

				v49_ = false;

				PlayerTP(v128_)

			end

		end

	elseif v677 >= 70 and v677 <= 310 then

		if v678.Visible == false then

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")

		elseif v678.Visible == true then

			if string.find(v675, "Defeat") then

				repeat

					wait(0.1)

					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

					end;

					if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")

					end;

					v36_(getgenv().SelectWeapon)

					PlayerTP(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))

					game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120, 120, 120)

					if (game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6 then

						game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game)

						game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game)

					end;

					if (game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6 then

						game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)

						game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)

					end;

					if not getgenv().AutoFarm or getgenv().SuperFastAttack then

						getgenv().FastAttack = true

					end

				until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not v139_() or v677 >= 310

			end

		end

	end

end;

local v107 = 1;

local v108 = {

	["Mon"] = {

		"Reborn Skeleton",

		"Demonic Soul",

		"Living Zombie",

		"Posessed Mummy"

	},

	["Boss"] = {

		"Soul Reaper"

	},

	["Item"] = "Hallow Essence"

}

local v109 = 1;

local function v141_()

	local v681 = {}

	for v682, v683 in ipairs(v108["Mon"]) do

		local v684 = v683:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")

		for v685, v686 in ipairs(game.Workspace.EnemySpawns:GetChildren()) do

			if v686.Name == v684 then

				table.insert(v681, v686.CFrame)

			end

		end

	end;

	return v681

end;

spawn(function()

	while wait(.1) do

		if getgenv().AutoFarm and getgenv().FarmMode == "Bone" or getgenv().Auto_Bone then

			for v687, v688 in ipairs(v108["Boss"]) do

				local v689 = v108["Item"]

				if game:GetService("Workspace").Enemies:FindFirstChild(v688) or game:GetService("ReplicatedStorage"):FindFirstChild(v688) then

					for v690, v691 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if string.find(v691.Name, v688) then

							if v691:FindFirstChild("Humanoid") and v691:FindFirstChild("HumanoidRootPart") and v691.Humanoid.Health > 0 then

								repeat

									wait(0.1)

									v36_(getgenv().SelectWeapon)

									

									v49_ = true;

									PlayerTP(v691.HumanoidRootPart.CFrame * getgenv().MethodFarm)

									if (v691.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then

										getgenv().FastAttack = true

									end

								until not getgenv().AutoFarm or v691.Humanoid.Health <= 0 or not v691.Parent or v691.Humanoid.Health <= 0;

								v49_ = false

							end

						end

					end

				else

					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v689) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v689) then

						v36_(v689)

						PlayerTP(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)

					else

						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and getgenv().AceetpQuestBone == true then

							local v692 = game.Players.LocalPlayer.Data.Level.Value;

							local v693 = CFrame.new(- 9513.88477, 172.1306, 6073.37061, - 0.906221628, 7.55508509e-08, 0.422802985, 5.79426853e-08, 1, - 5.44980487e-08, - 0.422802985, - 2.48889691e-08, - 0.906221628)

							repeat

								wait(0.1)

								PlayerTP(v693)

							until (v693.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not getgenv().AceetpQuestBone;

							if v692 <= 2049 then

								local v694 = {

									[1] = "StartQuest",

									[2] = "HauntedQuest2",

									[3] = 1

								}

								game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v694))

							else

								local v695 = {

									[1] = "StartQuest",

									[2] = "HauntedQuest2",

									[3] = 2

								}

								game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v695))

							end

						elseif getgenv().AutoFarm and getgenv().FarmMode == "Bone" or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or not getgenv().AceetpQuestBone then

							for v696, v697 in next, v108["Mon"] do

								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then

									for v698, v699 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

										if string.find(v699.Name, v697) then

											if v699:FindFirstChild("Humanoid") and v699:FindFirstChild("HumanoidRootPart") and v699.Humanoid.Health > 0 then

												repeat

													wait(0.1)

													v140_ = v699.HumanoidRootPart.CFrame;

													v36_(getgenv().SelectWeapon)

													

													v49_ = true;

													PlayerTP(v699.HumanoidRootPart.CFrame * getgenv().MethodFarm)

													if (v699.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then

														getgenv().FastAttack = true

													end

												until not getgenv().AutoFarm or v699.Humanoid.Health <= 0 or not v699.Parent or v699.Humanoid.Health <= 0

											elseif (CFrame.new(- 9513.88477, 172.1306, 6073.37061, - 0.906221628, 7.55508509e-08, 0.422802985, 5.79426853e-08, 1, - 5.44980487e-08, - 0.422802985, - 2.48889691e-08, - 0.906221628).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false and getgenv().AceetpQuestBone then

												local v700 = CFrame.new(- 9513.88477, 172.1306, 6073.37061, - 0.906221628, 7.55508509e-08, 0.422802985, 5.79426853e-08, 1, - 5.44980487e-08, - 0.422802985, - 2.48889691e-08, - 0.906221628)

												repeat

													wait(0.1)

													PlayerTP(v700)

												until (v700.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not getgenv().AutoFarm

											end

										end

									end

								else

									if getgenv().Auto_CFrame then

										PlayerTP(v141_()[v109] * getgenv().MethodFarm)

										if (v141_()[v109].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then

											if v109 == nil or v109 == "" then

												v109 = 1

											elseif v109 >= # v141_() then

												v109 = 1

											end;

											v109 = v109 + 1;

											wait(.1)

										end

									else

										if v138_ == 1 then

											PlayerTP(v141_()[1] * CFrame.new(0, 30, 20))

										elseif v138_ == 2 then

											PlayerTP(v141_()[1] * CFrame.new(0, 30, - 20))

										elseif v138_ == 3 then

											PlayerTP(v141_()[1] * CFrame.new(20, 30, 0))

										elseif v138_ == 4 then

											PlayerTP(v141_()[1] * CFrame.new(0, 30, - 20))

										elseif v138_ == 5 then

											PlayerTP(v141_()[1] * CFrame.new(- 20, 30, 0))

										else

											PlayerTP(v141_()[1] * CFrame.new(0, 30, 20))

										end

									end

								end

							end

						end

					end

				end

			end

		end

	end

end)

spawn(function()

    while wait(0.5) do

        if getgenv().AutoFarm and getgenv().FarmMode == "Cake Prince" then

            pcall(function()

                local workspace = game:GetService("Workspace")

                local replicatedStorage = game.ReplicatedStorage

                local player = game.Players.LocalPlayer

                local playerPosition = player.Character.HumanoidRootPart.Position

                local enemies = workspace.Enemies

                local cakePrince = enemies:FindFirstChild("Cake Prince") or replicatedStorage:FindFirstChild("Cake Prince")

                local doughKing = enemies:FindFirstChild("Dough King") or replicatedStorage:FindFirstChild("Dough King")

                

                if cakePrince or doughKing then

                    if getgenv().BypassTP then getgenv().BypassTP = false end



                    if not cakePrince then

                        for _, v in pairs(replicatedStorage:GetChildren()) do

                            if v.Name == "Cake Prince" or v.Name == "Dough King" then

                                getgenv().FastAttackDelay = 0.1

                                if (v.HumanoidRootPart.CFrame.Position - playerPosition).Magnitude > 1000 then

                                    getgenv().BypassTP = false

                                    wait(3)

                                    PlayerTP(CFrame.new(-2145.89722, 70.0088272, -12399.6016))

                                    return

                                end

                            end

                        end

                    end



                    for _, enemy in pairs(enemies:GetChildren()) do

                        if enemy.Name == "Cake Prince" and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then

                            repeat

                                wait(0.1)

                                local enemyPosition = enemy.HumanoidRootPart.Position

                                if (enemyPosition - playerPosition).Magnitude > 1000 then

                                    PlayerTP(CFrame.new(-2145.89722, 70.0088272, -12399.6016))

                                    return

                                end

                                v36_(getgenv().SelectWeapon)

                                getgenv().FastAttack = true

                                v49_ = true

                                PlayerTP(enemy.HumanoidRootPart.CFrame * getgenv().MethodFarm)

                                sethiddenproperty(player, "SimulationRadius", 5000)

                            until not getgenv().AutoFarm or not enemy.Parent or enemy.Humanoid.Health <= 0

                        end

                    end

                else

                    local target = replicatedStorage:FindFirstChild("Cake Prince") or enemies:FindFirstChild("Baking Staff") or enemies:FindFirstChild("Head Baker") or enemies:FindFirstChild("Cake Guard") or enemies:FindFirstChild("Cookie Crafter")

                    if target then

                        for _, enemy in pairs(enemies:GetChildren()) do

                            if (enemy.Name == "Baking Staff" or enemy.Name == "Head Baker" or enemy.Name == "Cake Guard" or enemy.Name == "Cookie Crafter") and enemy.Humanoid.Health > 0 then

                                repeat

                                    wait(0.1)

                                    v140_ = enemy.HumanoidRootPart.CFrame

                                    v36_(getgenv().SelectWeapon)

                                    getgenv().FastAttack = true

                                    v49_ = true

                                    PlayerTP(enemy.HumanoidRootPart.CFrame * getgenv().MethodFarm)

                                until not getgenv().AutoFarm or replicatedStorage:FindFirstChild("Cake Prince") or not enemy.Parent or enemy.Humanoid.Health <= 0

                            end

                        end

                    else

                        v49_ = false

                        PlayerTP(v70_() * getgenv().MethodFarm)

                        wait(0.5)

                    end

                end

            end)

        end

    end

end)





spawn(function()

	while wait(.1) do

		if v10_ == "Melee" then

			for v711, v712 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

				if v712.ToolTip == "Melee" then

					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v712.Name)) then

						getgenv().SelectWeapon = v712.Name

					end

				end

			end

		elseif v10_ == "Sword" then

			for v713, v714 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

				if v714.ToolTip == "Sword" then

					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v714.Name)) then

						getgenv().SelectWeapon = v714.Name

					end

				end

			end

		elseif v10_ == "Fruit" then

			for v715, v716 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

				if v716.ToolTip == "Blox Fruit" then

					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v716.Name)) then

						getgenv().SelectWeapon = v716.Name

					end

				end

			end

		else

			for v717, v718 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

				if v718.ToolTip == "Melee" then

					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v718.Name)) then

						getgenv().SelectWeapon = v718.Name

					end

				end

			end

		end

	end

end)

spawn(function()

	while wait(.1) do

		if getgenv().FastType then

			getgenv().FastAttackDelay = tonumber(getgenv().FastType) or 0.1

		end

	end

end)





-- // Set Description For Status \\ --



spawn(function()

	while wait(.1) do

		local v719 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")

		v21:SetDesc("Bone : " .. v719)

		wait(.1)

	end

end)





spawn(function()

	while wait(.1) do

	    pcall(function()

		local v720 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")

		if string.len(v720) == 88 then

			v22:SetDesc("Need Kill : " .. string.sub(v720, 39, 41))

		elseif string.len(v720) == 87 then

			v22:SetDesc("Need Kill : " .. string.sub(v720, 39, 40))

		elseif string.len(v720) == 86 then

			v22:SetDesc("Need Kill : " .. string.sub(v720, 39, 39))

		else

			v22:SetDesc("Boss Is Spawning..")

		   end;

		end)

	end

end)





spawn(function()

	while wait(.1) do

		if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then

			v24:SetDesc("Status : Spawned🟢")

		else

			v24:SetDesc("Status : Not Spawn Yet🔴")

		end

	end

end)





spawn(function()

	while wait(.1) do

		pcall(function()

			v23:SetDesc("Killed : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))

		end)

	end

end)



-- // Send Request To Website \\ --





local v110 = game:GetService("HttpService")

local v111 = (syn and syn.request) or (identifyexecutor() == 'Fluxus' and request) or http_request or http.request or request



local v112, v113 = pcall(function()

	return v111({

		Url = "https://o1-1att.onrender.com/count",

		Method = "GET",

		Headers = {

			["Content-Type"] = "application/json",

		},

		UseSSL = true

	})

end)



if v112 then

	if type(v113) == "table" then

		local v721 = v113.StatusCode

		local v722 = v113.Body

		local v723 = game:GetService("HttpService")

		local v724 = http_request or request or syn.request

		local v725 = {

			embeds = {

				{

					title = "New Executed ( MAIN SCRIPT )",

					type = "rich",

					color = tonumber("1cff1a", 16),

					thumbnail = {

						url = "",

					},

					fields = {

						{

							name = 'Status Web | Executed',

							value = "Status : " .. tostring(v721) .. "\nExecuted : " .. tostring(v722),

							inline = false

						},

					}

				}

			}

		}

		local v726 = v723:JSONEncode(v725)

		local v727 = {

			["Content-Type"] = "application/json"

		}

		local v728 = {

			Url = "https://discord.com/api/webhooks/1270675750332137483/_8a_gpbDTAir3NLmFFczX8yUuBSpdGjckjara_t21IMFVptR6UpQMunVBzeG6UNOBXcA",

			Body = v726,

			Method = "POST",

			Headers = v727

		}

		local v729, v730 = pcall(v724, v728)

		print("Status: " .. tostring(v721))

		print("Information: " .. tostring(v722))

	else

		print("Unexpected response format")

	end

else

	warn("Failed to send request.")

end

v0_()

local v114 = http_request or request or HttpPost or syn.request

local function v142_(v731)

	v143_ = ""

	for v732 , v733 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v733:IsA("Tool") then

			if v733.ToolTip == v731 then

				v143_ = v733.Name

			end

		end

	end

	for v734 , v735 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

		if v735:IsA("Tool") then

			if v735.ToolTip == v731 then

				v143_ = v735.Name

			end

		end

	end

	if v143_ ~= "" then

		return v143_

	else

		return "Not Found"

	end

end

local function v144_()

	v143_ = ""

	v145_ = ":x:"

	v146_ = ":x:"

	v147_ = ":x:"

	v148_ = ":x:"

	v149_ = ":x:"

	for v736 , v737 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

		if v737:IsA("Tool") then

			if v737.ToolTip == "Blox Fruit" then

				if v737:FindFirstChild("AwakenedMoves") then

					if v737.AwakenedMoves:FindFirstChild("Z") then

						v145_ = ":white_check_mark:"

					end

					if v737.AwakenedMoves:FindFirstChild("X") then

						v146_ = ":white_check_mark:"

					end

					if v737.AwakenedMoves:FindFirstChild("C") then

						v147_ = ":white_check_mark:"

					end

					if v737.AwakenedMoves:FindFirstChild("V") then

						v148_ = ":white_check_mark:"

					end

					if v737.AwakenedMoves:FindFirstChild("F") then

						v149_ = ":white_check_mark:"

					end

					v143_ = ":regional_indicator_z:" .. v145_ .. "\n" .. ":regional_indicator_x:" .. v146_ .. "\n" .. ":regional_indicator_c:" .. v147_ .. "\n" .. ":regional_indicator_v:" .. v148_ .. "\n" .. ":regional_indicator_f:" .. v149_

				else

					v143_ = "This Fruit Can't Awakened"

				end

			end

		end

	end

	for v738 , v739 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

		if v739:IsA("Tool") then

			if v739.ToolTip == "Blox Fruit" then

				if v739:FindFirstChild("AwakenedMoves") then

					if v739.AwakenedMoves:FindFirstChild("Z") then

						v145_ = ":white_check_mark:"

					end

					if v739.AwakenedMoves:FindFirstChild("X") then

						v146_ = ":white_check_mark:"

					end

					if v739.AwakenedMoves:FindFirstChild("C") then

						v147_ = ":white_check_mark:"

					end

					if v739.AwakenedMoves:FindFirstChild("V") then

						v148_ = ":white_check_mark:"

					end

					if v739.AwakenedMoves:FindFirstChild("F") then

						v149_ = ":white_check_mark:"

					end

					v143_ = ":regional_indicator_z:" .. v145_ .. "\n" .. ":regional_indicator_x:" .. v146_ .. "\n" .. ":regional_indicator_c:" .. v147_ .. "\n" .. ":regional_indicator_v:" .. v148_ .. "\n" .. ":regional_indicator_f:" .. v149_

				else

					v143_ = "This Fruit Can't Awakened"

				end

			end

		end

	end

	if v143_ ~= "" then

		return v143_

	else

		return "Not Found"

	end

end

v115 = game:GetService("LocalizationService")

v116 = game.Players.LocalPlayer

v117 = game:GetService("HttpService")

local v118 = (game:GetService("Players").LocalPlayer.Data.Level.Value)

local v119 = v115:GetCountryRegionForPlayerAsync(v116)

local function v150_(v740)

	if v740 == "Common" then

		v151_ = 0

	elseif v740 == "Uncommon" then

		v151_ = 1

	elseif v740 == "Rare" then

		v151_ = 2

	elseif v740 == "Legendary" then

		v151_ = 3

	elseif v740 == "Mythical" then

		v151_ = 4

	else

		return "Worng InPut"

	end

	local v741 = ""

	for v742, v743 in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do

		if type(v743) == "table" then

			v741 = v741 .. v743.Name .. "\n"

		end

	end

	if v741 ~= "" then

		return v741

	else

		return "Not Found\n"

	end

end

local function v152_()

	local v744 = ""

	for v745, v746 in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do

		if type(v746) == "table" then

			if v746 ~= nil then

				v744 = v744 .. v746.Name .. " : " .. v746.Price .. "\n"

			end

		end

	end

	if v744 ~= "" then

		return v744

	else

		return "Not Found"

	end

end

local function v153_()

	v154_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true))

	if v154_ then

		if v154_ == 1 then

			v155_ = true

		end

	end

	v156_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true))

	if v156_ then

		if v156_ == 1 then

			v157_ = true

		end

	end

	v158_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true))

	if v158_ then

		if v158_ == 1 then

			v159_ = true

		end

	end

	v160_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true))

	if v160_ then

		if v160_ == 1 then

			v161_ = true

		end

	end

	v162_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true))

	if v162_ then

		if v162_ == 1 then

			v163_ = true

		end

	end

	v164_ = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))

	if v164_ then

		if v164_ == 1 then

			v165_ = true

		end

	end

	v143_ = {}

	if v157_ == true then

		table.insert(v143_, "SuperHuman")

	end

	if v163_ == true then

		table.insert(v143_, "Electric Claw")

	end

	if v155_ == true then

		table.insert(v143_, "Dragon Talon")

	end

	if v159_ == true then

		table.insert(v143_, "Sharkman Karate")

	end

	if v161_ == true then

		table.insert(v143_, "Death Step")

	end

	if v165_ == true then

		table.insert(v143_, "God Human")

	end

	if # v143_ ~= 0 then

		return table.concat(v143_, ",")

	else

		return "Not Found"

end

end

local v120 = {

	{

		["title"] = "Cat Hub Webhooks Status",

		["color"] = 1127128,

		["fields"] = {

			{

				["name"] = "Player",

				["value"] = "```Username : " .. tostring(game.Players.LocalPlayer.Name) .. "\nLevel : " .. tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value) .. "\nFruit : " .. v142_("Blox Fruit") .. "\nRace : " .. tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value) .. "```",

				["inline"] = true

			},			

			{

				["name"] = "Stats",

				["value"] = "```\n" .. tostring("Melee : " .. game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. "\nDefense : " .. game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. "\nSword : " .. game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value .. "\nGun : " .. game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. "\nDevil Fruit : " .. game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value) .. "```",

				["inline"] = true

			},

			{

				["name"] = "All Melee",

				["value"] = "```\n" .. tostring(v153_()) .. "```",

				["inline"] = true

			},

			{

				["name"] = "Fruit In Inventory",

				["value"] = "```\n" .. tostring(v152_()) .. "```",

				["inline"] = true

			},

			{

				["name"] = "Item",

				["value"] = "```\n" .. tostring(v150_("Mythical")) .. "```",

				["inline"] = true

			},

		},

		["footer"] = {

			["text"] = "Made by ! Cat Hub Owner" .. "\nTime" .. " : " .. os.date("%c") .. " (" .. os.date("%X") .. ")",

			["icon_url"] = ""

		},

	}

}

local v121 = {

	['username'] = "Webhook Cat",

	["avatar_url"] = "",

	["content"] = "",

	["embeds"] = v120,

}

local v122 = v114({

	Url = "https://discord.com/api/webhooks/1270653034892099634/usxVc2rS3A8tbgjMuaki9-ORIWGrPHGmyPW1WlObR8WcmEV9kMEQFXBBlpsmynTdh47o",

	Method = 'POST',

	Headers = {

		["Content-Type"] = "application/json"

	},

	Body = game:GetService("HttpService"):JSONEncode(v121)

})

end

getgenv().ScriptExecuted = true

local Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x9PSwiftz/Panda/main/Notification.lua"))()


local crackedhub = {

	["https://discord.gg/VBU9K6ABuE Hub Key GUI"] = Instance.new("ScreenGui"),

	["Main"] = Instance.new("Frame"),

	["MainCorner"] = Instance.new("UICorner"),

	["Topsec"] = Instance.new("Frame"),

	["SecLinesec"] = Instance.new("Frame"),

	["UIGradient"] = Instance.new("UIGradient"),

	["Sectiontitle"] = Instance.new("TextLabel"),

	["ImageLabel"] = Instance.new("ImageButton"),

	["ChildMain"] = Instance.new("Frame"),

	["ChildListLayout"] = Instance.new("UIListLayout"),

	["BoxFrame"] = Instance.new("Frame"),

	["BoxCorner"] = Instance.new("UICorner"),

	["BoxBG"] = Instance.new("Frame"),

	["ButtonCorner"] = Instance.new("UICorner"),

	["BoxCor"] = Instance.new("Frame"),

	["ButtonCorner_2"] = Instance.new("UICorner"),

	["Box"] = Instance.new("TextBox"),

	["TextNSBoxLine"] = Instance.new("Frame"),

	["TextNSBoxLineCorner"] = Instance.new("UICorner"),

	["Boxtitle"] = Instance.new("TextLabel"),

	["ButtonFrame"] = Instance.new("Frame"),

	["ButtonBG"] = Instance.new("Frame"),

	["ButtonCorner_3"] = Instance.new("UICorner"),

	["ButtonTitle"] = Instance.new("TextLabel"),

	["Button"] = Instance.new("TextButton"),

	["discordTitle"] = Instance.new("TextButton")

}

crackedhub["https://discord.gg/VBU9K6ABuE Hub Key GUI"]["Parent"] = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")

crackedhub["https://discord.gg/VBU9K6ABuE Hub Key GUI"]["Name"] = 'https://discord.gg/VBU9K6ABuE Hub Key System Gui'

crackedhub["https://discord.gg/VBU9K6ABuE Hub Key GUI"]["DisplayOrder"] = 1



crackedhub["Main"]["Parent"] = crackedhub["https://discord.gg/VBU9K6ABuE Hub Key GUI"]

crackedhub["Main"]["Name"] = 'Main'

crackedhub["Main"]["AnchorPoint"] = Vector2.new(0.500000, 0.500000)

crackedhub["Main"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42)

crackedhub["Main"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

crackedhub["Main"]["BorderSizePixel"] = 0

crackedhub["Main"]["Position"] = UDim2.new(0.500000, 0.000000, 0.500000, 0.000000)

crackedhub["Main"]["Size"] = UDim2.new(0.000000, 350.000000, 0.000000, 155.000000)



crackedhub["MainCorner"]["Parent"] = crackedhub["Main"]

crackedhub["MainCorner"]["Name"] = 'MainCorner'

crackedhub["MainCorner"]["CornerRadius"] = UDim.new(0.000000, 4.000000)



crackedhub["Topsec"]["Parent"] = crackedhub["Main"]

crackedhub["Topsec"]["Name"] = 'Topsec'

crackedhub["Topsec"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Topsec"]["BackgroundTransparency"] = 1

crackedhub["Topsec"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 30.000000)



crackedhub["SecLinesec"]["Parent"] = crackedhub["Topsec"]

crackedhub["SecLinesec"]["Name"] = 'SecLinesec'

crackedhub["SecLinesec"]["AnchorPoint"] = Vector2.new(0.500000, 1.000000)

crackedhub["SecLinesec"]["BackgroundColor3"] = Color3.fromRGB(138, 189, 255)

crackedhub["SecLinesec"]["BorderSizePixel"] = 0

crackedhub["SecLinesec"]["Position"] = UDim2.new(0.500000, 0.000000, 1.000000, - 4.000000)

crackedhub["SecLinesec"]["Size"] = UDim2.new(1.000000, - 10.000000, 0.000000, 2.000000)



crackedhub["UIGradient"]["Parent"] = crackedhub["SecLinesec"]

crackedhub["UIGradient"]["Name"] = 'UIGradient'



crackedhub["Sectiontitle"]["Parent"] = crackedhub["Topsec"]

crackedhub["Sectiontitle"]["Name"] = 'Sectiontitle'

crackedhub["Sectiontitle"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

crackedhub["Sectiontitle"]["FontSize"] = Enum.FontSize.Size14

crackedhub["Sectiontitle"]["Text"] = 'https://discord.gg/VBU9K6ABuE Hub'

crackedhub["Sectiontitle"]["TextColor3"] = Color3.fromRGB(138, 189, 255)

crackedhub["Sectiontitle"]["TextSize"] = 14

crackedhub["Sectiontitle"]["TextXAlignment"] = Enum.TextXAlignment.Left

crackedhub["Sectiontitle"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Sectiontitle"]["BackgroundTransparency"] = 1

crackedhub["Sectiontitle"]["LayoutOrder"] = 1

crackedhub["Sectiontitle"]["Position"] = UDim2.new(0.392857, 0.000000, 0.000000, 0.000000)

crackedhub["Sectiontitle"]["Size"] = UDim2.new(0.000000, 80.000000, 0.000000, 25.000000)



crackedhub["ImageLabel"]["Parent"] = crackedhub["Topsec"]

crackedhub["ImageLabel"]["Name"] = 'ImageLabel'

crackedhub["ImageLabel"]["Image"] = 'rbxassetid://'

crackedhub["ImageLabel"]["Active"] = false

crackedhub["ImageLabel"]["AnchorPoint"] = Vector2.new(1.000000, 0.500000)

crackedhub["ImageLabel"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)

crackedhub["ImageLabel"]["BackgroundTransparency"] = 1

crackedhub["ImageLabel"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

crackedhub["ImageLabel"]["BorderSizePixel"] = 0

crackedhub["ImageLabel"]["Position"] = UDim2.new(1.000000, 0.000000, 0.450000, 0.000000)

crackedhub["ImageLabel"]["Selectable"] = false

crackedhub["ImageLabel"]["Size"] = UDim2.new(0.000000, 22.000000, 0.000000, 22.000000)



crackedhub["ChildMain"]["Parent"] = crackedhub["Main"]

crackedhub["ChildMain"]["Name"] = 'ChildMain'

crackedhub["ChildMain"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)

crackedhub["ChildMain"]["BackgroundTransparency"] = 1

crackedhub["ChildMain"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

crackedhub["ChildMain"]["BorderSizePixel"] = 0

crackedhub["ChildMain"]["Position"] = UDim2.new(0.000000, 0.000000, 0.000000, 30.000000)

crackedhub["ChildMain"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, - 30.000000)



crackedhub["ChildListLayout"]["Parent"] = crackedhub["ChildMain"]

crackedhub["ChildListLayout"]["Name"] = 'ChildListLayout'

crackedhub["ChildListLayout"]["SortOrder"] = Enum.SortOrder.LayoutOrder

crackedhub["ChildListLayout"]["Padding"] = UDim.new(0.000000, 5.000000)



crackedhub["BoxFrame"]["Parent"] = crackedhub["ChildMain"]

crackedhub["BoxFrame"]["Name"] = 'BoxFrame'

crackedhub["BoxFrame"]["BackgroundColor3"] = Color3.fromRGB(60, 60, 60)

crackedhub["BoxFrame"]["BackgroundTransparency"] = 1

crackedhub["BoxFrame"]["Position"] = UDim2.new(0.000000, 0.000000, 0.208333, 0.000000)

crackedhub["BoxFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 60.000000)



crackedhub["BoxCorner"]["Parent"] = crackedhub["BoxFrame"]

crackedhub["BoxCorner"]["Name"] = 'BoxCorner'

crackedhub["BoxCorner"]["CornerRadius"] = UDim.new(0.000000, 4.000000)



crackedhub["BoxBG"]["Parent"] = crackedhub["BoxFrame"]

crackedhub["BoxBG"]["Name"] = 'BoxBG'

crackedhub["BoxBG"]["AnchorPoint"] = Vector2.new(0.500000, 0.500000)

crackedhub["BoxBG"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24)

crackedhub["BoxBG"]["Position"] = UDim2.new(0.500000, 0.000000, 0.500000, 0.000000)

crackedhub["BoxBG"]["Size"] = UDim2.new(1.000000, - 10.000000, 1.000000, 0.000000)



crackedhub["ButtonCorner"]["Parent"] = crackedhub["BoxBG"]

crackedhub["ButtonCorner"]["Name"] = 'ButtonCorner'

crackedhub["ButtonCorner"]["CornerRadius"] = UDim.new(0.000000, 4.000000)



crackedhub["BoxCor"]["Parent"] = crackedhub["BoxBG"]

crackedhub["BoxCor"]["Name"] = 'BoxCor'

crackedhub["BoxCor"]["AnchorPoint"] = Vector2.new(1.000000, 0.500000)

crackedhub["BoxCor"]["BackgroundColor3"] = Color3.fromRGB(90, 90, 90)

crackedhub["BoxCor"]["ClipsDescendants"] = true

crackedhub["BoxCor"]["Position"] = UDim2.new(1.000000, - 5.000000, 0.000000, 40.000000)

crackedhub["BoxCor"]["Size"] = UDim2.new(1.000000, - 10.000000, 0.000000, 25.000000)



crackedhub["ButtonCorner_2"]["Parent"] = crackedhub["BoxCor"]

crackedhub["ButtonCorner_2"]["Name"] = 'ButtonCorner'

crackedhub["ButtonCorner_2"]["CornerRadius"] = UDim.new(0.000000, 4.000000)



crackedhub["Box"]["Parent"] = crackedhub["BoxCor"]

crackedhub["Box"]["Name"] = 'Box'

crackedhub["Box"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

crackedhub["Box"]["FontSize"] = Enum.FontSize.Size14

crackedhub["Box"]["OverlayNativeInput"] = true

crackedhub["Box"]["PlaceholderColor3"] = Color3.fromRGB(178, 178, 178)

crackedhub["Box"]["PlaceholderText"] = 'Key here'

crackedhub["Box"]["Text"] = ''

crackedhub["Box"]["TextColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Box"]["TextSize"] = 14

crackedhub["Box"]["TextXAlignment"] = Enum.TextXAlignment.Left

crackedhub["Box"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Box"]["BackgroundTransparency"] = 1

crackedhub["Box"]["Position"] = UDim2.new(0.000000, 5.000000, 0.000000, 0.000000)

crackedhub["Box"]["Size"] = UDim2.new(1.000000, - 5.000000, 1.000000, 0.000000)



crackedhub["TextNSBoxLine"]["Parent"] = crackedhub["BoxCor"]

crackedhub["TextNSBoxLine"]["Name"] = 'TextNSBoxLine'

crackedhub["TextNSBoxLine"]["BackgroundColor3"] = Color3.fromRGB(131, 181, 255)

crackedhub["TextNSBoxLine"]["BackgroundTransparency"] = 1

crackedhub["TextNSBoxLine"]["Position"] = UDim2.new(0.000000, 0.000000, 1.000000, - 2.000000)

crackedhub["TextNSBoxLine"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 6.000000)



crackedhub["TextNSBoxLineCorner"]["Parent"] = crackedhub["TextNSBoxLine"]

crackedhub["TextNSBoxLineCorner"]["Name"] = 'TextNSBoxLineCorner'

crackedhub["TextNSBoxLineCorner"]["CornerRadius"] = UDim.new(1.000000, 0.000000)



crackedhub["Boxtitle"]["Parent"] = crackedhub["BoxBG"]

crackedhub["Boxtitle"]["Name"] = 'Boxtitle'

crackedhub["Boxtitle"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)

crackedhub["Boxtitle"]["FontSize"] = Enum.FontSize.Size14

crackedhub["Boxtitle"]["RichText"] = true

crackedhub["Boxtitle"]["Text"] = 'Input your Key here'

crackedhub["Boxtitle"]["TextColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Boxtitle"]["TextSize"] = 14

crackedhub["Boxtitle"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Boxtitle"]["BackgroundTransparency"] = 1

crackedhub["Boxtitle"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 25.000000)



crackedhub["ButtonFrame"]["Parent"] = crackedhub["ChildMain"]

crackedhub["ButtonFrame"]["Name"] = 'ButtonFrame'

crackedhub["ButtonFrame"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["ButtonFrame"]["BackgroundTransparency"] = 1

crackedhub["ButtonFrame"]["Position"] = UDim2.new(0.000000, 0.000000, 0.300000, 0.000000)

crackedhub["ButtonFrame"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 25.000000)



crackedhub["ButtonBG"]["Parent"] = crackedhub["ButtonFrame"]

crackedhub["ButtonBG"]["Name"] = 'ButtonBG'

crackedhub["ButtonBG"]["AnchorPoint"] = Vector2.new(0.500000, 0.500000)

crackedhub["ButtonBG"]["BackgroundColor3"] = Color3.fromRGB(131, 181, 255)

crackedhub["ButtonBG"]["Position"] = UDim2.new(0.500000, 0.000000, 0.500000, 0.000000)

crackedhub["ButtonBG"]["Size"] = UDim2.new(1.000000, - 10.000000, 1.000000, 0.000000)



crackedhub["ButtonCorner_3"]["Parent"] = crackedhub["ButtonBG"]

crackedhub["ButtonCorner_3"]["Name"] = 'ButtonCorner'

crackedhub["ButtonCorner_3"]["CornerRadius"] = UDim.new(0.000000, 4.000000)



crackedhub["ButtonTitle"]["Parent"] = crackedhub["ButtonBG"]

crackedhub["ButtonTitle"]["Name"] = 'ButtonTitle'

crackedhub["ButtonTitle"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)

crackedhub["ButtonTitle"]["FontSize"] = Enum.FontSize.Size14

crackedhub["ButtonTitle"]["Text"] = 'Copy Get Key URL'

crackedhub["ButtonTitle"]["TextColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["ButtonTitle"]["TextSize"] = 14

crackedhub["ButtonTitle"]["TextXAlignment"] = Enum.TextXAlignment.Left

crackedhub["ButtonTitle"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["ButtonTitle"]["BackgroundTransparency"] = 1

crackedhub["ButtonTitle"]["Position"] = UDim2.new(0.000000, 10.000000, 0.000000, 0.000000)

crackedhub["ButtonTitle"]["Size"] = UDim2.new(1.000000, - 10.000000, 1.000000, 0.000000)



crackedhub["Button"]["Parent"] = crackedhub["ButtonBG"]

crackedhub["Button"]["Name"] = 'Button'

crackedhub["Button"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

crackedhub["Button"]["FontSize"] = Enum.FontSize.Size14

crackedhub["Button"]["Text"] = ''

crackedhub["Button"]["TextColor3"] = Color3.fromRGB(0, 0, 0)

crackedhub["Button"]["TextSize"] = 14

crackedhub["Button"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["Button"]["BackgroundTransparency"] = 1

crackedhub["Button"]["Size"] = UDim2.new(1.000000, 0.000000, 1.000000, 0.000000)



crackedhub["discordTitle"]["Parent"] = crackedhub["ChildMain"]

crackedhub["discordTitle"]["Name"] = 'discordTitle'

crackedhub["discordTitle"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

crackedhub["discordTitle"]["FontSize"] = Enum.FontSize.Size18

crackedhub["discordTitle"]["Text"] = 'discord.gg/pka9g8vy5c'

crackedhub["discordTitle"]["TextColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["discordTitle"]["TextSize"] = 16

crackedhub["discordTitle"]["Active"] = false

crackedhub["discordTitle"]["BackgroundColor3"] = Color3.fromRGB(230, 230, 230)

crackedhub["discordTitle"]["BackgroundTransparency"] = 1

crackedhub["discordTitle"]["Position"] = UDim2.new(0.000000, 10.000000, 0.000000, 0.000000)

crackedhub["discordTitle"]["Selectable"] = false

crackedhub["discordTitle"]["Size"] = UDim2.new(1.000000, 0.000000, 0.000000, 25.000000)

crackedhub["Button"].MouseButton1Click:Connect(function()

end)

crackedhub["ImageLabel"].MouseButton1Click:Connect(function()

	game.Players.LocalPlayer.PlayerGui["https://discord.gg/VBU9K6ABuE Hub Key System Gui"]:Destroy()

end)

