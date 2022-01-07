% Question 3
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