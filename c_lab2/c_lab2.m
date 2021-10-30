% musa ogural
% 05190000739 
% Control lab-2 07.04.2021

clc;close;clear all;

%1.ornek
num=2*conv([1 1],[1 2 10]);
den=[1 3 5 1 -10];
G=tf(num,den)

%2.ornek
Z=zero(G)
P=pole(G)
R=roots(den) %transfer fonksiyonun kutupları vardır
damp(G)      %polinomun ise kökleri vardır 
             %o yüzden R=roots(G) çalışmaz!

%3.ornek
num1=10;
den1=[1 2 10];
G1=tf(num1,den1);
num2=5;
den2=[1 5];
G2=tf(num2,den2);
GA=G1*G2
GB=G1+G2

%4.ornek
num1=10;
den1=[1 2 10];
G=tf(num1,den1);
num2=5;
den2=[1 5];
H=tf(num2,den2);
% GCL=G/(1+G*H) da kullanılabilir!
GCL=feedback(G,H)

%5.ornek
syms s
G1=2/((s+1)*(s+8));
H=0.2;
Gk1=G1/(1+G1*H);
Gol=4*Gk1*(1/s);
GCL=Gol/(1+Gol*1)

%6.ornek
num=[2 25];
den=[1 4 25];
G=tf(num,den)
step(G)
impulse(G)


