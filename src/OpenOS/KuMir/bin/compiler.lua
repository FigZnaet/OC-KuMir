--БИБЛИОТЕКИ
local fs = require("filesystem")
--ТАБЛИЦА СИНТАКСИСА
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
--КОМПИЛЯТОР/ИНТЕРПРЕТАТОР
--ПЕРЕМЕННЫЕ
--файл выполнения
local fileOpen
--код для выполнения (1 запись - лексер, 2 - парсер)
local code = {}
--КОД
--Открываем файл и тут же считываем из него строку в переменную line
local line = fs.open(fileOpen):read("*l")
--[[Разбиваем строку на слова и засовываем их в таблицу code по принципу:
    Строка1 = {
      id = "имя переменной/функции",
      value = "значение переменной/аргумент функции",
      ...
    }, 
    Строка2 = {
      id = "...",
      value = "...",
      ...
    }
]]--
for key, value in string.gmatch(line, "%S+") do
   print("key is "..key.." and value is "..value)
end
--КОНЕЦ ФАЙЛА
