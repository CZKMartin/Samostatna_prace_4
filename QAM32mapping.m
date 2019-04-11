function sig = QAM32mapping(in) %in je matice
[mr, mc] = size(in); %rozmìry matice
for r=1:mr %dva vnoøené cykly pro každý øádek
    for c=1:mc % a sloupec
        switch in(r,c) % podle hodnoty na daném pixelu
            case { 4, 10,  1, 13} % se mapuje hodnota pro
                sigI(r,c)=-5; % I složku výst. signálu
            case { 0, 20, 26, 17, 29,  7}
                sigI(r,c)=-3;
            case {16, 12,  6,  9,  3, 23}
                sigI(r,c)=-1;
            case { 8, 28, 22, 25, 19, 15}
                sigI(r,c)=+1;
            case {24,  2, 14,  5, 11, 31}
                sigI(r,c)=+3;
            case {18, 30, 21, 27}
                sigI(r,c)=+5;
        end        
    end
end

for r=1:mr
    for c=1:mc
        switch in(r,c)
            case { 0, 16,  8, 24}
                sigQ(r,c)=+5;
            case { 4, 20, 12, 28,  2, 18}
                sigQ(r,c)=+3;
            case {10, 26,  6, 22, 14, 30}
                sigQ(r,c)=+1;
            case { 1, 17,  9, 25,  5, 21}
                sigQ(r,c)=-1;
            case {13, 29,  3, 19, 11, 27}
                sigQ(r,c)=-3;
            case { 7, 23, 15, 31}
                sigQ(r,c)=-5;
        end 
    end
end
sig = sigI+i*sigQ;
