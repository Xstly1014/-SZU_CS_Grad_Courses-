% author:guojianhua
% date:2024/9/11

clc;clear;close all;
% alpha步长取0.01
alpha = 2.75:0.01:4;
x = 0.01;
sum = 0;
n = 1e+6;
for i = 1:n
    sum = sum + log(abs(alpha.*(1-2*x)));
    x = alpha.*x.*(1-x);
end
L = sum/n;
plot(alpha,L)
grid on
xlabel('alpha')
ylabel('L')