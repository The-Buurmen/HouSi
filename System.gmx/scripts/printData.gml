draw_set_font(font);
draw_text(x, y,
"Year: " + string(global.N[? "year"]) +
"#Money: " + string(global.N[? "mon"]) +
"#Happiness: " + string(global.N[? "hap"]) +
"#Time: " + string(global.N[? "tim"]) + 
"#Solar: " + string(global.N[? "sol"]) + 
"#Transport: " + global.N[? "tra"] + 
"#Recycle: " + string(global.N[? "rec"]) +
"#Food: " + global.N[? "food"] +
"#Clothing: " + global.N[? "clot"] +
"#Miscellaneous: " + global.N[? "misc"] +
"#Job (hours/week): " + string(global.N[? "job"]) + 
"#Insulation: " + string(global.N[? "ins"]) +
"#Appliances: " + string(global.N[? "appl"]) + 
"#Government: " + global.N[? "gov"] + 
"#Community projects: " + string(global.N[? "comm"])
);
