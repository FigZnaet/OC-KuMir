local fs = require("filesystem")
local component = require("component")
local gpu = component.gpu;
local term = require("term")

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
  firstLaunch = "/KuMir/tutorials/FirstLaunch.txt",
}
local examples = {
  fsK = "/KuMir/examples/standard/FirstEx.kum",
  fsF = "/KuMir/examples/standard/FirstEx.fl",
  --[Robot]
  frK = "/KuMir/examples/robot/FirstEx.kum",
  frF = "/KuMir/examples/robot/FirstEx.fl",
}

term.write("\n\nУстанавливаю Систему программирования КуМир...\n\n");
for key, value in pairs(files) do
  term.write(url..value.." -> "..value.."\n");
  if not fs.exists(fs.path(value)) or not fs.isDirectory(fs.path(value)) then
    fs.makeDirectory(fs.path(value));
  elseif fs.exists(value) then
    fs.remove(value);
  end
  loadfile("/bin/wget.lua")(url..value,value,"-f");
end

term.write("\n\nУстанавливаю справку...\n\n");
for key, value in pairs(tutorials) do
  term.write(url..value.." -> "..value.."\n");
  if not fs.exists(fs.path(value)) or not fs.isDirectory(fs.path(value)) then
    fs.makeDirectory(fs.path(value));
  elseif fs.exists(value) then
    fs.remove(value);
  end
  loadfile("/bin/wget.lua")(url..value,value,"-f");
end

term.write("\n\nУстанавливаю примеры...\n\n");
for key, value in pairs(examples) do
  term.write(url..value.." -> "..value.."\n");
  if not fs.exists(fs.path(value)) or not fs.isDirectory(fs.path(value)) then
    fs.makeDirectory(fs.path(value));
  elseif fs.exists(value) then
    fs.remove(value);
  end
  loadfile("/bin/wget.lua")(url..value,value,"-f");
end
