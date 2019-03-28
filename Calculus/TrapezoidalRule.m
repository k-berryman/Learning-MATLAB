% Trapezoidal Rule
% November 26, 2018

clc;
close all;

% trapz 1   function is 1   interval is [2,10]   n = 8
trap1 = TrapRule(0,2,10,8)

% trapz 2   function is x^2   interval is [2,10]   n = 8
trap2 = TrapRule(2,2,10,8)

% trapz 3   function is x^4   interval is [2,10]   n = 8
trap3 = TrapRule(4,2,10,8)

% trapz 4   function is x^6   interval is [2,10]   n = 8
trap4 = TrapRule(6,2,10,8)

% trapz 5   function is x^8   interval is [2,10]   n = 8
trap5 = TrapRule(8,2,10,8)

% graphing trapezoidal rule calculations
x = [1 2 3 4 5];
y = [trap1 trap2 trap3 trap4 trap5];
plot(x,y);

function trap = TrapRule(power, lower, upper, n)
    deltaX = (upper - lower) / n;
    temp = lower;
    a = temp.^power;
    temp = temp + deltaX;
    b = temp.^power;
    temp = temp + deltaX;
    c = temp.^power;
    temp = temp + deltaX;
    d = temp.^power;
    temp = temp + deltaX;
    e = temp.^power;
    temp = temp + deltaX;
    f = temp.^power;
    temp = temp + deltaX;
    g = temp.^power;
    temp = temp + deltaX;
    h = temp.^power;
    temp = temp + deltaX;
    i = temp.^power;
    
    y = [a b c d e f g h i];
    trap = .5 * deltaX * (a + 2 * (b + c + d + e + f + g + h) + i);
end

