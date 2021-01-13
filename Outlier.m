
function [new_X,new_Y]=Outlier(R1_t,R1_frecs)
%Funcion que elimina los "outliers" de un vector 
%INPUT
    % R1_t -> Vector 1
    % R1_frecs -> Vector 2, al que se le desean eliminar los "outliers"
%OUTPUT
    % new_X -> Nuevo vector 1, reducido
    % new_Y -> Nuevo vector 2, reducido sin los "outliers"
% 11/01/21
% Alejandra Soto
% Susana Tristan 
% Perla Sanchez

Y=R1_frecs;
X=1:length(Y);
X=R1_t;

IQR=iqr(Y); %Intervalo intercuartil 
%Diferencia entre el tercer y el primer cuartil de una distribucion 
lowr=prctile(Y,25)-1.5*IQR; %Percentiles
highr=prctile(Y,75)+1.5*IQR;

new_Y=Y(Y>lowr & Y<highr);
new_X=X(Y>lowr & Y<highr);
end


