switch (global.N[? "gov"]) {
    case "gray":
        solp = 3000;
        windp = 24000;
        break;
    case "neut":
        solp = 2500;
        windp = 21000;
        break;
    case "green":
        solp = 2000;
        windp = 16000;
        break;
}


investments =
- (global.N[? "sol"] - global.O[? "sol"]) * solp
- (global.N[? "ins"] - global.O[? "ins"]) * 1500
- (global.N[? "appl"] - global.O[? "appl"]) * 350
- (global.N[? "wind"] - global.O[? "wind"]) * windp
- global.N[? "garden"] * 100
;

global.N[? "mon"] = global.O[? "mon"] + investments;

global.N[? "tim"] = global.TIME
- global.N[? "job"] * 50
- 50
- global.N[? "rec"] * 25
- global.N[? "garden"] * 75
- global.N[? "clean"] * 30
;

switch (global.N[? "tra"]) {
    case "car":
        global.N[? "tim"] -= 250;
        break;
    case "pt":
        global.N[? "tim"] -= 500;
        break;
    case "bic": 
        global.N[? "tim"] -= 750;
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
