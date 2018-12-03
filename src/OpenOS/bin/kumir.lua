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
  types = {
    int = "цел ",
    float = "вещ ",
    char = "лит "
  },
  arrays = {
    int = "целтаб",
    float = "вещтаб",
    char = "литтаб",
    sizeb = "[",
    sizee = "]",
    divider = ":"
  },
  operators = {
    add = " + ",
    subtract = "-",
    multiply = "*",
    divide = "/",
    power = "**",
    equals = ":="
  },
  logic = {
    equal = "=",
    notEqual = "<>",
    less = "<",
    bigger = ">",
    lessEqual = "<=",
    biggerEqual = ">="
  },
  math = {
    sin = "SIN(",
    cos = "COS(",
    tg = "TG(",
    exp = "EXP(",
    ln = "LN(",
    abs = "ABS(",
    sqrt = "SQRT(",
    mod = "MOD(",
    int = "INT(",
    div = "DIV(",
    pi = "ПИ",
    divider = ",",
    end = ")"
  },
  io = {
    input = "ввод ",
    output = "вывод ",
    newOut = "нс ",
    odivider = "\", "
  },
  concl = {
    cif = "если ",
    cif2 = " то ",
    celse = "иначе ",
    cend = "все",
    switch = "выбор",
    case = "при ",
    caseDo = ":"
  },
  loop = {
    begin = "нц ",
    logic = "пока ",
    end = "кц"
  },
  comment = "| ",
  length = "длин(",
  logic_oper = {
    land = " и ",
    lnot = " не ",
    lor = " или "
  }
}

local arr = {"П","р","и","в","е","т",","," ","К","у","М","и","р","!"};
for pos, value in ipairs(arr) do
  term.write(value);
  os.sleep(1);
end
