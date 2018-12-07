local term = require("term")
local component = require("component")
local gpu = component.gpu

if not term.isAvailable() then
  print("Library TERM API is not avavible. Exit...");
  return;
elseif gpu == nil then
  print("No GPU detected. Exit...");
end

local arr = {"П","р","и","в","е","т",","," ","К","у","М","и","р","!"};
for pos, value in ipairs(arr) do
  term.write(value);
  os.sleep(0.1);
end

local w,h = gpu.getResolution();

gpu.setBackground(0xFFFFFF);
gpu.setForeground(0x000000);
gpu.fill(1, 1, w, h, " ");
term.clear();
term.write("Выберите версию КуМир\'а для запуска:");

gpu.setBackground(0x000099);
gpu.setForeground(0xFFFF00);
term.write("\n1.)КуМир-Стандарт");
gpu.setBackground(0xFF4C4C);
term.write("\n2.)КуМир для Старшеклассников");
gpu.setBackground(0x006600);
term.write("\n3.)КуМир-Про");
gpu.setBackground(0xFF0000);
term.write("\n4.)КуМир для учителей");
gpu.setBackground(0xFFFFFF);
gpu.setForeground(0x000000);
term.write("\n0.) Выход\n\n");

local i = io.read("*n");
if i==1 then
  loadfile("/KumirApp/kumir-classic.lua")();
elseif i==2 then
  loadfile("/KumirApp/kumir-highgrade.lua")();
elseif i==3 then
  loadfile("/KumirApp/kumir-ide.lua")();
elseif i==4 then
  loadfile("/KumirApp/kumir-teacher.lua")();
else
  return
end
