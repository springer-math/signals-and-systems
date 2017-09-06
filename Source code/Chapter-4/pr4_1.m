syms s t Y
Y1 = s*Y - 2;%Laplace transform  of  dy/dt with y(0)=2
Y2 = s*Y1 - 1; %Laplace transform  of (d^2 y)/(dt^2 ) with y ?(0)=1
Sol = solve(Y2 - 5*Y1 + 6*Y, Y);%Y(s)
y = ilaplace(Sol,s,t);%inverse Laplace transform of Y(s)