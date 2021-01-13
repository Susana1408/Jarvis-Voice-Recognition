% JARVIS FRECUENCIAS
function [t,frecs] = JARVIS_FRECUENCIAS(y,Fs) 
time= size(y,1)/Fs;
%Plot waveform
x=0:1/Fs:time;
%Plot spectogram
[s,f,t]=spectrogram(y,round(0.05*Fs),round(0.025*Fs),[],Fs,'yaxis');
for i=1:length(t)
ss=(s(:,i));
pot=abs(ss).^2/length(ss);
[pot_max,frec]=max(pot);
frecs(i)=f(frec);
end
end
