N=input('enter order of the filter ');
[z,p,k] = buttap(N)% determines poles and zeros
disp('Poles are at');disp(p);
[num,den]=zp2tf(z,p,k);
%Print coefficients in  powers of s
disp('Numerator polynomial');disp(num);
disp('Denominator polynomial');disp(den);
sos=zp2sos(z,p,k);%determines coefficients of second order sections
