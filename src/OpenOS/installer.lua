local fs = require("filesystem")
local component = require("component")
local gpu = component.gpu;
local term = require("term")

gpu.setBackground(0x0000CC);
gpu.setForeground(0xFFFF33);

term.write("Запускаю установщик КуМир...");

local url = "https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/";

--Bin
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/bin/kumir.lua -> /bin/kumir.lua\n");
loadfile("/bin/wget.lua")(url.."bin/kumir.lua", "/bin/kumir.lua", "-f");

--Ver
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/version.cfg -> /bin/KuMir/version.cfg\n");
loadfile("/bin/wget.lua")(url.."KuMir/version.cfg", "/KuMir/version.cfg", "-f");

--Lib
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/version.cfg -> /bin/KuMir/lib/Robot.lua\n");
loadfile("/bin/wget.lua")(url.."KuMir/lib/Robot.lua", "/KuMir/Robot.lua", "-f");
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/version.cfg -> /bin/KuMir/lib/Water.lua\n");
loadfile("/bin/wget.lua")(url.."KuMir/lib/Water.lua", "/KuMir/lib/Water.lua", "-f");
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/version.cfg -> /bin/KuMir/lib/Drawer.lua\n");
loadfile("/bin/wget.lua")(url.."KuMir/lib/Drawer.lua", "/KuMir/lib/Drawer.lua", "-f");
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/version.cfg -> /bin/KuMir/lib/Painter.lua\n");
loadfile("/bin/wget.lua")(url.."KuMir/lib/Painter.lua", "/KuMir/lib/Painter.lua", "-f");
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/src/OpenOS/KuMir/lib/Turner.lua -> /bin/KuMir/lib/Turner.lua\n");
loadfile("/bin/wget.lua")(url.."KuMir/lib/Turner.lua", "/KuMir/lib/Turner.lua", "-f");

--Tutorials
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/KuMir/Tutorials/FirstLaunch.txt -> /bin/KuMir/Tutorials/FirstLaunch.txt\n");
loadfile("/bin/wget.lua")(url.."KuMir/tutorials/FirstLaunch.txt", "/KuMir/tutorials/FirstLaunch.txt", "-f");

--Examples Basic
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/KuMir/examples/basic/Base.kum -> /bin/KuMir/Examples/Basic/Base.kum\n");
loadfile("/bin/wget.lua")(url.."KuMir/examples/basic/Base.kum", "/KuMir/Examples/Basic/Base.kum", "-f");
--Examples Robot
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/KuMir/examples/robot/RobotBase.kum. -> /bin/KuMir/Examples/Robot/RobotBase.kum\n");
loadfile("/bin/wget.lua")(url.."KuMir/examples/robot/RobotBase.kum", "/KuMir/Examples/Robot/RobotBase.kum", "-f");
term.write("https://raw.githubusercontent.com/Vladg24YT/OC-KuMir/master/KuMir/examples/robot/RobotBase.fil. -> /bin/KuMir/Examples/Robot/RobotBase.fil\n");
loadfile("/bin/wget.lua")(url.."KuMir/examples/robot/RobotBase.fil", "/KuMir/Examples/Robot/RobotBase.fil", "-f");
