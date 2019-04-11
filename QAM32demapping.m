function data = QAM32demapping(sig)
[mr, mc] = size(sig);
for r=1:mr
    for c=1:mc
        if     real(sig(r,c)) < -4 dr = -5;
        elseif real(sig(r,c)) < -2 dr = -3;
        elseif real(sig(r,c)) < 0  dr = -1;
        elseif real(sig(r,c)) < 2  dr =  1;
        elseif real(sig(r,c)) < 4  dr =  3;
        else                       dr =  5;
        end
        if     imag(sig(r,c)) < -4  di = -5;
        elseif imag(sig(r,c)) < -2  di = -3;
        elseif imag(sig(r,c)) <  0  di = -1;
        elseif imag(sig(r,c)) <  2  di =  1;
        elseif imag(sig(r,c)) <  4  di =  3;
        else                        di =  5;
        end

        if dr == -5
            if di == -3         data(r,c) = 13;
            elseif di == -1     data(r,c) =  1;
            elseif di == 1      data(r,c) = 10;
            else                data(r,c) =  4;
            end
        elseif dr == -3
            if di == -5         data(r,c) =  7;
            elseif di == -3     data(r,c) = 29;
            elseif di == -1     data(r,c) = 17;
            elseif di ==  1     data(r,c) = 26;
            elseif di ==  3     data(r,c) = 20;
            else                data(r,c) =  0;
            end
        elseif dr == -1
            if di == -5         data(r,c) = 23;
            elseif di == -3     data(r,c) = 3;
            elseif di == -1     data(r,c) = 9;
            elseif di ==  1     data(r,c) = 6;
            elseif di ==  3     data(r,c) = 12;
            else                data(r,c) = 16;
            end
        elseif dr ==  1
            if di == -5         data(r,c) = 15;
            elseif di == -3     data(r,c) = 19;
            elseif di == -1     data(r,c) = 25;
            elseif di ==  1     data(r,c) = 22;
            elseif di ==  3     data(r,c) = 28;
            else                data(r,c) =  8;
            end
        elseif dr ==  3
            if di == -5         data(r,c) = 31;
            elseif di == -3     data(r,c) = 11;
            elseif di == -1     data(r,c) =  5;
            elseif di ==  1     data(r,c) = 14;
            elseif di ==  3     data(r,c) =  2;
            else                data(r,c) = 24;
            end
        else
            if di == -3         data(r,c) = 27;
            elseif di == -1     data(r,c) = 21;
            elseif di ==  1     data(r,c) = 30;
            else                data(r,c) = 18;
            end
        end  % if dr
	  end % for c       
    end % for r
end
