% DTFT of x3(n) = (cos(0.5*pi*n)).*(u(n)-u(n-51))
clc; close all;
%
[x31,n31] = stepseq(0,0,52); [x32,n32] = stepseq(51,0,52);
[x33,n33] = sigadd(x31,n31,-x32,n32); n3 = n33;
x3 = (cos(0.5*pi*n3)).*x33;
w3 = linspace(-pi,pi,201); X3 = dtft(x3,n3,w3);
magX3 = abs(X3); phaX3 = angle(X3);
%
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P0301c');
subplot(2,1,1); plot(w3/pi,magX3,'LineWidth',1.5);
wtick = [-1:0.2:1]; magtick = [0:10:60];
xlabel('\omega/\pi'); ylabel('|X|');
title('Magnitude response');
set(gca,'XTick',wtick);
set(gca,'YTick',magtick);
subplot(2,1,2,'LineWidth',1.5); plot(w3/pi,phaX3*180/pi);
axis([-1,1,-200,200]); phatick = [-180:60:180];
xlabel('\omega/\pi'); ylabel('Degrees');
title('Phase Response');
set(gca,'XTick',wtick);
set(gca,'YTick',phatick);

function [X] = dtft(x,n,w)
    % Computes Discrete-time Fourier Transform
    % [X] = dtft(x,n,w)
    %   X = DTFT values computed at w frequencies
    %   x = finite duration sequence over n
    %   n = sample position vector
    %   w = frequency location vector
    X = exp(-1i*w'*n)  * x.';
    % X = x*exp(-j*n'*w);
end

function [x,n] = stepseq(n0,n1,n2)
    % Generates x(n) = u(n-n0); n1 <= n <= n2
    % ------------------------------------------
    % [x,n] = stepseq(n0,n1,n2)
    %
    n = [n1:n2]; x = [(n-n0) >= 0];
end

function [y,n] = sigadd(x1,n1,x2,n2)
    % implements y(n) = x1(n)+x2(n)
    % -----------------------------
    % [y,n] = sigadd(x1,n1,x2,n2)
    %  y = sum sequence over n, which includes n1 and n2
    %  x1 = first sequence over n1
    %  x2 = second sequence over n2 (n2 can be different from n1)
    %
    n = min(min(n1),min(n2)):max(max(n1),max(n2));
    % duration of y(n)
    y1 = zeros(1,length(n)); y2 = y1;
    % initialization
    y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
    % x1 with duration of y
    y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
    % x2 with duration of y
    y = y1+y2;
end