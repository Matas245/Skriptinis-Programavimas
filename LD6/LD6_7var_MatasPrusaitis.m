% Matas Prusaitis EDIf-25/1 2026-10-07

%% 1 Uzduotis
clc; clear; close all;

skaicsinc(0)
skaicsinc(pi/2)
help skaicsinc

%% 2 Uzduotis
global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

neigiamas_sin
teigiamas_sin

figure(1);
plot(x, y, '-.k+');
grid on;
xlabel('x');
ylabel('y');
title('Funkcijos grafikas')

whos global

%% Papildoma Uzduotis
x2 = -2*pi:0.1:2*pi;

graftancotan(x2);
rezultatai = graftancotan(x2);
[t, c] = graftancotan(x2);

disp(rezultatai);