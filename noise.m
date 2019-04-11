function [sum] = noise(vstup,noiselev)
[mr, mc] = size(vstup); 
noise = noiselev*randn(mr,mc)+i*noiselev*randn(mr,mc);
sum = vstup+noise; 

end