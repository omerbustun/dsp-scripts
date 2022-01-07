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