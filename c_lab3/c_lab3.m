clc;close all;clear all;
Gc=tf([5,1],[5,0]);
G=tf(15,[30,1]);
Kp=0.1;

Gff=Kp*Gc*G;

Gcl=feedback(Gff,1,-1);

step(Gcl)
stepinfo(Gcl)