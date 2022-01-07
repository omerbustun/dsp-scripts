% Question 2
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