% Predicted Values
% December 6, 2018

clc;
close all;

prompt = "Which even power polynomial do you want to analyse? Input the power: ";
x = input(prompt);


ActualValue = AntiDiff(x,2,10)
TrapezoidalRule = TrapRule(x,2,10,8)
MidpointRule = MidRule(x,2,10,8)

% Actual value for definite integral
function antiD = AntiDiff(power, lower, upper)
    L = (lower.^(power+1))/(power+1);
    U = (upper.^(power+1))/(power+1);
    antiD = U - L;
end

% Midpoint Approximation
function mid = MidRule(power, lower, upper, n)
   a = (.5 * (2 + 3)).^power;
   b = (.5 * (3 + 4)).^power;
   c = (.5 * (4 + 5)).^power;
   d = (.5 * (5 + 6)).^power;
   e = (.5 * (6 + 7)).^power;
   f = (.5 * (7 + 8)).^power;
   g = (.5 * (8 + 9)).^power;
   h = (.5 * (9 + 10)).^power;
   
   y = [a b c d e f g h];
   deltaX = (upper - lower) / n;
   mid = deltaX * sum(y);
end

% Trapezoidal Rule Approximation
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
