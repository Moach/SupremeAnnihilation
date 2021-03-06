resbarWindow = {
  className = "window", -- FIXME: can this be done with resbarWindow in a good manner?
  resType = "metal"
}
resbarWindow = GenMeta(resbarWindow, window)
function resbarWindow:New(newType, resizeTo, moveTo)
  local newColor = {
    key = 'metal',
    desc = 'Metal Color',
    color =  { 1.0, 1.0, 1.0, 1.0 }
  }
  local stringColor = WhiteStr
  if newType == "energy" then
    newColor = {
      key = 'energy',
      desc = 'Energy Color',
      color =  { 1.0, 1.0, 0.0, 1.0 }
    }
    stringColor = YellowStr
  end
  if newType == "metal" then
    newTexture = margin:New(
      texture:New({
        filename = "resbar.png",
        imgSize = 64,
        innerX = 0,
        innerY = 25,
        innerW = 55,
        innerH = 21
      }),
      { 0,0,13,0 }
    )
  else
    newTexture = margin:New(
      texture:New({
        filename = "resbar.png",
        imgSize = 64,
        innerX = 0,
        innerY = 1,
        innerW = 64,
        innerH = 21
      }),
      { 4,0,0,0 }
    )
  end
  local function GetArrow(newInnerX)
    return texture:New{
      filename = "resbar.png",
      imgSize = 64,
      innerX = newInnerX,
      innerY = 46,
      innerW = 6,
      innerH = 9
    }
  end
  local titleText = text:New({
    text=stringColor .. string.upper(newType),
    align="center"
  })
  local function GetNumber(color, align)
    return number:New{
      align = align,
      margins = { 0, 0, 0, 0 },
      colored = color
    }
  end
  local shareIndicator = texture:New{
    filename = "resbar.png",
    imgSize = 64,
    innerX = 14,
    innerY = 47,
    innerW = 8,
    innerH = 11
  }
  local newContent = free:New(
    newTexture,                   { 0,    0   }, { 0.2,   nil   },
    titleText,                    { 0,    0   }, { 0.2,   nil   },
    bar:New{ color = newColor },  { 0.3,  0.1 }, { 0.5,   7/23 },
    GetNumber(false, "center"),   { 0.5,  0.5 }, { 0.1,   0.5   },
    GetNumber(false, "right"),    { 0.7,  0.5 }, { 0.1,   0.5   },
    GetNumber(true,  "right"),    { 0.19, 0   }, { 0.1,   0.5   },
    GetNumber(true,  "right"),    { 0.19, 0.5 }, { 0.1,   0.5   },
    GetNumber(true,  "center"),   { 0.8,  0   }, { 0.2,   nil   },
    GetArrow(0),                  { 0.45, 0.5 }, { 6/381, 9/23  },
    GetArrow(0),                  { 0.47, 0.5 }, { 6/381, 9/23  },
    GetArrow(0),                  { 0.49, 0.5 }, { 6/381, 9/23  },
    GetArrow(7),                  { 0.60, 0.5 }, { 6/381, 9/23  },
    GetArrow(7),                  { 0.62, 0.5 }, { 6/381, 9/23  },
    GetArrow(7),                  { 0.64, 0.5 }, { 6/381, 9/23  },
    shareIndicator,               { 0.25, 0   }, { 8/381, 11/23 }
  )
  local windowName = string.upper(string.sub(newType, 1, 1))..string.sub(newType, 2).." Resourcebar"
  local newObject = window:New(windowName, newContent, resizeTo, moveTo)
  newObject:AddOption(option:New({
    name = "autoFactor",
    value = false,
    description = "Automatically switch to the stall factor when stalling."
  }))
  newObject.resType = newType
  newObject.stallFactor = false

  newObject.updateEvery = 5
  function newObject:Update()
    local lev, str, pul, inc, out, share, _, _ = Spring.GetTeamResources(Spring.GetMyTeamID(), self.resType)
    local trend = (inc-pul)/inc
    self[1][3]:SetValue(math.min(lev/str, 1))
    self[1][3].tooltip = "You currently have "..math.floor(lev).." "..self.resType.."."
    self[1][4]:SetNumber(lev)
    self[1][5]:SetNumber(str)
    self[1][6]:SetNumber(inc)
    self[1][7]:SetNumber(-pul)
    if self.stallFactor or pul>out and self:Option("autoFactor") then
      self[1][8].colored = false
      if out == 0 then
        self[1][8]:SetNumber(1)
      else
        self[1][8]:SetNumber(pul/out)
      end
    else
      self[1][8].colored = true
      self[1][8]:SetNumber(inc-pul)
    end

    self[1][8].tooltip = "Your income is "..GreenStr..math.floor(inc)..WhiteStr..
                         " and your pull is "..RedStr..math.floor(pul)..WhiteStr.." "..self.resType.."."
    self[1][09]:SetVisibility(trend <= -0.51)
    self[1][10]:SetVisibility(trend <= -0.21)
    self[1][11]:SetVisibility(trend <= -0.01)
    self[1][12]:SetVisibility(trend >=  0.01)
    self[1][13]:SetVisibility(trend >=  0.21)
    self[1][14]:SetVisibility(trend >=  0.51)

    self[1][15]:MoveTo(0.29 + 0.5*share, 0)
  end

  newObject[1][8]:AddCommand(command:New({
    desc = "switch between stall factor and netto income",
    OnPress = function(self)
      self.owner:GetWindow().stallFactor = not self.owner:GetWindow().stallFactor
    end
  }))
  newObject[1][3]:AddCommand(command:New({
    drag = true,
    OnDrag = function(self, x, _)
      local _, active, spec, _, _, _, _ = Spring.GetPlayerInfo(Spring.GetMyPlayerID())
      if active and not spec then
        Spring.SetShareLevel(self.owner:GetWindow().resType, x)
      end
    end,
    GetDescription = function(self, x, _)
      return "set "..self.owner:GetWindow().resType.." share level to "..math.floor(x*100+0.5).."%"
    end
  }))

  newObject = GenMeta(newObject, resbarWindow)
  newObject:Update()
  return newObject
end

resbarWindow:New("metal", {381/1024, 23/768}, {260/1024, 1})
local energyBar = resbarWindow:New("energy", {381/1024, 23/768}, {642/1024, 1})

energyBar[1][3]:AddCommand(command:New({
  requiresWidget = "Improved MetalMakers",
  button = 3,
  drag = true,
  OnDrag = function(_, x, _, _, _)
    Spring.SendCommands({"luaui energyhover "..(x or 1)})
  end,
  GetDescription = function(self, x, _)
    return "set the energyhover to "..math.floor(x*100+0.5).."%"
  end
}))

energyBar:AddCommand(command:New({
  requiresWidget = "Improved MetalMakers",
  desc = "force e-stall",
  button = 2,
  OnPress = function()
    Spring.SendCommands({"luaui forceestall"})
  end
}))
