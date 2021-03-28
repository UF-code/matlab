clear all; 
close all;
clc 
fprintf('Bisection yontemini kullanarak f(x)= x^3-4 denkleminin koklerini bulma ');

a= -1;
b= 2;
tol= 1E-6;

for i=1:100;
    fonka= a^3 - 4;
    fonkb= b^3 - 4;
    xm= 0.5*(a+b);
    fonkm= xm^3 - 4;

    if fonka * fonkm < 0
        b= xm; 
    else 
        a= xm; 
    end 
    if abs(a-b) < tol 
        break 
    end 
end 
disp('Iterasyon sayisi')
i 
disp('Denklemin koku')
format long
xm 
disp('Fonksiyonun kokteki degeri')
fonkm