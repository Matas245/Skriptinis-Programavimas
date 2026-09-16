% Matas Prusaitis EDIf-25/1 2026-09-16

%% 1 Uzduotis
a = (200:-10:10)';

b = log10(a);

c = 10.^b;

d = c - a;

%% 2 Uzduotis
A = [pi/2, 3*1i, exp(1)^pi; log2(2), 2*pi, log10(1); log(exp(1)), pi^pi,  cos(pi)];

A(:, 2) = rand(3, 1);

stulpeliu_sumos = sum(A);

%% 3 Uzduotis
A = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;
t = 0:0.005:2;

s = A * cos(2*pi*f*t);
n = sigma * rand(size(t));

signalas = s + n;

atrinktos_reiksmes = signalas(signalas > U1);

filtruotas_signalas = signalas;
filtruotas_signalas(abs(filtruotas_signalas) < U2) = 0;

dydis_nefiltruoto = length(signalas);

dydis_atrinkto = length(atrinktos_reiksmes);

filtruoto_max = max(filtruotas_signalas);
filtruoto_min = min(filtruotas_signalas);

%% Papildoma Uzduotis
A = input("Iveskite 12 elementu vektoriu: ");

B = [A(10:end), A(1:9)];

disp("Vektorius b yra:");
disp(B);