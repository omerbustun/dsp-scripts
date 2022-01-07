%Question 4
clc;
clear all;
close all;

n=-5:5;
x_1=3*((n+2)==0)+2*((n-0)==0)-((n-3)==0)+5*((n-7)==0);
subplot(3,1,1);
stem(n,x_1);
title("x1[n]");


x_3=(10*(n>=0))-(5*((n-5)>=0))-(10*((n-10)>=0))+(5*((n-15)>=0));
subplot(3,1,2);
stem(n,x_3);
title("x3[n]");

x_4= (exp(0.1*n)).* ((20*((n+20)>=0))-(((n-10)>=0)));
subplot(3,1,3);
stem(n,x_4);
title("x4[n]");