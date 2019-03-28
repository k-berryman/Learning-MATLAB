% Midpoint Rule
% November 26, 2018

clc;
close all;

% midpoint 1   function is 1   interval is [2,10]   n = 8
mid1 = MidRule(0,2,10,8)

% midpoint 2   function is x^2   interval is [2,10]   n = 8
mid2 = MidRule(2,2,10,8)

% midpoint 3   function is x^4   interval is [2,10]   n = 8
mid3 = MidRule(4,2,10,8)

% midpoint 4   function is x^6   interval is [2,10]   n = 8
mid4 = MidRule(6,2,10,8)

% midpoint 5   function is x^8   interval is [2,10]   n = 8
mid5 = MidRule(8,2,10,8)


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
