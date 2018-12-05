local term = require("term")
local component = require("component")
local gpu = component.gpu

if not term.isAvavible() then
  print("Library TERM API is not avavible. Exit...");
  return;
elseif gpu == nil then
  print("No GPU detected. Exit...");
end

local arr = {"П","р","и","в","е","т",","," ","К","у","М","и","р","!"};
for pos, value in ipairs(arr) do
  term.write(value);
  os.sleep(1);
end
