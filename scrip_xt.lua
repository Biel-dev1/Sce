-- Biblioteca de GUI (Rayfield)
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Variáveis Globais
_G.AutoMission = false
_G.AutoFarmEnemies = false
_G.AutoRaceProgress = false
_G.AutoChestFarm = false

-- Serviços do Roblox
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local HumanoidRootPart = LocalPlayer.Character:WaitForChild("HumanoidRootPart")

-- Função para exibir notificações no jogo
local function Notify(message)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Blox Fruits Script",
        Text = message,
        Duration = 5
    })
end

-- Função para detectar a raça e progresso
local function CheckRaceProgress()
    local raceProgress = ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
    if LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "V4"
    elseif raceProgress == -2 then
        return "V3"
    elseif raceProgress == -1 then
        return "V2"
    else
        return "V1"
    end
end

-- Função para progredir automaticamente a raça
local function ProgressRace()
    local raceVersion = CheckRaceProgress()
    Notify("Sua raça atual: " .. raceVersion)

    if raceVersion == "V1" then
        Notify("Progredindo para Race V2...")
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    elseif raceVersion == "V2" then
        Notify("Progredindo para Race V3...")
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    elseif raceVersion == "V3" then
        Notify("Progredindo para Race V4...")
        local canTransform = ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor")
        if canTransform then
            Notify("Desbloqueando Race V4!")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Transform")
        else
            Notify("Complete as missões para acessar o Templo da Lua Cheia.")
        end
    elseif raceVersion == "V4" then
        Notify("Race V4 já desbloqueada!")
    end
end

-- Função para iniciar missões automaticamente
local function StartMission()
    local level = LocalPlayer.Data.Level.Value
    local mission = nil

    if level >= 1 and level <= 9 then
        mission = {
            QuestName = "BanditQuest1",
            QuestLevel = 1,
            MonsterName = "Bandit",
            NPCPosition = CFrame.new(1059, 15, 1550),
            MonsterSpawn = CFrame.new(1353, 3, 1376)
        }
    elseif level >= 10 and level <= 14 then
        mission = {
            QuestName = "JungleQuest",
            QuestLevel = 1,
            MonsterName = "Monkey",
            NPCPosition = CFrame.new(-1598, 35, 153),
            MonsterSpawn = CFrame.new(-1402, 98, 90)
        }
    elseif level >= 15 and level <= 29 then
        mission = {
            QuestName = "JungleQuest",
            QuestLevel = 2,
            MonsterName = "Gorilla",
            NPCPosition = CFrame.new(-1598, 35, 153),
            MonsterSpawn = CFrame.new(-1267, 66, -531)
        }
    end

    if mission then
        HumanoidRootPart.CFrame = mission.NPCPosition
        wait(1)
        ReplicatedStorage.Remotes.CommF_:InvokeServer(mission.QuestName, mission.QuestLevel)
        Notify("Missão aceita: " .. mission.QuestName)
    else
        Notify("Nenhuma missão disponível para este nível.")
    end
end

-- Função para derrotar inimigos
local function FarmEnemies()
    local mission = GetMissionData()
    if mission then
        for _, enemy in pairs(Workspace.Enemies:GetChildren()) do
            if enemy.Name == mission.MonsterName and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
                wait(0.5)
                repeat
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("Attack", enemy)
                    wait(0.2)
                until not enemy:FindFirstChild("Humanoid") or enemy.Humanoid.Health <= 0
                Notify("Inimigo derrotado: " .. mission.MonsterName)
            end
        end
    else
        Notify("Nenhum inimigo correspondente encontrado.")
    end
end

-- Função para coletar baús valiosos
local function CollectChests()
    local chests = Workspace:GetChildren()

    for _, chest in pairs(chests) do
        if chest:IsA("Model") and chest:FindFirstChild("HumanoidRootPart") then
            local chestName = chest.Name:lower()
            if chestName:find("legendary") or chestName:find("rare") then
                HumanoidRootPart.CFrame = chest.HumanoidRootPart.CFrame
                wait(1)
                print("Coletando baú: ", chest.Name)
            end
        end
    end
end

-- Gerenciamento de Inventário
local function ManageInventory()
    local inventory = ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
    local weapons, materials, fruits = {}, {}, {}

    for _, item in pairs(inventory) do
        if item.Type == "Weapon" then
            table.insert(weapons, item.Name)
        elseif item.Type == "Material" then
            table.insert(materials, item.Name)
        elseif item.Type == "Blox Fruit" then
            table.insert(fruits, item.Name)
        end
    end

    Notify("Inventário Atualizado!")
    print("Armas: ", table.concat(weapons, ", "))
    print("Materiais: ", table.concat(materials, ", "))
    print("Frutas: ", table.concat(fruits, ", "))
end

-- Menu GUI
local Window = Rayfield:CreateWindow({
    Name = "Blox Fruits Script",
    LoadingTitle = "Carregando...",
    LoadingSubtitle = "Script Completo",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "BloxFruitsScripts",
        FileName = "Config"
    },
    KeySystem = false,
    GameWindow = true  -- Usando PlayerGui em vez de CoreGui
})

-- Gui Tabs
local AutoTab = Window:CreateTab("Automação", 4483362458)
local RaceTab = Window:CreateTab("Raça", 4483362458)
local ChestTab = Window:CreateTab("Baús", 4483362458)

-- Gui Toggles
AutoTab:CreateToggle({
    Name = "Automatizar Missões",
    CurrentValue = false,
    Flag = "AutoMission",
    Callback = function(Value)
        _G.AutoMission = Value
    end,
})

AutoTab:CreateToggle({
    Name = "Farm de Inimigos",
    CurrentValue = false,
    Flag = "AutoFarmEnemies",
    Callback = function(Value)
        _G.AutoFarmEnemies = Value
    end,
})

RaceTab:CreateToggle({
    Name = "Progredir Raça",
    CurrentValue = false,
    Flag = "AutoRaceProgress",
    Callback = function(Value)
        _G.AutoRaceProgress = Value
    end,
})

ChestTab:CreateToggle({
    Name = "Farm de Baús Valiosos",
    CurrentValue = false,
    Flag = "AutoChestFarm",
    Callback = function(Value)
        _G.AutoChestFarm = Value
    end,
})

-- Loop Principal
while wait(2) do
    if _G.AutoMission then
        StartMission()
    end
    if _G.AutoFarmEnemies then
        FarmEnemies()
    end
    if _G.AutoRaceProgress then
        ProgressRace()
    end
    if _G.AutoChestFarm then
        CollectChests()
    end
    ManageInventory()
endend
