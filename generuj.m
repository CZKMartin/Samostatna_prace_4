function [length] = generuj(pocet, hodnota, soubor) %Funkce vraci pocet zapsanych hodnot

    a=hodnota*rand(pocet,1);
    b=fopen(soubor, 'w');
    length = fwrite(b, a, 'uint8');
    fclose(b);
    
    end