function[data] = MYrandData(Ndata)
% MYrandData �����_���o�C�i���f�[�^������ [data]=MYrandData(Ndata)
%
% Parameters
% ----------
% Ndata : �f�[�^�r�b�g��
%
% Returns
% ----------
% data : �����_���o�C�i���f�[�^�x�N�g��

dataSeq = randn(Ndata,1);
data = zeros(Ndata,1);
data(find(dataSeq>0)) = 1;
return