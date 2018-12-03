local term = require("term")
local component = require("component")
local gpu = component.gpu

if not term.isAvavible() then
  print("Library TERM API is not avavible. Exit...");
  return;
elseif gpu == nil then
  print("No GPU detected. Exit...");
end

local syntax = {
  
}
