function [H] = MYExpoDecayChannelMatrix(Theta,M,N,Phi)
% MYExpoDecayChannelMatrix ��M��ԑ��ւ��l�������`���l���s��𐶐�
% 
% [H] = MYExpoDecayChannelMatrix(rho,M,N)
% 
% Parameters
% ----------
% Theta : ��M��ԍs��
% 
% M : ���[�U��
%
% N : ��M�A���e�i��
% 
% Returns
% ----------
% H : [N M]�`���l���s��

H = sqrtm(Theta)*MYGaussianChannelMatrix(N,M,1,1,Phi);
end

