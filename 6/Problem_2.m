% MATLAB code for DFT 
clc;
xn=input('Input sequence: ');
N = input('Enter the number of points: ');
Xk=calcdft(xn,N);
disp('DFT X(k): ');
disp(Xk);
mgXk = abs(Xk);
phaseXk = angle(Xk);
k=0:N-1;
subplot (2,1,1);
stem(k,mgXk);
title ('DFT sequence: ');
xlabel('Frequency');
ylabel('Magnitude');
subplot(2,1,2);
stem(k,phaseXk);
title('Phase of the DFT sequence');
xlabel('Frequency');
ylabel('Phase');
  
function[Xk] = calcdft(xn,N)
    L=length(xn);
    if(N<L)
        error('N must be greater than or equal to L!!')
    end
    x1=[xn, zeros(1,N-L)];
    for k=0:1:N-1
        for n=0:1:N-1
            p=exp(-i*2*pi*n*k/N);
            W(k+1,n+1)=p;
        end
    end
    disp('Transformation matrix for DFT')
    disp(W);
    Xk=W*(x1.')
end