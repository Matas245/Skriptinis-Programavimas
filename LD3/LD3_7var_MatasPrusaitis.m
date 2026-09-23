% Matas Prusaitis EDIf-25/1 2026-09-23

%% 1 Uzduotis
t = linspace(-pi, pi, 50);
y1 = sin(t);

figure(1);
plot(t, y1, 'r--');
title('Funkcija y(t) = sin(t)');
xlabel('t');
ylabel('y(t)');
xlim([min(t), max(t)]);
ylim([min(y1), max(y1)]);
legend('y(t) = sin(t)', 'Location', 'northeast');
grid on;

x = linspace(-pi, pi, 50);
y2_1 = -x.^2 + 9;
y2_2 = x.^3 - 2 * x.^2 - 9;

figure(2);
plot(x, y2_1);
hold on;
plot(x, y2_2);
hold off;
title('Funkcijos y(x)');
xlabel('x');
ylabel('y(x)');
xlim([min(x), max(x)]);
ylim([min([y2_1, y2_2]), max([y2_1, y2_2])]);
legend('y_1 = -x^2 + 9', 'y_2 = x^3 - 2x^2 - 9', 'Location', 'best');
grid on;

%% 2 Uzduotis
ivertinimai = [
    1, 6, 3, 6;
    6, 2, 5, 4;
    2, 7, 7, 9;
    5, 2, 1, 8;
    2, 3, 8, 7;
    9, 4, 2, 5;
];

figure(3);
subplot(2, 1, 1);
bar(ivertinimai');
title('a)');
xlabel('l.d.');
ylabel('p');
ylim([0 10]);
legend({'V.A.', 'A.G.', 'D.N.', 'A.T.', 'E.S.', 'J.S.'}, 'Location', 'northeastoutside');

ld_vid = mean(ivertinimai);

subplot(2, 1, 2);
stem(1:4, ld_vid);
title('b)');
xlabel('Laboratorinis darbas');
ylabel('p');
xlim([0 5]);
ylim([0 10]);
xticks(1:4);

%% Papildoma Uzduotis
A = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;

t = 0:0.005:2;

s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
signalas = s + n;

filtruotas_signalas = signalas;
filtruotas_signalas(abs(filtruotas_signalas) < U2) = 0;

figure;

subplot(1, 2, 1);
plot(t, signalas, 'b-');
hold on;
plot(t, filtruotas_signalas, 'g:');
yline(U1, 'r-', 'U1');
yline(U2, '-.', 'U2');
hold off;

title('Pradinis ir filtruotas signalai');
xlabel('Laikas (s)', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa (V)', 'FontSize', 13, 'FontWeight', 'bold');
legend('Pradinis signalas', 'Filtruotas signalas', 'U1', 'U2', 'Location', 'best');
grid on;
xlim([min(t), max(t)]);

virsu_U1_idx = signalas > U1;
t_virs = t(virsu_U1_idx);
u_virs = signalas(virsu_U1_idx);

subplot(1, 2, 2);
stem(t_virs, u_virs, 'b');
hold on;

[max_val, max_idx] = max(signalas);
[min_val, min_idx] = min(signalas);

plot(t(max_idx), max_val, 'ro', 'MarkerSize', 9, 'MarkerFaceColor', 'r');
plot(t(min_idx), min_val, 'go', 'MarkerSize', 9, 'MarkerFaceColor', 'g');
hold off;

title('Signalo reikšmės > U1');
xlabel('Laikas (s)', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa (V)', 'FontSize', 13, 'FontWeight', 'bold');
legend('Reikšmės > U1', 'Maksimumas', 'Minimumas', 'Location', 'best');
grid on;
xlim([min(t), max(t)]);
