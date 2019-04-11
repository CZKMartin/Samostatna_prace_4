clear all;
close all;
clc;


pocet_zapsanych_hodnot = generuj(1000,255,'vstupni_data.dat')

%%
vstupni_hodnota = 31; % max 31 - 5 bitove èíslo
uroven_sumu = 0.3;

vystup = QAM32demapping(noise(QAM32mapping(vstupni_hodnota),uroven_sumu))

% abs_chyba = XOR(int64(vstup),int64(vystup))


    
%  [sum]=noise('vstupni_data.dat',noiselev)
% level = 10; 
% fo=fopen('vstupni_data.dat');
% vect=fread(fo);
% 
% C=level*randn(length(vect),1)+vect;
% figure();plot(i,vect);hold on;plot(i,C)
  