clc;
clear all;
close all;
th=0:.01:4;
b= [1];
a = [1 3 2];
h=impulse(b,a,th);
tx=[0:0.01:4];
x=[ones(1,length(tx))]; 
[y ty]=convint(x,tx,h,th);
figure,plot(th,h)
xlabel('Time')
ylabel('Amplitude');
figure, plot(ty,y);
xlabel('Time')
ylabel('Amplitude');