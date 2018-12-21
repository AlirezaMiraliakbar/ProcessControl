clc
clear all
n_order = input('What is the order of numerator? ');
d_order = input('What is the order of denominator? ');
n = zeros(1,n_order + 1);
d = zeros(1,d_order + 1);
disp('Coeffs of numerator');
disp('-----------------------');

for i = 1 : n_order+1
    n(i) = input(['What is s^' , num2str(n_order+1-i) , ' coeff? ']);
end
disp('Coeffs of denominator');
disp('-----------------------');
for i = 1 : d_order+1
    d(i) = input(['What is s^' , num2str(d_order+1-i) , ' coeff? ']);
end

sys = tf(n , d)
pause(5)
rlocus(sys)