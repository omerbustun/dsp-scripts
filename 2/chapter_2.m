%% Chapter 2
%Question 1
%Question2
n=-5:5;
x_1=(3*((n-2)==0))-(2*((n+1)==0));
x_2=(5*((n-3)==0))+(2*((n+1)==0));
h_1=(-1*((n+2)==0))+(4*((n-0)==0))-(2*((n-1)==0));
h_2=(3*((n-4)==0))+(1.5*((n-2)==0))-(1*((n+1)==0));

y_1=conv(x_1,h_1);
subplot(4,1,1);
stem(y_1,'filled');
title("y1[n]");

y_2=conv(x_2,h_2);
subplot(4,1,2);
stem(y_2,'filled');
title("y2[n]");

y_3=conv(x_1,h_2);
subplot(4,1,3);
stem(y_3,'filled');
title("y3[n]");

y_4=conv(x_2,h_1);
subplot(4,1,4);
stem(y_4,'filled');
title("y4[n]");

%Question3
n_1=-3:3;
x=[-4, 5, 1, -2, -3, 0, 2];
n_2=-1:5;
y=[6,-3,-1,0,8,7,-2];
n_3=2:8;
w=[3,2,2,-1,0,-2,5];

u=conv(x,y);
subplot(3,1,1);
stem(u,'filled');
title("u[n]");

v=conv(x,w);
subplot(3,1,2);
stem(v,'filled');
title("v[n]");

g=conv(w,y);
subplot(3,1,3);
stem(g,'filled');
title("g[n]");
%Question 4
n=0:5;
x=[1,-3/4,1/2,3/4,-3/4,0];
w_0=cos(pi*n);
h_0= -1*w_0;
r_0=xcorr(x,h_0);

subplot(3,1,1);
plot(n,x);
title("x[n]");

subplot(3,1,2);
plot(n,h_0);
title("h0[n]");

subplot(3,1,3);
plot(r_0);
title(" Cross-Correlation x[n]*h0[n]");

w_1=cos(2/3*pi*n);
r_1=xcorr(x,w_1);

subplot(3,1,1);
plot(n,x);
title("x[n]");

subplot(3,1,2);
plot(n,w_1);
title("w1[n]");

subplot(3,1,3);
plot(r_1);
title(" Cross-Correlation x[n]*h0[n]");
















