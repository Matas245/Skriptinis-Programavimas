% Matas Prusaitis EDIf-25/1 2026-10-07

%% 1 Uzduotis
clc; clear; close all;

% a dalis
mano_vardas = 'Matas';
gimimo_data = '2006-11-23';
tel_nr = '+37069612709';
pazymiai = [8 9 10 9; 9 8 10 10];

mano_cele = {mano_vardas, gimimo_data, tel_nr, pazymiai};

% b dalis
draugo_vardas = 'Tomas';
draugo_gimimo_data = '2006-09-20';
draugo_tel_nr = '+37067542009';
draugo_pazymiai = [7 8 9 9; 8 10 9 8];

draugo_cele = {draugo_vardas, draugo_gimimo_data, draugo_tel_nr, draugo_pazymiai};

bendras_celiu_masyvas = [mano_cele; draugo_cele];

disp(bendras_celiu_masyvas);

figure(1);
cellplot(bendras_celiu_masyvas);


%% 2 Uzduotis

ivesti_m = [];

while true
    m = input('Iveskite skaiciu m: ');

    if any(ivesti_m == m)
        break;
    end

    ivesti_m = [ivesti_m m];

    if m < 0
        f = m^2 + 1;
    elseif m == 0
        f = (m + 1) / 2;
    else
        f = m^2 - 1;
    end

    disp(f);
end


%% Papildoma Uzduotis

skais1 = [];
skais2 = [];

while true
    n1 = round(rand * 7);
    n2 = round(rand * 9);

    skais1 = [skais1 n1];
    skais2 = [skais2 n2];

    if n1 == n2
        break;
    end
end

figure(2);
plot(skais1);
hold on;
plot(skais2);
hold off;

grid on;
xlabel('Iteracija');
ylabel('Sugeneruota reiksme');
legend('round(rand*7)', 'round(rand*9)');