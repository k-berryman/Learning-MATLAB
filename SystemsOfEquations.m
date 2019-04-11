% Systems of Equations
% Kaitlin Berryman
clc;

syms x y z
eqn1 = 10*x + y + z == 5;
eqn2 = -x + y + z == 9;
eqn3 = x + 6*y + 2*z == -10;
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3],[x,y,z]);

X = linsolve(A,B);
sol = solve([eqn1,eqn2,eqn3],[x,y,z]);
xSol = sol.x;
ySol = sol.y;


eqn = x^6 == 3125;
solve(eqn, x)


syms a b
cond1 = a^3 + b^3 + x*y == 5;
cond2 = a > 0;
cond3 = b > 0;
conds = [cond1,cond2, cond3];
solve = solve(conds, [a b], 'ReturnConditions', true);

% derivatives
diff(x);
f = 4*t^3;
diff(f);