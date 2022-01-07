% Question 4
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
