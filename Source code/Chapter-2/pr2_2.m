clc;
clear all;
close all;
tx=[0:0.01:3];
tx1=[0:0.01:1];
x=[zeros(1,length(tx1)) ones(1,(length(tx)-length(tx1)))];
th1=[-1:0.01:1];
th2=[1.01:0.01:3];
h=[ones(1,length(th1))  -1*ones(1,length(th2))];
th=[-1:0.01:3];
[y ty]=convint(x,tx,h,th);
figure;
plot(ty,y);
xlabel('Time')
ylabel('Amplitude');
axis([0 6 -2 2]);