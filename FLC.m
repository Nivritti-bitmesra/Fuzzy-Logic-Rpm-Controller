% Fuzzy Logic FAN Speed Controller
clear;
%% Rule Base
% if temp=[0:10]then speed=stop(0-30)
% if temp=[8:20]then speed=slow(10-50)
% if temp=[15:30]then speed=medium(40-60)
% if temp=[25:70]then speed=fast(50-90)
% if temp=[60:100]then speed=blast(70-100)
%% Membership function
% Input
x=0:0.1:100;
x1 = trimf(x,[0 0 25]);
plot(x,x1,'r');
hold on;
x2 = trimf(x,[0 25 50]);
plot(x,x2,'g');
x3 = trimf(x,[25 50 75]);
plot(x,x3,'b');
x4 = trimf(x,[50 75 100]);
plot(x,x4,'--');
x5 = trimf(x,[75 100 100]);
plot(x,x5,'k');
title('Temparature Membership Function')
xlabel('Temparature -->');
legend('0-25','0-50','25-75','50-100','75-100')
%% Output
y1 = trimf(x,[0 0 30]);
figure,plot(x,y1,'r');
hold on;
y2 = trimf(x,[10 30 50]);
plot(x,y2,'g');
y3 = trimf(x,[40 50 60]);
plot(x,y3,'b');
y4 = trimf(x,[50 70 90]);
plot(x,y4,'--');
y5 = trimf(x,[70 90 110]);
plot(x,y5,'k');
title('Fan Speed Membership Function')
xlabel('Fan Speed x100 RPM -->');
legend('0-30','10-50','40-60','50-90','75-110')
%% Defuzzyfier
k=1;
for j=0:0.1:99
% j=input('Enter the value of tempareture: ');
a(1) = trimf(j,[0 0 25]);
a(2) = trimf(j,[0 25 50]);
a(3) = trimf(j,[25 50 75]);
a(4) = trimf(j,[50 75 100]);
a(5) = trimf(j,[75 100 100]);
%%
A(1,:) =a(1)*y1;
A(2,:) =a(2)*y2;
A(3,:) =a(3)*y3;
A(4,:) =a(4)*y4;
A(5,:) =a(5)*y5;
%%
B=max(A(:,1:1001));
%% Centroid Defuzzification
s=0;
d=0;
for i=1:1001
   s=s+((i-1)*(B(i))*(0.1));
   d=d+(B(i)*0.1);
end
%%
c(k)=((s/d)/1001)*110;
k=k+1;
end
%%
figure,plot([0:0.1:99],c)
title('Fan Speed Variation with Temparature')
xlabel('Input Temparature -->');
ylabel('Output Fan Speed x100 RPM -->');
