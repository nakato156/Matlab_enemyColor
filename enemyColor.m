r_x = [255  104, 50, 16, 119, 237, 97, 74, 141, 33];
g_x = [255, 48, 139, 213, 125, 20, 133, 98, 145, 200];
b_x = [255, 36, 229, 56, 121, 84, 148, 137, 32, 224];

r_y = [0, 227, 22, 71, 71, 40, 10, 223, 88, 160];
g_y = [0, 162, 129, 16, 16, 158, 64, 240, 101, 88];
b_y = [0, 149, 13, 97, 97, 105, 92, 48, 187, 192];

[r_a, r_b] = regresion(r_x, r_y);
[g_a, g_b] = regresion(g_x, g_y);
[b_a, b_b] = regresion(b_x, b_y);

color_predict = [251, 169, 25]; %fba919

r_predict = predecir(r_a, r_b, color_predict(1));
g_predict = predecir(g_a, g_b, color_predict(2));
b_predict = predecir(b_a, b_b, color_predict(3));

recta_rojo_x = [0 0 0 0 0 0 0 0 0 0];
recta_rojo_y = [0 0 0 0 0 0 0 0 0 0];

recta_verde_x = [0 0 0 0 0 0 0 0 0 0];
recta_verde_y = [0 0 0 0 0 0 0 0 0 0];

recta_azul_x = [0 0 0 0 0 0 0 0 0 0];
recta_azul_y = [0 0 0 0 0 0 0 0 0 0];
for i = 1:10
    recta_rojo_x(i) = r_x(i);
    recta_rojo_y(i) = predecir(r_a, r_b, r_x(i));

    recta_verde_x(i) = g_x(i);
    recta_verde_y(i) = predecir(g_a, g_b, g_x(i));

    recta_azul_x(i) = b_x(i);
    recta_azul_y(i) = predecir(b_a, b_b, b_x(i));
end

figure
subplot(3,1,1); plot(r_x, r_y,'.r', recta_rojo_x, recta_rojo_y, 'r', ... 
    'MarkerSize', 12);
subplot(3,1,2); plot(g_x, g_y, '.g', recta_verde_x, recta_verde_y, 'g', ... 
    'MarkerSize', 12);
subplot(3,1,3); plot(b_x, b_y, '.b', recta_azul_x, recta_azul_y, 'b', ... 
    'MarkerSize', 12);
