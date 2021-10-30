clc;clear;close all;

num=9;
den=conv([1 0],[1 2]);
G=tf(num,den);
figure(1)
rlocus(G)

num2=[1 0.55];
den2=[1 1.55];
Glead=tf(num2,den2);

num3=[1 0.1];
den3=[1 0.00099];
Glag=tf(num3,den3);

Kc=1.38;
Gc=Kc*Glead*Glag;

Gopenloop=Gc*G;

figure(2)
rlocus(Gopenloop)

