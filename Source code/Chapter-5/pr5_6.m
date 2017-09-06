[N,Wn]=buttord( 1,3.0777,1,20,'s');
[B,A]=butter(N,Wn,'s');
[num, den]=lp2hp(B,A,3.0777);   