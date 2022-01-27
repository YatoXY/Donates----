local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/YatoXY/Donates----/main/Library.lua"))()

local win = ui:New({
    Name = "Donates Hub",
    FolderToSave = "Donates Hub - Reaper 2 ESP Quest"
})

local main = win:Tab("Main")

local esp_s = main:Section("ESP")

function esp_quest()
    for i, v in pairs(game:GetService("Workspace").NPCs:GetDescendants()) do
        if v.ClassName == "Part" and v.Name == "Head" then
            local esp = Instance.new("BillboardGui", v)
            esp.Name = "Esp"
            esp.AlwaysOnTop = true
            esp.Size = UDim2.new(0, 50, 0, 50)
            esp.StudsOffset = Vector3.new(0,5,0)
            esp.Enabled = false

            local txt = Instance.new("TextLabel", esp)
            txt.Name = "Txt"
            txt.BackgroundColor3 = Color3.new(1,1,1) -- color
            txt.BackgroundTransparency = 1 -- transparency
            txt.Size = UDim2.new(1.2, 0, 1, 0) -- size
            txt.Text = v.Parent.Name -- what the label says
            txt.TextColor3 = Color3.new(0, 1, 0.298039) -- color
            txt.TextScaled = true -- if the text is scaled or not
            txt.TextStrokeColor3 = Color3.new(0, 0, 0)
            txt.TextStrokeTransparency = false
            txt.Font = Enum.Font.GothamSemibold
        end
    end
end

esp_quest()

esp_s:Toggle("ESP Quest",false,"Toggle",function(bool)
    if bool then
        for i, v in pairs(game:GetService("Workspace").NPCs:GetDescendants()) do
            if v.ClassName == "Part" and v.Name == "Head" then
                v.Esp.Enabled = true
            end
        end
    else
        for i, v in pairs(game:GetService("Workspace").NPCs:GetDescendants()) do
            if v.ClassName == "Part" and v.Name == "Head" then
                v.Esp.Enabled = false
            end
        end
    end
end)
