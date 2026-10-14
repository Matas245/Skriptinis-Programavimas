function varargout = graftancotan(x)
    % GRAFTANCOTAN Apskaiciuoja tangenta ir kotangenta.
    % Be isvesties kintamuju nubraizo grafikus.

    t = tan(x);
    c = cot(x);
    
    if nargout == 0
        t(abs(cos(x)) < 0.05) = NaN;
        c(abs(sin(x)) < 0.05) = NaN;
    
        figure;
        plot(x, t, 'b');
        hold on;
        plot(x, c, 'r');
        hold off;
        grid on;
        xlabel('x');
        ylabel('Reiksme');
        title('Tangentas ir kotangentas');
        legend('tan(x)', 'cot(x)');
    
    elseif nargout == 1
        varargout{1} = [t; c];
    
    elseif nargout == 2
        varargout{1} = t;
        varargout{2} = c;
    end
end