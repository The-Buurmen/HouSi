global.N[? "mon"] = global.O[? "mon"]
- (global.N[? "sol"] - global.O[? "sol"]) * 3000
- (global.N[? "ins"] - global.O[? "ins"]) * 1200
- (global.N[? "appl"] - global.O[? "appl"]) * 200
;

global.N[? "tim"] = 3500
- global.N[? "job"] * 50
- 50
- global.N[? "rec"] * 25
;

switch (global.N[? "tra"]) {
    case "car":
        global.N[? "tim"] -= 250;
        break;
    case "pt":
        global.N[? "tim"] -= 500;
        break;
    case "bic": 
        global.N[? "tim"] -= 650;
        break;
}

switch (global.N[? "clot"]) {
    case "min":
        global.N[? "tim"] -= 25;
        break;
    case "av":
        global.N[? "tim"] -= 50;
        break;
    case "max": 
        global.N[? "tim"] -= 100;
        break;
}

switch (global.N[? "misc"]) {
    case "min":
        global.N[? "tim"] -= 125;
        break;
    case "av":
        global.N[? "tim"] -= 150;
        break;
    case "max": 
        global.N[? "tim"] -= 175;
        break;
}
