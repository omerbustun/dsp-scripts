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