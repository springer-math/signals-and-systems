clear;close all;
num=[0.0534 -0.0009 -0.0009 0.0534];% numerator coefficients
den=[1 -2.1291 1.7834 -0.5435];% denominator coefficients
w=0:pi/255:pi;
%Compute the frequency responses
H=freqz(num,den,w);
%Compute and plot the magnitude response
mag=abs(H);
figure(1),plot(w/pi,mag);
ylabel('Magnitude');xlabel('\omega/\pi');
%Compute and plot the phase responses
ph=angle(H)*180/pi;
figure(2),plot(w/pi,ph);
ylabel('Phase, degrees');xlabel('\omega/\pi');	