% Figures
% Kaitlin Berryman
clc;

X = [1 2 3];
Y = [5 50 150];

figure
plot(X,Y);
title('Plot of Distance over Time');
xlabel('Time (s)');
ylabel('Distance (m)');
ylim([-2 300]);  % y scale -- graph goes from y = -2 to y = 300

doc ylim;  % brings up documentation window on ylim function