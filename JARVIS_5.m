clear all, close all, clc
% Base de datos del programa, información de las personas que seran
% reconocidas por su voz
% 11/01/21
% Alejandra Soto
% Susana Tristan 
% Perla Sanchez

%% INFORMACION
%Frecuencias mas significativas por c/instante de tiempo
%DAVID
[R1_y,R1_Fs] = audioread('RoomieHola1.mp3');
[R1_t,R1_frecs]=JARVIS_FRECUENCIAS(R1_y,R1_Fs);
[R2_y,R2_Fs] = audioread('RoomieHola2.mp3');
[R2_t,R2_frecs]=JARVIS_FRECUENCIAS(R2_y,R2_Fs);
[R3_y,R3_Fs] = audioread('RoomieHola3.mp3');
[R3_t,R3_frecs]=JARVIS_FRECUENCIAS(R3_y,R3_Fs);
[R4_y,R4_Fs] = audioread('RoomieHola4.mp3');
[R4_t,R4_frecs]=JARVIS_FRECUENCIAS(R4_y,R4_Fs);
[R5_y,R5_Fs] = audioread('RoomieHola5.mp3');
[R5_t,R5_frecs]=JARVIS_FRECUENCIAS(R5_y,R5_Fs);
[R6_y,R6_Fs] = audioread('RoomieHola6.mp3');
[R6_t,R6_frecs]=JARVIS_FRECUENCIAS(R6_y,R6_Fs);
[R7_y,R7_Fs] = audioread('RoomieHola7.mp3');
[R7_t,R7_frecs]=JARVIS_FRECUENCIAS(R7_y,R7_Fs);
[R8_y,R8_Fs] = audioread('RoomieHola8.mp3');
[R8_t,R8_frecs]=JARVIS_FRECUENCIAS(R8_y,R8_Fs);
[R9_y,R9_Fs] = audioread('RoomieHola9.mp3');
[R9_t,R9_frecs]=JARVIS_FRECUENCIAS(R9_y,R9_Fs);
[R10_y,R10_Fs] = audioread('RoomieHola10.mp3');
[R10_t,R10_frecs]=JARVIS_FRECUENCIAS(R10_y,R10_Fs);

%VICTOR
[V1_y,V1_Fs] = audioread('VictorHola1.mp3');
[V1_t,V1_frecs]=JARVIS_FRECUENCIAS(V1_y,V1_Fs);
[V2_y,V2_Fs] = audioread('VictorHola2.mp3');
[V2_t,V2_frecs]=JARVIS_FRECUENCIAS(V2_y,V2_Fs);
[V3_y,V3_Fs] = audioread('VictorHola3.mp3');
[V3_t,V3_frecs]=JARVIS_FRECUENCIAS(V3_y,V3_Fs);
[V4_y,V4_Fs] = audioread('VictorHola4.mp3');
[V4_t,V4_frecs]=JARVIS_FRECUENCIAS(V4_y,V4_Fs);
[V5_y,V5_Fs] = audioread('VictorHola5.mp3');
[V5_t,V5_frecs]=JARVIS_FRECUENCIAS(V5_y,V5_Fs);
[V6_y,V6_Fs] = audioread('VictorHola6.mp3');
[V6_t,V6_frecs]=JARVIS_FRECUENCIAS(V6_y,V6_Fs);
[V7_y,V7_Fs] = audioread('VictorHola7.mp3');
[V7_t,V7_frecs]=JARVIS_FRECUENCIAS(V7_y,V7_Fs);
[V8_y,V8_Fs] = audioread('VictorHola8.mp3');
[V8_t,V8_frecs]=JARVIS_FRECUENCIAS(V8_y,V8_Fs);
[V9_y,V9_Fs] = audioread('VictorHola9.mp3');
[V9_t,V9_frecs]=JARVIS_FRECUENCIAS(V9_y,V9_Fs);
[V10_y,V10_Fs] = audioread('VictorHola10.mp3');
[V10_t,V10_frecs]=JARVIS_FRECUENCIAS(V10_y,V10_Fs);

%ALE
[N1_y,N1_Fs] = audioread('AleHola1.mp3');
[N1_t,N1_frecs]=JARVIS_FRECUENCIAS(N1_y,N1_Fs);
[N2_y,N2_Fs] = audioread('AleHola2.mp3');
[N2_t,N2_frecs]=JARVIS_FRECUENCIAS(N2_y,N2_Fs);
[N3_y,N3_Fs] = audioread('AleHola3.mp3');
[N3_t,N3_frecs]=JARVIS_FRECUENCIAS(N3_y,N3_Fs);
[N4_y,N4_Fs] = audioread('AleHola4.mp3');
[N4_t,N4_frecs]=JARVIS_FRECUENCIAS(N4_y,N4_Fs);
[N5_y,N5_Fs] = audioread('AleHola5.mp3');
[N5_t,N5_frecs]=JARVIS_FRECUENCIAS(N5_y,N5_Fs);
[N6_y,N6_Fs] = audioread('AleHola6.mp3');
[N6_t,N6_frecs]=JARVIS_FRECUENCIAS(N6_y,N6_Fs);
[N7_y,N7_Fs] = audioread('AleHola7.mp3');
[N7_t,N7_frecs]=JARVIS_FRECUENCIAS(N7_y,N7_Fs);
[N8_y,N8_Fs] = audioread('AleHola8.mp3');
[N8_t,N8_frecs]=JARVIS_FRECUENCIAS(N8_y,N8_Fs);
[N9_y,N9_Fs] = audioread('AleHola9.mp3');
[N9_t,N9_frecs]=JARVIS_FRECUENCIAS(N9_y,N9_Fs);
[N10_y,N10_Fs] = audioread('AleHola10.mp3');
[N10_t,N10_frecs]=JARVIS_FRECUENCIAS(N10_y,N10_Fs);

%DIANA
[D1_y,D1_Fs] = audioread('DianaHola1.mp3');
[D1_t,D1_frecs]=JARVIS_FRECUENCIAS(D1_y,D1_Fs);
[D2_y,D2_Fs] = audioread('DianaHola2.mp3');
[D2_t,D2_frecs]=JARVIS_FRECUENCIAS(D2_y,D2_Fs);
[D3_y,D3_Fs] = audioread('DianaHola3.mp3');
[D3_t,D3_frecs]=JARVIS_FRECUENCIAS(D3_y,D3_Fs);
[D4_y,D4_Fs] = audioread('DianaHola4.mp3');
[D4_t,D4_frecs]=JARVIS_FRECUENCIAS(D4_y,D4_Fs);
[D5_y,D5_Fs] = audioread('DianaHola5.mp3');
[D5_t,D5_frecs]=JARVIS_FRECUENCIAS(D5_y,D5_Fs);
[D6_y,D6_Fs] = audioread('DianaHola6.mp3');
[D6_t,D6_frecs]=JARVIS_FRECUENCIAS(D6_y,D6_Fs);
[D7_y,D7_Fs] = audioread('DianaHola7.mp3') ;
[D7_t,D7_frecs]=JARVIS_FRECUENCIAS(D7_y,D7_Fs);
[D8_y,D8_Fs] = audioread('DianaHola8.mp3');
[D8_t,D8_frecs]=JARVIS_FRECUENCIAS(D8_y,D8_Fs);
[D9_y,D9_Fs] = audioread('DianaHola9.mp3');
[D9_t,D9_frecs]=JARVIS_FRECUENCIAS(D9_y,D9_Fs);
[D10_y,D10_Fs] = audioread('DianaHola10.mp3');
[D10_t,D10_frecs]=JARVIS_FRECUENCIAS(D10_y,D10_Fs);

%% OUTLIER
%Se eliminan los "outliers"
%DAVID
[R1_t,R1_frecs]=Outlier(R1_t,R1_frecs);
[R2_t,R2_frecs]=Outlier(R2_t,R2_frecs);
[R3_t,R3_frecs]=Outlier(R3_t,R3_frecs);
[R4_t,R4_frecs]=Outlier(R4_t,R4_frecs);
[R5_t,R5_frecs]=Outlier(R5_t,R5_frecs);
[R6_t,R6_frecs]=Outlier(R6_t,R6_frecs);
[R7_t,R7_frecs]=Outlier(R7_t,R7_frecs);
[R8_t,R8_frecs]=Outlier(R8_t,R8_frecs);
[R9_t,R9_frecs]=Outlier(R9_t,R9_frecs);
[R10_t,R10_frecs]=Outlier(R10_t,R10_frecs);

%VICTOR
[V1_t,V1_frecs]=Outlier(V1_t,V1_frecs);
[V2_t,V2_frecs]=Outlier(V2_t,V2_frecs);
[V3_t,V3_frecs]=Outlier(V3_t,V3_frecs);
[V4_t,V4_frecs]=Outlier(V4_t,V4_frecs);
[V5_t,V5_frecs]=Outlier(V5_t,V5_frecs);
[V6_t,V6_frecs]=Outlier(V6_t,V6_frecs);
[V7_t,V7_frecs]=Outlier(V7_t,V7_frecs);
[V8_t,V8_frecs]=Outlier(V8_t,V8_frecs);
[V9_t,V9_frecs]=Outlier(V9_t,V9_frecs);
[V10_t,V10_frecs]=Outlier(V10_t,V10_frecs);

%ALE
[N1_t,N1_frecs]=Outlier(N1_t,N1_frecs);
[N2_t,N2_frecs]=Outlier(N2_t,N2_frecs);
[N3_t,N3_frecs]=Outlier(N3_t,N3_frecs);
[N4_t,N4_frecs]=Outlier(N4_t,N4_frecs);
[N5_t,N5_frecs]=Outlier(N5_t,N5_frecs);
[N6_t,N6_frecs]=Outlier(N6_t,N6_frecs);
[N7_t,N7_frecs]=Outlier(N7_t,N7_frecs);
[N8_t,N8_frecs]=Outlier(N8_t,N8_frecs);
[N9_t,N9_frecs]=Outlier(N9_t,N9_frecs);
[N10_t,N10_frecs]=Outlier(N10_t,N10_frecs);

%DIANA
[D1_t,D1_frecs]=Outlier(D1_t,D1_frecs);
[D2_t,D2_frecs]=Outlier(D2_t,D2_frecs);
[D3_t,D3_frecs]=Outlier(D3_t,D3_frecs);
[D4_t,D4_frecs]=Outlier(D4_t,D4_frecs);
[D5_t,D5_frecs]=Outlier(D5_t,D5_frecs);
[D6_t,D6_frecs]=Outlier(D6_t,D6_frecs);
[D7_t,D7_frecs]=Outlier(D7_t,D7_frecs);
[D8_t,D8_frecs]=Outlier(D8_t,D8_frecs);
[D9_t,D9_frecs]=Outlier(D9_t,D9_frecs);
[D10_t,D10_frecs]=Outlier(D10_t,D10_frecs);

%% INTERPOLACION
tt= 0.2:0.001:1.2;
p=1/(1 + (R1_t(2)-R1_t(1))^3/6);

%DAVID
R1_c=csaps(R1_t,R1_frecs,p,tt);
R2_c=csaps(R2_t,R2_frecs,p,tt);
R3_c=csaps(R3_t,R3_frecs,p,tt);
R4_c=csaps(R4_t,R4_frecs,p,tt);
R5_c=csaps(R5_t,R5_frecs,p,tt);
R6_c=csaps(R6_t,R6_frecs,p,tt);
R7_c=csaps(R7_t,R7_frecs,p,tt);
R8_c=csaps(R8_t,R8_frecs,p,tt);
R9_c=csaps(R9_t,R9_frecs,p,tt);
R10_c=csaps(R10_t,R10_frecs,p,tt);

%VICTOR
V1_c=csaps(V1_t,V1_frecs,p,tt);
V2_c=csaps(V2_t,V2_frecs,p,tt);
V3_c=csaps(V3_t,V3_frecs,p,tt);
V4_c=csaps(V4_t,V4_frecs,p,tt);
V5_c=csaps(V5_t,V5_frecs,p,tt);
V6_c=csaps(V6_t,V6_frecs,p,tt);
V7_c=csaps(V7_t,V7_frecs,p,tt);
V8_c=csaps(V8_t,V8_frecs,p,tt);
V9_c=csaps(V9_t,V9_frecs,p,tt);
V10_c=csaps(V10_t,V10_frecs,p,tt);

%ALE
N1_c=csaps(N1_t,N1_frecs,p,tt);
N2_c=csaps(N2_t,N2_frecs,p,tt);
N3_c=csaps(N3_t,N3_frecs,p,tt);
N4_c=csaps(N4_t,N4_frecs,p,tt);
N5_c=csaps(N5_t,N5_frecs,p,tt);
N6_c=csaps(N6_t,N6_frecs,p,tt);
N7_c=csaps(N7_t,N7_frecs,p,tt);
N8_c=csaps(N8_t,N8_frecs,p,tt);
N9_c=csaps(N9_t,N9_frecs,p,tt);
N10_c=csaps(N10_t,N10_frecs,p,tt);

%DIANA
D1_c=csaps(D1_t,D1_frecs,p,tt);
D2_c=csaps(D2_t,D2_frecs,p,tt);
D3_c=csaps(D3_t,D3_frecs,p,tt);
D4_c=csaps(D4_t,D4_frecs,p,tt);
D5_c=csaps(D5_t,D5_frecs,p,tt);
D6_c=csaps(D6_t,D6_frecs,p,tt);
D7_c=csaps(D7_t,D7_frecs,p,tt);
D8_c=csaps(D8_t,D8_frecs,p,tt);
D9_c=csaps(D9_t,D9_frecs,p,tt);
D10_c=csaps(D10_t,D10_frecs,p,tt);

%% GUARDAR DATOS EN MATRICES
%Una matriz por persona, cada renglon corresponde a un audio diferente del
%1-10.
%DAVID
R=zeros(10,length(R1_c));
R(1,:)=R1_c;
R(2,:)=R2_c;
R(3,:)=R3_c;
R(4,:)=R4_c;
R(5,:)=R5_c;
R(6,:)=R6_c;
R(7,:)=R7_c;
R(8,:)=R8_c;
R(9,:)=R9_c;
R(10,:)=R10_c;

%VICTOR
V=zeros(10,length(V1_c));
V(1,:)=V1_c;
V(2,:)=V2_c;
V(3,:)=V3_c;
V(4,:)=V4_c;
V(5,:)=V5_c;
V(6,:)=V6_c;
V(7,:)=V7_c;
V(8,:)=V8_c;
V(9,:)=V9_c;
V(10,:)=V10_c;

%ALE
A=zeros(10,length(N1_c));
A(1,:)=N1_c;
A(2,:)=N2_c;
A(3,:)=N3_c;
A(4,:)=N4_c;
A(5,:)=N5_c;
A(6,:)=N6_c;
A(7,:)=N7_c;
A(8,:)=N8_c;
A(9,:)=N9_c;
A(10,:)=N10_c;

%DIANA
D=zeros(10,length(D1_c));
D(1,:)=D1_c;
D(2,:)=D2_c;
D(3,:)=D3_c;
D(4,:)=D4_c;
D(5,:)=D5_c;
D(6,:)=D6_c;
D(7,:)=D7_c;
D(8,:)=D8_c;
D(9,:)=D9_c;
D(10,:)=D10_c;

%% GUARDA DATOS EN ARCHIVO .mat
save('SeñalInterpolada','R','V','D','A')
   