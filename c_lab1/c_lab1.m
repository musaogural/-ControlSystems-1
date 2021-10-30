% musa ogural
% 05190000739 
% Control lab-1 31.03.2021

clc;close;clear all;

%1.ornek
syms t a b w s
f=dirac(t)+2*heaviside(t-3)+a*t^2+exp(-5*t)+b*t*sin(w*t);
F=laplace(f)

%2.ornek
F=(11*s+28)/((s+2)^2*(s+5));
f=ilaplace(F)

num=[11 28];
den=conv([1 5],conv([1 2],[1 2]));
[X,Y,Z]=residue(num,den)

%3.ornek
t=0:0.01:10;
vt=7*exp(-t).*(cos(3*t)+sin(3*t)/3)-2;
plot(t,vt)
grid on
xlabel('t')
ylabel('capacitor voltage')
title('capacitor voltage vs time')





