local component = require("component")
local fs = require("filesystem")
local gpu = component.gpu
local w,h = gpu.getResolution()

gpu.setResolution(16, 16);
gpu.setBackground(0x000099);
gpu.setForeground(0xFFFF00);
gpu.fill(0, 0, 16, 16, " ");
gpu.set(4, 3, "00  00");
gpu.set(4, 4, "00000");
gpu.set(4, 5, "000000");
gpu.set(4, 6, "00  00");
--!КуМир-Стандарт
