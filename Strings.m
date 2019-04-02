% Strings
% Kaitlin Berryman
clc;


str0 = 'print me!'  % no semicolon? it prints!


myString = 'Hello World'; % string is Hello World
myString(1:5) = 'HELLO';  % string becomes HELLO World


whos; % this prints all variable name, size, bytes, class, & attributes


street = "1111 myStreet Dr";
city = "Roc";
fullAddress = [street ', ' city];  % seperate items by spaces
strlength(fullAddress);


str = ["Mercury","Venus","Earth";...  % ;... allows for a second line
       "Mars","Jupiter","Saturn"];
whos str;  % prints only str attributes
length = strlength(str2);


planets = {'Mercury','Venus','Earth'};
str2 = string(planets);  % string array


% command line - curl http://typeAddressHere
% after a html download, read the file in
% poem = fileread('/Users/UserNameHere/folder.txt');
% poem = splitlines(poem);
% poem(1:5);
% A = eraseTag(poem);
% B = (poem == "");
% poem(B) = [];
% poem(1:10);
% P = [".","?","!",",",";",":"];
% poem = replace(poem,P," ");  % this deletes all the punctuation
% poem(1:10);
% poem = strip(poem);

