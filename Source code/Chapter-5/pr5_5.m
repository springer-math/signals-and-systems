clear all;clc;
[z,p,k]=buttap(8);
[num1,den1]=zp2tf(z,p,k);[z,p,k]=cheb1ap(8,1);
[num2,den2]=zp2tf(z,p,k);[z,p,k]=cheb2ap(8,35);
[num3,den3]=zp2tf(z,p,k);[z,p,k]=ellipap(8,1,35);
[num4,den4]=zp2tf(z,p,k);
omega=[0:0.01:5];
h1=freqs(num1,den1,omega);h2=freqs(num2,den2,omega);
h3=freqs(num3,den3,omega);h4=freqs(num4,den4,omega);
ph1=angle(h1);ph1=unwrap(ph1);
ph2=angle(h2);ph2=unwrap(ph2);
ph3=angle(h3);ph3=unwrap(ph3);
ph4=angle(h4);ph4=unwrap(ph4);
figure(1),plot(omega,20*log10(abs(h1)),'-');hold on
plot(omega,20*log10(abs(h2)),'--');hold on
plot(omega,20*log10(abs(h3)),': ');hold on
plot(omega,20*log10(abs(h4)),'-.');
xlabel('Normalized frequency');ylabel('Gain,dB');axis([0 5 -80 5]);
legend('Butterworth','Chebyshev Type 1','Chebyshev Type 2','Elliptic');hold off
figure(2),plot(omega,ph1,'-');hold on
plot(omega,ph2,'--');hold on
plot(omega,ph3,': ');hold on
plot(omega,ph4,'-.')
xlabel('Normalized frequency');ylabel('Phase,radians');axis([0 5 -8 0]);
legend('Butterworth','Chebyshev Type 1','Chebyshev Type 2','Elliptic');
