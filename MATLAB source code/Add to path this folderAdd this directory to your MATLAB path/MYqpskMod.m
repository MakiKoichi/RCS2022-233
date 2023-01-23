function [QPSKsymbol] = MYqpskMod(data)
% MYqpskMod QPSK�ϒ���
%
% Parameters
% ----------
% data : �o�C�i���[�f�[�^(��x�N�g��)
%
% Returns
% ----------
% QPSKsymbol : QPSK�V���{��(��x�N�g��)

Ndata = length(data);                   
spcOutput = reshape(data,2,Ndata/2);    %������ϊ�(s/p)�ϊ�
QPSKsymbolIndex = [1,2]*spcOutput;      %10�i���ւ̕ϊ�
QPSKsymbol = ones(1,Ndata/2)*exp(j*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==1)) = exp(j*3*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==3)) = exp(j*5*pi/4);
QPSKsymbol(find(QPSKsymbolIndex==2)) = exp(j*7*pi/4);
QPSKsymbol=QPSKsymbol(:);
end

