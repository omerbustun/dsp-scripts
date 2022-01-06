%%Chapter  1
%Question1
n_1=-3:3;
x=[-4, 5, 1, -2, -3, 0, 2];
subplot(5,2,1);
plot(n_1,x);
title("x[n]");

n_2=-1:5;
y=[6,-3,-1,0,8,7,-2];
subplot(5,2,2);
plot(n_2,y);
title("y[n]");

n_3=2:8;
w=[3,2,2,-1,0,-2,5];
subplot(5,2,3);
plot(n_3,w);
title("w[n]");

c=[0,0,2,0,-3,-2,1];
subplot(5,2,4);
plot(n_1,c);
title("c[n]");

d=[0,0,0,0,0,0,0];
subplot(5,2,5);
plot(n_2,d);
title("d[n]");

w=[0,0,0,0,0,0,0];
subplot(5,2,6);
plot(n_3,w);
title("w[n]");

n_f=-3:5;
f=[-4,5,1,-2,3,-3,1,0,8];
subplot(5,2,7);
plot(n_f,f);
title("f[n]");

n_v=-3:8;
v=[0,15,2,-4,3,0,-4,0,0,0,0,0];
subplot(5,2,8);
plot(n_v,v);
title("v[n]");

n_s=-1:8;
s=[4,-5,0,0,10,2,-2,0,0,0];
subplot(5,2,9);
plot(n_s,s);
title("s[n]");

n_r=-1:5;
y=[6,-3,-1,0,8,7,-2];
subplot(5,2,10);
plot(n_2,3.5*y);
title("r[n]");

%Question2

n_1=-3:3;
x_n=(-4*((n_1+3)==0))+(5*((n_1+2)==0))+(1*((n_1+1)==0))+(-2*((n_1-0)==0))+(-3*((n_1-1)==0))+(3*((n_1-3)==0));
subplot(3,2,1);
plot(n_1,x_n);
title("x[n] as a linear combination of delayed unit sample sequences");

n_2=-1:5;
y_n=(6*((n_2+1)==0))+(-3*((n_2-0)==0))+(-1*((n_2-1)==0))+(8*((n_2-3)==0))+(7*((n_2-4)==0))+(-2*((n_2-5)==0));
subplot(3,2,3);
plot(n_2,y_n);
title("y[n] as a linear combination of delayed unit sample sequences");


n_3=2:8;
w_n=(3*((n_3-2)==0))+(2*((n_3-3)==0))+(2*((n_3-4)==0))+(-1*((n_3-5)==0))+(-2*((n_3-7)==0))+(5*((n_3-8)==0));
subplot(3,2,5);
plot(n_3,w_n);
title("w[n] as a linear combination of delayed unit sample sequences");



%Question 3
n_1=-3:3;
x=[-4, 5, 1, -2, -3, 0, 2];
E_x=sum(abs(x).^2)

n_2=-1:5;
y=[6,-3,-1,0,8,7,-2];
E_y=sum(abs(y).^2)

n_3=2:8;
w=[3,2,2,-1,0,-2,5];
E_w=sum(abs(w).^2)

%Question 4
clc;
clear all;
close all;

n=-5:5;
x_1=3*((n+2)==0)+2*((n-0)==0)-((n-3)==0)+5*((n-7)==0);
subplot(4,1,1);
stem(n,x_1);
title("x1[n]");


x_3=(10*(n>=0))-(5*((n-5)>=0))-(10*((n-10)>=0))+(5*((n-15)>=0));
subplot(4,1,3);
stem(n,x_3);
title("x3[n]");

x_4= (exp(0.1*n)).* ((20*((n+20)>=0))-(((n-10)>=0)));
subplot(4,1,4);
stem(n,x_4);
title("x4[n]");






