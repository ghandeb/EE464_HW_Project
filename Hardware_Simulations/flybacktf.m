c=600e-6;
r=15;
l=3.8e-3;
d=0.35;

A1=[-1/(r*c) 0; 0 0];
A2=[-1/(r*c) 7/c; -7/l 0];
A=d*A1+(1-d)*A2;
B1=[0;1/l];
B2=[0;0];
B=d*B1+(1-d)*B2;
C=[1 0];
I=[1 0;0 1];
vec=[15;0.2];

s=tf('s');
tran1=([1 0]*inv(s*eye(2,2)-A))*((A1-A2)*vec+(B1-B2*207));
% figure;
% step(tran1);
figure;
bode(tran1);
grid on;
