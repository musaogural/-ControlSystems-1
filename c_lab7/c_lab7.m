clc;clear;close all;

%EX1
num=2*[1 2];
den=[1 -4 13];
G=tf(num,den);
rlocus(G)

%EX2
num=1;
den=[1 1];
den=conv([1 1],[1 2]);
den=conv(conv([1 1], [1 2]),[1 4]);
G=tf(num,den);
rlocus(G)

%EX3
num=1;
num=[1 5];
num=conv([1 5],[1 2]);
num=conv(conv([1 5],[1 2]),[1 0.5]);
den=conv(conv([1 0],[1 1]),[1 4]);
G=tf(num,den);
rlocus(G)
