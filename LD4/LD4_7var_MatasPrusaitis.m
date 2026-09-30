% Matas Prusaitis EDIf-25/1 2026-09-30

%% 1 Uzduotis
figure(1);

% a dalis
x_a = linspace(-1, 1, 50);
y_a = linspace(-1, 1, 50);
[Xa, Ya] = meshgrid(x_a, y_a);
r = sqrt(Xa.^2 + Ya.^2);
Za = exp(r.^2);

subplot(1, 2, 1);
surf(Xa, Ya, Za);
shading interp;
colormap jet;
view(30, 30);
grid on;
title('a) z(r) = e^{r^2}');
xlabel('x');
ylabel('y');
zlabel('z');

% b dalis
x_b = linspace(-2, 1, 50);
y_b = linspace(-2, 1, 50);
[Xb, Yb] = meshgrid(x_b, y_b);
Zb = 1 - 2*Xb.^2 - 3*Yb.^2;

subplot(1, 2, 2);
surf(Xb, Yb, Zb);
shading flat;
colormap parula;
view(45, 45);
grid on;
title('b) f(x,y) = 1 - 2x^2 - 3y^2');
xlabel('x');
ylabel('y');
zlabel('z');

%% Papildoma Uzduotis
[Xp, Yp] = meshgrid(linspace(-1, 1, 50));
Zp = 1 - (Xp.^2 + Yp.^2);

figure(2);

subplot(1, 3, 1);
surf(Xp, Yp, Zp);
shading faceted;
grid on;
title('shading faceted');
xlabel('x');
ylabel('y');
zlabel('z');

subplot(1, 3, 2);
surf(Xp, Yp, Zp);
shading flat;
grid on;
title('shading flat');
xlabel('x');
ylabel('y');
zlabel('z');

subplot(1, 3, 3);
surf(Xp, Yp, Zp);
shading interp;
grid on;
title('shading interp');
xlabel('x');
ylabel('y');
zlabel('z');