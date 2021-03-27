% absolute error and relative error
% arctan(x)= ((-1)^(n+1) * x^(2n-1)) / (2n-1)
% pi= 4 * arctan(x)
% scarborough if x=1, n=127
% summary= toplam           lastsummary= sontoplam     sign= isaret
% pay= numerator            payda= denumerator         
% gerhata= absolute error   yakhata= relative error

clear all; 
close all;
clc

x= 1;
toplam= 0
pi= 4 * atan(1);

for n=1: 130
    isaret= (-1)^(n+1);
    pay=    (x)^(2*n-1);
    payda=  (2*n-1);

    sontoplam = toplam+ 4*isaret*pay / payda;

    gerhata= abs(pi - sontoplam) / abs(pi);

    yakhata= abs(sontoplam - toplam)/ abs(sontoplam);

    plot(n, yakhata, '--r*', n, gerhata, '--b+');
    hold on
    xlabel('n terim sayisi');
    ylabel('hata');

    toplam= sontoplam;
end
text(30, 0.6, '+dogru bagil hata');
text(30, 0.5, '*yaklasik bagil hata');


