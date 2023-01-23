function [H] = MYExpoDecayChannelMatrix(Theta,M,N,Phi)
% MYExpoDecayChannelMatrix 受信空間相関を考慮したチャネル行列を生成
% 
% [H] = MYExpoDecayChannelMatrix(rho,M,N)
% 
% Parameters
% ----------
% Theta : 受信空間行列
% 
% M : ユーザ数
%
% N : 受信アンテナ数
% 
% Returns
% ----------
% H : [N M]チャネル行列

H = sqrtm(Theta)*MYGaussianChannelMatrix(N,M,1,1,Phi);
end

