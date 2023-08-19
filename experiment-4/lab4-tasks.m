 clc
 clear all
 t=0:0.1:40
 x1=(t>=0 & t<=10);
 x2=(t>=10 & t<=15);
 x3=(t>=15 & t<=25);
 x4=(t>=25 & t<=40);
 signal1 = 1*x1+0*x2-1*x3+0*x4;
 subplot(3,1,1);
 plot(t,signal1);
 title('Main Signal');
 delay = 5;
 x5=(t>=0+delay & t<=10+delay);
 x6=(t>=10+delay & t<=15+delay);
 x7=(t>=15+delay & t<=25+delay);
 x8=(t>=25+delay & t<=40+delay);
 signal2 = 1*x5+0*x6-1*x7+0*x8;
 subplot(3,1,2);
 plot(t,signal2);
 title('Delay Signal');
 signal3 = xcorr(signal1,signal2);
 subplot(3,1,3);
 plot(signal3);
 xlim([0 800]);
 title('Cross-correlation of signals');
 [~, max_index] = max(signal3);
 delay_time =(length(signal1)-max_index);
 disp('Delay Time: ');
 disp(delay_time*0.1);