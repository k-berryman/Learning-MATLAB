% Definite Integral Values
% December 6, 2018

clc;
close all;

% act 1   function is 1   interval is [2,10]
antiD1 = AntiDiff(0,2,10)

% act 2   function is x^2   interval is [2,10]
antiD2 = AntiDiff(2,2,10)

% act 3   function is x^4   interval is [2,10]
antiD3 = AntiDiff(4,2,10)

% act 4   function is x^6   interval is [2,10]
antiD4 = AntiDiff(6,2,10)

% act 5   function is x^8   interval is [2,10]
antiD5 = AntiDiff(8,2,10)

% graphing antidifferentiation calculations
x = [1 2 3 4 5];
y = [antiD1 antiD2 antiD3 antiD4 antiD5];
plot(x,y);

function antiD = AntiDiff(power, lower, upper)
    L = (lower.^(power+1))/(power+1);
    U = (upper.^(power+1))/(power+1);
    antiD = U - L;
end
