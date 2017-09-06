syms s t Y
f = 2*t*exp(-t);%input signal
F = laplace(f,t,s);% finds Laplace transform of input
Y1 = s*Y + 2;% Laplace transform  of  dy/dt with y(0)=-2
Sol = solve(Y1 + Y-F, Y);%Y(s)
y = ilaplace(Sol,s,t);% inverse of Y(s)