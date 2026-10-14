function y = skaicsinc(x)
    % SKAICSINC Apskaiciuoja sin(x)/x, kai x ~= 0, kitu atveju grazina 1.
    % Naudojimas: y = skaicsinc(x), kur x yra ivesties reiksme.

    if x == 0
        y = 1;
    else
        y = sin(x) / x;
    end
end
