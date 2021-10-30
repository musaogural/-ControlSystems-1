clc;clear;close all;

m=1;
b=10;
k=20;

% Kp=10^18; %Undamped
% Kp=100;   %Underdamped
% Kp=5;     %Critically damped
% Kp=1;     %Overdamped
% 
% Kp=-21;   %Unstable
% Kp=-20;   %Unstable
 Kp=-19;   %Stable

num=1/m;
den=[1 b/m k/m];
G=tf(num,den);

Gcl=feedback(Kp*G,1);

step(Gcl)

