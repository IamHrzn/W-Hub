--[[
  Stand-alone, this will not work for anybody. #1 UI is not loaded, and you do not have the custom ESP library that W hub uses.
]]  

local Main = Library.Load({
        Title = ("Universal")
    })
    local Tabs = {
        ESP = Main.AddTab('ESP'),
        Settings = Main.AddTab('Settings')
    }
    local Sections = {
        Visuals = {
            ESP = Tabs.Visuals.AddSection('ESP'),
            Settings = Tabs.Visuals.AddSection('Settings')
        },
        Settings = {
            Discord = Tabs.Settings.AddSection('Discord'),
            Setting = Tabs.Settings.AddSection('Settings'),
            Credits = Tabs.Settings.AddSection('GUI Credits'),
        }
    }

    Sections.Visuals.ESP.AddToggle({
        Name = ('ESP Enabled'),
        Default = false,
        Callback = function(f)
            esp.enabled = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Team Check Enabled'),
        Default = false,
        Callback = function(f)
            esp.teamcheck = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Add ESP to localplayer'),
        Default = false,
        Callback = function(f)
            esp.localplayer = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Add a limit to render distance'),
        Default = false,
        Callback = function(f)
            esp.limitdistance = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Skeleton ESP'),
        Default = false,
        Callback = function(f)
            esp.skeleton[1] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Box ESP'),
        Default = false,
        Callback = function(f)
            esp.box[1] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Healthbar ESP'),
        Default = false,
        Callback = function(f)
            esp.bars.healthbar[2]= (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Chams ESP'),
        Default = false,
        Callback = function(f)
            esp.highlights[6] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Radial ESP'),
        Default = false,
        Callback = function(f)
            esp.oof[1] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Name ESP'),
        Default = false,
        Callback = function(f)
            esp.text.name[2] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Health ESP'),
        Default = false,
        Callback = function(f)
            esp.text.health[2] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Distance ESP'),
        Default = false,
        Callback = function(f)
            esp.text.distance[2] = (f)
        end
    })
    Sections.Visuals.ESP.AddToggle({
        Name = ('Tool ESP'),
        Default = false,
        Callback = function(f)
            esp.text.tool[2] = (f)
        end
    })
    Sections.Settings.Discord.AddButton({
        Name = "Copy discord invite link to clipboard",
        Callback = function()
            setclipboard("https://discord.gg/AaxeUFCvv3")
        end    
    })
    Sections.Visuals.Settings.AddSlider({
        Name = ('Distance'),
        Default = esp.distance,
        Min = 0,
        Max = 10000,
        Increment = 100,
        Callback = function(v)
            esp.distance = (v)
        end
    })
    Sections.Visuals.Settings.AddSlider({
        Name = ('Arrow Size'),
        Default = esp.arrowsize,
        Min = 0,
        Max = 25,
        Increment = 1,
        Callback = function(v)
            esp.arrowsize = (v)
        end
    })
    Sections.Visuals.Settings.AddSlider({
        Name = ('Arrow distance'),
        Default = 20,
        Min = 0,
        Max = 75,
        Increment = 1,
        Callback = function(v)
            esp.arrowdistance = (v)
        end
    })
    Sections.Visuals.Settings.AddColorpicker({
        Name = ('Box ESP'),
        Default = esp.box[2],
        Callback = function(v)
            esp.box[2] = (v)
        end
    })
    Sections.Visuals.Settings.AddColorpicker({
        Name = ('Skeleton ESP'),
        Default = esp.skeleton[2],
        Callback = function(v)
            esp.skeleton[2] = (v)
        end
    })
    Sections.Visuals.Settings.AddColorpicker({
        Name = ('Text ESP'),
        Default = esp.skeleton[2],
        Callback = function(f)
            for i,v in pairs(esp.text) do
                v[3] = f
            end
        end
    })
    Sections.Visuals.Settings.AddDropdown({
        Name = ('Distance type'),
        Options = {"meters", 'studs'},
        Default = "meters",
        Callback = function(f)
            esp.distancetype = (f)
        end
    })
    Sections.Visuals.Settings.AddDropdown({
        Name = ('Healthbar position'),
        Options = {"left", 'right'},
        Default = "left",
        Callback = function(f)
            esp.bars.healthbar[1]= (f)
        end
    })
    Sections.Settings.Setting.AddBind({
        Name = "GUI toggle bind",
        Default = Enum.KeyCode.RightControl,
        Callback = function(State)
            shared.NapkinLibrary.Enabled = not shared.NapkinLibrary.Enabled
        end
    })
    Sections.Settings.Credits.AddButton({
        Name = "Dawid#7205 - Ui Library designer",
        Callback = function()
        end    
    })
