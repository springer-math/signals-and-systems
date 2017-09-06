N=input('enter order of the filter ');
Rp=input('enter passband ripple in dB ');
Rs=input('enter stopband attenuation in dB ');
[z,p,k] = ellipap(N,Rp,Rs)% determines poles and zeros
disp('Poles are at');disp(p);	
[num,den]=zp2tf(z,p,k);
%Print coefficients in powers of s
disp('Numerator polynomial');disp(num);
disp('Denominator polynomial');disp(den);