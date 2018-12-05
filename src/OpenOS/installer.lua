local fs = require("filesystem")
local component = require("component")
local gpu = component.gpu;
local term = require("term")

gpu.setBackground(0x0000CC);
gpu.setForeground(0xFFFF33);

term.write("\n\nЗапускаю установщик КуМир...\n\n");

local url = "https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS";
local files = {
  kumir = "/bin/kumir.lua",
  config = "/KuMir/version.cfg",
  defaultLib = "/lib/KDefault.lua",
  robotLib = "/lib/KRobot.lua",
  waterLib = "/lib/KWater.lua",
  drawerLib = "/lib/KDrawer.lua",
  painterLib = "/lib/KPainter.lua",
  turnerLib = "/lib/KTurner.lua",
}
local tutorials = {
  firstLaunch = "/KuMir/tutorials/FirstLaunch.txt" 
}
local examples = {
  fsK = "/KuMir/examples/standard/FirstEx.kum",
  fsF = "/KuMir/examples/standard/FirstEx.fl",
  --[Robot]
  frK = "/KuMir/examples/robot/FirstEx.kum",
  frF = "/KuMir/examples/robot/FirstEx.fl"
}

for i, value in ipairs(files) do
  term.write(url..value.." -> "..value);
  if not fs.exists(fs.path(value)) or not fs.isDirectory(fs.path(value)) then
    fs.makeDirectory(fs.path(value));
  end
  loadfile("/bin/wget.lua")(url..value,value,"-f");
end
