% Tables
% Kaitlin Berryman
clc;


load patients;  % woah cool it loads a lot of predefined variables in the workspace


T = table(Gender,Smoker,Height,Weight);
T(1:5,:);


T2 = readtable('patients.dat');
T2(1:5,:);


T.ID = randi(1e4,100,1);  % random IDs generated starting at 1000
T(1:5,:);  % called those random IDs
size(T);


Tnew = T(1:5,:);
Tnew = Tnew{:,2:end};  % colon skips the first one, second column to end


T.Properties.RowNames = LastName;
T(1:5,:);
size(T);


% to see these tables, remove the semicolons!