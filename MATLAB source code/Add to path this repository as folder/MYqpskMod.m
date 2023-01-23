function [QPSKsymbol] = MYqpskMod(data)
% MYqpskMod QPSK変調器
%
% Parameters
% ----------
% data : バイナリーデータ(列ベクトル)
%
% Returns
% ----------
% QPSKsymbol : QPSKシンボル(列ベクトル)

Ndata = length(data);                   
spcOutput = reshape(data,2,Ndata/2);    %直並列変換(s/p)変換
QPSKsymbolIndex = [1,2]*spcOutput;      %10進数への変換
QPSKsymbol = ones(1,Ndata/2)*exp(j*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==1)) = exp(j*3*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==3)) = exp(j*5*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==2)) = exp(j*7*pi/4);
QPSKsymbol=QPSKsymbol(:);
end

