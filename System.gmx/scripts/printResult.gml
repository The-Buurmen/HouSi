desc = 
"Income" +
"#Investments" +
"#Transport" +
"#Regular consumption"
;

numb =
"€" + string(sallary) + 
"#€" + string(investments) +
"#€" + string(-transport) +
"#€" + string(consumption * tax)
;

if (global.N[? "garden"] > 0) {
    desc += "#- Garden savings";
    numb += "#€" + string(global.N[? "garden"] * 500);
}

desc += "#Regular energy usage";
numb += "#€" + string(-global.ENERGY);

if (global.N[? "ins"] > 0) {
    desc += "#- Insulation savings";
    numb += "#€" + string(global.N[? "ins"] * 100);
}

if (global.N[? "appl"] > 0) {
    desc += "#- Replaced appliances savings";
    numb += "#€" + string(global.N[? "appl"] * 100);
}

if (global.N[? "sol"] > 0) {
    desc += "#- Solar panel savings and backfeeding";
    numb += "#€" + string(global.N[? "sol"] * 300);
}

if (global.N[? "wind"] > 0) {
    desc += "#- Windmill savings and backfeeding";
    numb += "#€" + string(global.N[? "wind"] * 600);
}



desc += "##Total";
numb += "#________#" + string(summ);

draw_set_halign(fa_left);
draw_text(x, y, desc);

draw_set_halign(fa_right);
draw_text(x + 600, y, numb);
