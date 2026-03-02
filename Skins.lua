-- Skins.lua
local SKIN_AUTHOR  = "Fafnyir"
local SKIN_VERSION = "1.0.1"
local SKIN_NOTES   = "Masque skin."
local Masque = LibStub("Masque", true)
if not Masque then return end

local BasePath = "Interface\\AddOns\\Masque_Fafnyir\\Textures\\"

-- Icon padding
local ICON_PAD_NORMAL = { 0.07, 0.93, 0.07, 0.93 }

-- Cooldown inset
local COOLDOWN_INSET_NORMAL = 4

-- Register a skin
local function RegisterSkin(name, width, height, backdropTexture)
    local skin = {
        Shape   = "Square",
        Author  = SKIN_AUTHOR,
        Version = SKIN_VERSION,
        Description = SKIN_NOTES,

        Normal = { Texture = BasePath.."Normal", Width=width, Height=height },
        Highlight = { Texture = BasePath.."Highlight", Width=width, Height=height },
        Checked = { Texture = BasePath.."Checked", Width=width, Height=height },
        Pushed = { Texture = BasePath.."Pushed", Width=width, Height=height },
        Disabled = { Texture = BasePath.."Disabled", Width=width, Height=height },
        Border = { Texture = BasePath.."Border", Width=width, Height=height },

        Backdrop = {
            Width       = width,
            Height      = height,
            Texture     = BasePath..backdropTexture,
            EdgeSize    = 6,
            EdgeTexture = BasePath.."Edge",
            BlendMode   = "BLEND",
            TexCoords   = {0,1,0,1},
        },

        Icon = { Width=width, Height=height, TexCoords=ICON_PAD_NORMAL, Mask=BasePath.."Mask" },

        Cooldown = {
            Width  = width - COOLDOWN_INSET_NORMAL*2,
            Height = height - COOLDOWN_INSET_NORMAL*2,
            SetAllPoints = false,
            DrawSwipe = true,
        },
    }

    Masque:AddSkin(name, skin)
end

-- Register skins
RegisterSkin("Fafnyir", 36, 36, "Backdrop")
--RegisterSkin("Luxthos", 36, 36, "Backdrop_Lux")