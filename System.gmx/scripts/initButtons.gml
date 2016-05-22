(instance_create(384, 0, obj_button)).p = ac("sol", -1, 0, 5);
(instance_create(416, 0, obj_button)).p = ac("sol", 1, 0, 5);

(instance_create(384, 32, obj_check)).p = ac("tra", "car", -1);
(instance_create(416, 32, obj_check)).p = ac("tra", "pt", -1);
(instance_create(448, 32, obj_check)).p = ac("tra", "bic", -1);

(instance_create(384, 64, obj_check)).p = ac("rec", 0, -1);
(instance_create(416, 64, obj_check)).p = ac("rec", 1, -1);

(instance_create(384, 96, obj_check)).p = ac("food", "min", -1);
(instance_create(416, 96, obj_check)).p = ac("food", "av", -1);
(instance_create(448, 96, obj_check)).p = ac("food", "max", -1);

(instance_create(384, 128, obj_check)).p = ac("clot", "min", -1);
(instance_create(416, 128, obj_check)).p = ac("clot", "av", -1);
(instance_create(448, 128, obj_check)).p = ac("clot", "max", -1);

(instance_create(384, 160, obj_check)).p = ac("misc", "min", -1);
(instance_create(416, 160, obj_check)).p = ac("misc", "av", -1);
(instance_create(448, 160, obj_check)).p = ac("misc", "max", -1);

(instance_create(384, 192, obj_button)).p = ac("job", -1, 12, 48);
(instance_create(416, 192, obj_button)).p = ac("job", 1, 12, 48);

(instance_create(384, 224, obj_check)).p = ac("ins", 0, 1);
(instance_create(416, 224, obj_check)).p = ac("ins", 1, 1);

(instance_create(384, 256, obj_button)).p = ac("appl", -1, 0, 5);
(instance_create(416, 256, obj_button)).p = ac("appl", 1, 0, 5);

(instance_create(384, 288, obj_check)).p = ac("gov", "gray", -1);
(instance_create(416, 288, obj_check)).p = ac("gov", "neut", -1);
(instance_create(448, 288, obj_check)).p = ac("gov", "green", -1);
