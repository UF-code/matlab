% f(x) = x 3 + 2x + 1 fonksiyonunun kökünü, MATLAB programında
% çizdireceğiniz grafik üzerinden kabaca bulalım

clear all;
close all;
clc 
fprintf('Grafik yontemini kullanarak f(x)=(x^3 + 2*x + 1) denkleminin koklerini bulma');

for t= -2:0.1:2
    ft= t^3 + 2*t + 1;
    plot(t, ft, 'b*')
    hold on
end 
grid on
xlabel('t(sec)');
ylabel('ft');