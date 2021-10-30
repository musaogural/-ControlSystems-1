clc;clear;close all;

num=10;
den=conv(conv([1 0],[1 2]),[1 5]);
G=tf(num,den);
figure(1)
rlocus(G)

num2=[1 1.38];
den2=[1 11.15];
Glead=tf(num2,den2);

num3=[1 0.1];
den3=[1 0.0041];
Glag=tf(num3,den3);

Kc=18.29;
Gc=Kc*Glead*Glag;

Gopenloop=Gc*G;


figure(2)
rlocus(Gopenloop)

