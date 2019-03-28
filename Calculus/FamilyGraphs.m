% Family Graphs
% December 7, 2018

clc;
close all;

x = [1 2 3 4 5];
y1 = 1;
y2 = x.^2;
y3 = x.^4;
y4 = x.^6;
y5 = x.^8;

% figure 2 is x^2
figure
plot(x,y2)

% figure 3 is x^4
figure
plot(x,y3)

% figure 4 is x^6
figure
plot(x,y4)

% figure 5 is x^8
figure
plot(x,y5)
