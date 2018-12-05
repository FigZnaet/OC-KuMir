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
gpu.fill(0, 0, w, h, " ");
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
term.write("\n0.) Выход");

if term.read()==1 then
  dofile("/KuMir/bin/kumir-classic.lua");
elseif term.read()==2 then
  dofile("/KuMir/bin/kumir-highgrade.lua");
elseif term.read()==3 then
  dofile("/KuMir/bin/kumir-ide.lua");
elseif term.read()==4 then
  dofile("/KuMir/bin/kumir-teacher.lua");
else
  return
end
