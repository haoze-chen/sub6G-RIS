%% Translate beamvector into phase representation

load 0.mat

decPhase = [];

for i = 1:72
    elementBitString = dec2bin(output_code_dec(i),8);
    topAntH = elementBitString(3:4);
    botAntH = elementBitString(5:6);
    
    if strcmp (topAntH, '01')
        topPhase = 0;
    elseif strcmp (topAntH, '11')
        topPhase = 90;
    elseif strcmp (topAntH, '10')
        topPhase = 180;
    elseif strcmp (topAntH, '00')
        topPhase = 270;
    end
    
    if strcmp (botAntH, '01')
        botPhase = 0;
    elseif strcmp (botAntH, '11')
        botPhase = 90;
    elseif strcmp (botAntH, '10')
        botPhase = 180;
    elseif strcmp (botAntH, '00')
        botPhase = 270;
    end

    decPhase = [decPhase,topPhase,botPhase];
end