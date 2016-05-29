directCalculate();

env = 0;
env += (5 - global.N[? "sol"]) / 5 * 4;
env += 4 - global.N[? "ins"];
env += (5 - global.N[? "appl"]) / 5 * 3;
env += (1 - global.N[? "wind"]) * 4;
env += (1 - global.N[? "clean"]) * 2;
env += (1 - global.N[? "garden"]) * 2;
env += (1 - global.N[? "rec"]) * 4;

happ = 100;

if (global.N[? "job"] > 38) {
    happ -= 4 * (global.N[? "job"] - 40);
}

switch (global.N[? "gov"]) {
    case "gray":
        tax = 0.8;
        break;
    case "neut":
        tax = 1;
        break;
    case "green":
        tax = 1.2;
        break;
}

switch (global.N[? "tra"]) {
    case "car":
        happ -= 5;
        env += 6;
        transport = 4800 * tax;
        break;
    case "pt":
        happ -= 10;
        env += 4;
        transport = 2200 * tax;
        break;
    case "bic":
        transport = 150 * tax;
        break;
}

global.N[? "mon"] -= transport;

envi = global.O[? "env"];
envf = 1;
if (envi < 10) envf = 1.3;
else if (envi < 25) envf = 1.1;
else if (envi > 90) envf = 0.7;
else if (envi > 75) envf = 0.9;

consumption = -global.CONSUMPTION;

if (global.N[? "garden"] == 0) {
    happ -= 10;
}

if (global.N[? "clean"] == 0) {
    happ -= 10;
}

switch (global.N[? "food"]) {
    case "min":
        consumption -= 2500 * envf;
        happ -= 10;
        break;
    case "av":
        env += 2;
        consumption -= 3000 * envf;
        happ -= 5;
        break;
    case "max":
        env += 5;
        consumption -= 3500 * envf;
        break;
}

switch (global.N[? "clot"]) {
    case "min":
        consumption -= 500 * envf;
        happ -= 10;
        break;
    case "av":
        env += 2;
        happ -= 5;
        consumption -= 1000 * envf;
        break;
    case "max":
        env += 4;
        consumption -= 1500 * envf;
        break;
}

switch (global.N[? "misc"]) {
    case "min":
        happ -= 10;
        consumption -= 2000;
        break;
    case "av":
        happ -= 5;
        env += 1;
        consumption -= 4000;
        break;
    case "max":
        env += 2;
        consumption -= 6000;
        break;
}

sallary = global.SALLARY * global.N[? "job"];

global.N[? "mon"] +=
+ sallary
+ consumption * tax
- global.ENERGY
+ global.N[? "garden"] * 500
+ global.N[? "sol"] * 300
+ global.N[? "ins"] * 100
+ global.N[? "wind"] * 600
+ global.N[? "appl"] * 100
;

global.N[? "env"] = global.O[? "env"] + 15 - env;
if (global.N[? "env"] < 0) {
    global.N[? "env"] = 0;
} else if (global.N[? "env"] > 100) {
    global.N[? "env"] = 100;
}

happ -= (100 - global.N[? "env"]) / 4;
global.N[? "hap"] = happ;



global.N[? "year"] += 1;
summ = global.N[? "mon"] - global.O[? "mon"];
global.O = ds_map_create();
ds_map_copy(global.O, global.N);
