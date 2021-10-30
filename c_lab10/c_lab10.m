clc;clear;close all;

%1.SORU
G1=tf(2,1);
bode(G1)
hold on

G2=tf([1/0.5 1],1);
bode(G2)
hold on

G3=tf(1,[1 0]);
bode(G3)
hold on

G4=tf(1,[1/10 1]);
bode(G4)
hold on

G5=tf(1,[1/50 1]);
bode(G5)
hold on

G=G1*G2*G3*G4*G5;
bode(G)
legend('G1','G2','G3','G4','G5','G')

%2.SORU
%K=0.1 
%K=1
%K=2
 K=10
num=1;
den=conv(conv([1 1],[1 1]),[1 0]);
GG=tf(num,den);
figure(1)
rlocus(GG)
figure(2)
bode(K*GG)
grid on

