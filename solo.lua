local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Solo Quit", 5013109572)

local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main Fuctions", 5012544693)
local section1 = page:addSection("Main")

section1:addButton("Teleport to City", function()
    game:GetService("TeleportService"):Teleport(6698092752, game.Players.LocalPlayer)
end)

section1:addButton("City Hopper", function()
    local sl = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/6698092752/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(sl.data) do
        if v.playing ~= v.maxPlayers then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
end)

section1:addKeybind("Toggle Keybind", Enum.KeyCode.LeftAlt, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
end)

local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
        colors:addColorPicker(theme, color, function(color3)
        venyx:setTheme(theme, color3)
    end)
end

venyx:SelectPage(venyx.pages[1], true)
