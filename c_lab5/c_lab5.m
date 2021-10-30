clc;clear;close all;
syms s
Ga=1/((s+1)*(3*s+1));
Gb=((s+1)*(s+7))/(s*(s+2)*(s+5));
Gc=((s+1)*(s+3))/(s^2*(s+2)*(s+3));

Kp_a=limit(Ga,s,0)
ess_Kp_a=1/(1+Kp_a)
Kv_a=limit(s*Ga,s,0)
ess_Kv_a=1/Kv_a
Ka_a=limit(s^2*Ga,s,0)
ess_Ka_a=1/Ka_a

Kp_b=limit(Gb,s,0)
ess_Kp_b=1/(1+Kp_b)
Kv_b=limit(s*Gb,s,0)
ess_Kv_b=1/Kv_b
Ka_b=limit(s^2*Gb,s,0)
ess_Ka_b=1/Ka_b

Kp_c=limit(Gc,s,0)
ess_Kp_c=1/(1+Kp_c)
Kv_c=limit(s*Gc,s,0)
ess_Kv_c=1/Kv_c
Ka_c=limit(s^2*Gc,s,0)
ess_Ka_c=1/Ka_c

t=0:0.1:10;
y=(t.^2)/2;
u=timeseries(y,t)
