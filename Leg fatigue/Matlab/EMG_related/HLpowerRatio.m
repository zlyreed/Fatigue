function [H2Lratio,H2Mratio,M2Lratio,powerL,powerM,powerH]=HLpowerRatio(f,pxx)

% f: a frequency vector, f
% pxx: periodogram power spectral density (PSD)
% lower frequency (15-45Hz), mid (45-95Hz)and high (>95 Hz and <450Hz)

indL=find(f>15&f<45);
powerL=sum(pxx(indL));

indM=find(f>=45&f<95);
powerM=sum(pxx(indM));

indH=find(f>=95&f<450);
powerH=sum(pxx(indH));

H2Lratio=powerH/powerL;
H2Mratio=powerH/powerM;
M2Lratio=powerM/powerL;

end