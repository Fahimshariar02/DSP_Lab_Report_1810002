% i) For Causal Signal:
clc
clear all
close all
x=[5 2 5 7 8 1];
b=0;
n=length(x);
y=sym('z');
for i=1:n
b=b+x(i)*y^(1-i);
end
disp('Z transform of x = ');
disp(b);

% ii) For Anti Causal Signal:
clc
clear all
close all
x=[1 2 5 7 0 1];
b=0;
n=length(x);
y=sym('z');
for i=1:n
b=b+x(i)*y^(i-1);
end
disp('Z transform of x = ');
disp(b);

% iii) For Non-causal Signal:
clc
clear all
close all
x=[1 2 3 4 5];
pos=input('Enter the Zero index = ');
n=length(x);
y=sym('z');
b=0;
a=0;
for i=1:n
if i>=pos
b=b+x(i)*y^(pos-i); 
else
b=b+x(i)*y^((-1)*(i-pos));
end
end
disp('Z transform of x = ');
disp( b);
