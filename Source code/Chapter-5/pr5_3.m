N=input('enter order of the filter ');
Rs=input('enter stopband attenuation in dB ');
[z,p,k] = cheb2ap(N,Rs);% determines poles and zeros
disp('Poles are at');disp(p);
[num,den]=zp2tf(z,p,k);
%Print coefficients in powers of s
disp('Numerator polynomial');disp(num);
disp('Denominator polynomial');disp(den);