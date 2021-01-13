clear all, close all, clc
%Verificacion de un audio con la base de datos.
%Se acepta o niega la autorizacion de la persona por reconocimiento de voz.
% 11/01/21
% Alejandra Soto
% Susana Tristan 
% Perla Sanchez

%% CARGA BASE DE DATOS 
load('SeñalInterpolada')

%% INFO. JARVIS
[JC_y,JC_Fs] = audioread('comienza.wav');
[JW_y,JW_Fs] = audioread('wuenas.wav'); 
[JO_y,JO_Fs] = audioread('orden.wav'); 
[JN_y,JN_Fs] = audioread('nel.wav'); 

%% SEÑAL A COMPARAR
%Audios para probar
%PERSONAS ACEPTADAS
%DAVID
%RoomieHola(1-10)
% [S_y,S_Fs] = audioread('RoomieHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%ALE
% %AleHola(1-10)
% [S_y,S_Fs] = audioread('AleHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%DIANA
% %DianaHola(1-10)
% [S_y,S_Fs] = audioread('DianaHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%VICTOR
% %VictorHola(1_10)
% [S_y,S_Fs] = audioread('VictorHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%PERSONAS RECHAZADAS
%ABRAHAM
% %AbrahamHola1
% [S_y,S_Fs] = audioread('AbrahamHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%ERIN
% %ErinHola1
% [S_y,S_Fs] = audioread('ErinHola1.mp3');
% sound(S_y,S_Fs)
% pause(2)
% [S_t,S_frecs]=JARVIS_FRECUENCIAS(S_y,S_Fs);

%ElIMINACION DE OUTLIERS E INTERPOLACION DEL AUDIO A COMPARAR
[S_t,S_frecs]=Outlier(S_t,S_frecs);
tt= 0.2:0.001:1.2;
p=1/(1 + (S_t(2)-S_t(1))^3/6);
S_c=csaps(S_t,S_frecs,p,tt);

%% PROCESO DE VERIFICACION 
%Coefs. Correlacion 
MX=max(S_c); 
Coef_N=0;
Coef_D=0;
Coef_V=0;
Coef_R=0;
if MX>=562.30
    for i=1:10
        c_N=corrcoef(S_c,A(i,:));
        if abs(c_N(1,2))>=.4
            Coef_N=Coef_N+1;
        end 
        
        c_D=corrcoef(S_c,D(i,:));
        if abs(c_D(1,2))>=.4
            Coef_D=Coef_D+1;
        end 
    end    
else
  for i=1:10
        c_V=corrcoef(S_c,V(i,:));
        if abs(c_V(1,2))>=.4
            Coef_V=Coef_V+1;
        end 
        
        c_R=corrcoef(S_c,R(i,:));
        if abs(c_R(1,2))>=.4
            Coef_R=Coef_R+1;
        end 
   end      
end    

%Comparacion
%coefs=[Ale,Diana,Victor,David]
coefs=[Coef_N,Coef_D,Coef_V,Coef_R];
out=nnz(~coefs);
[Num_corr,Ind_Persona]=max(coefs);
k=0;
for i=1:length(coefs)
    if coefs(i)==Num_corr
        k=k+1;
    end    
end
if k==1;
  if Num_corr>=4  
    switch Ind_Persona
        case 1
            disp('JARVIS 5.0')
             disp('Hola Ale')
             sound(JO_y,JO_Fs)
             pause(2)
             sound(JC_y,JC_Fs)
        case 2
             disp('JARVIS 5.0')   
             disp('Hola Diana')
             sound(JW_y,JW_Fs)
             pause(2.8)
             sound(JC_y,JC_Fs)
        case 3
             disp('JARVIS 5.0')
             disp('Hola Victor')
             sound(JW_y,JW_Fs)
             pause(2.8)
             sound(JC_y,JC_Fs)
        case 4
            disp('JARVIS 5.0')
            disp('Hola David')
            sound(JO_y,JO_Fs)
            pause(2)
            sound(JC_y,JC_Fs)
    end 
  else
            disp('JARVIS 5.0')
            disp('ACCESO DENEGADO: INTENTE DE NUEVO')
            sound(JN_y,JN_Fs)
  end    
    
else
            disp('JARVIS 5.0')
            disp('ACCESO DENEGADO: INTENTE DE NUEVO')
            sound(JN_y,JN_Fs)
end

