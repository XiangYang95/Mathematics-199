x= [2 3 3 5 7 9 11];
disp(x)
k = length(x);
disp(k)
x = tiedrank(x);
y = tiedrank(x)/k;
disp(x)
disp(y)
% y= [1 2 3];
% disp(y)
% y = tiedrank(y);
% disp(y)