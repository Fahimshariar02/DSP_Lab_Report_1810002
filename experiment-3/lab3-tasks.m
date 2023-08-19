; i) For Autocorrelation:
x=input('Enter Input: ');
N=length(x);
n = 2*N-1;
y = zeros(1, n);
for i=1:N
 for j=1:i
 y(i) = y(i)+x(N-i+j)*x(j);
 end
end
for i=1:N-1
 for j=i+1:N
 y(N+i) = y(N+i)+x(j)*x(j-i);
 end
end
subplot(3,1,1);
stem(x);
title('Input Signal');
subplot(3,1,2);
disp(xcorr(x));
stem(xcorr(x));
title('Output With Build-in Function');
subplot(3,1,3);
disp(y);
stem(y);
title('Output Without Build-in Function');

; ii) For Cross Correlation:
x=input('Enter First Input: ');
h=input('Enter Second Input: ');
N=length(x);
n = 2*N-1;
y = zeros(1, n);
for i=1:N
 for j=1:i
 y(i) = y(i)+h(N-i+j)*x(j);
 end
end
for i=1:N-1
 for j=i+1:N
 y(N+i) = y(N+i)+x(j)*h(j-i);
 end
end
subplot(4,1,1);
stem(x);
title('First Input Signal');
subplot(4,1,2);
stem(h);
title('Second Input Signal');
subplot(4,1,3);
disp(xcorr(x,h));
stem(xcorr(x,h));
title('Output With Build-in Function');
subplot(4,1,4);
disp(y);
stem(y);
title('Output Without Build-in Function');