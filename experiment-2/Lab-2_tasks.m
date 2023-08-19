; i) For circular convolution of two signals:
clc
clear all
x = input('Enter the first signal: ');
h = input('Enter the second signal: ');
N = length(x);
y = zeros(1,N);
for n = 1:N
 for k = 1:N
 j = mod(n-k,N) + 1;
 y(n) = y(n) + x(k)*h(j);
 end
end
disp('Circular Convolution: ');
disp(y);
; ii) For given two signals to show them and their summation and subtraction plots:
clc
clear all
n1 = [0 0 0 2 2 2 1 1 1 0 2];
subplot(4,1,1);
stem(n1);
title('First Input Signal');
n2 = [2 2 0 1 1 1 0 0 0 0 3];
subplot(4,1,2);
stem(n2);
title('Second Input Signal');
sum = n1+n2;
subplot(4,1,3);
stem(sum);
title('Summation of Input Signals');
sub = n1-n2;
subplot(4,1,4);
stem(sub);
title('Subtraction of Input Signals');
; iii) For plotting the given figures:
clc
clear all
x = [0 0 2 2 2 2 0 0];
subplot(2,1,1);
plot(x);
title('Figure-1');
axis([1 8 0 3]);
y = [0 1.5 1.5 3 3 3 1.5 1.5 0];
subplot(2,1,2);
plot(y);
title('Figure-2');
axis([1 9 0 4]);
