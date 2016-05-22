global.O = ds_map_create();

global.O[? "year"] = 1;
global.O[? "mon"] = 15000;
global.O[? "hap"] = 50;
global.O[? "env"] = 50;
global.O[? "tim"] = 3500;
global.O[? "sol"] = 0;
global.O[? "tra"] = "car";
global.O[? "rec"] = 0
global.O[? "food"] = "av";
global.O[? "clot"] = "av";
global.O[? "misc"] = "av";
global.O[? "job"] = 40;
global.O[? "ins"] = 0;
global.O[? "appl"] = 0;
global.O[? "gov"] = "neut";

global.N = ds_map_create();
ds_map_copy(global.N, global.O);
