c=600e-6;
r=15;
l=3.8e-3;
d=0.35;

A1=[-1/(r*c) 0; 0 0];
A2=[-1/(r*c) -7/c; -7/l 0];
A=d*A1+(1-d)*A2;
B1=[0;1/l];
B2=[0;0];
B=d*B1+(1-d)*B2;
C=[1 0];
I=[1 0;0 1];
vec=[15;0.2];

s=tf('s');

% transfer=C*inv(s*I-A)*((A1-A2)*vec+(B1-B2)*207);
% r=15;
% c=600e-6;
% l=3.8e-3;

% s=tf('s');
tran=(7*0.65*0.2/c)*(s-5*(105*0.65+207)/l)/(s^2+(1/(r*c)*s)-(49*0.65*0.65/(l*c)));
figure;
step(tran);
figure;
bode(tran);
% 
% cont=1/s*((s+2.9583))/(s+2.6684);
% oltf=cont*transfer;
% cltf=oltf/(1+oltf);
