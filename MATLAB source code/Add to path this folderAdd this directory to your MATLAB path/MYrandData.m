function[data] = MYrandData(Ndata)
% MYrandData ランダムバイナリデータ生成器 [data]=MYrandData(Ndata)
%
% Parameters
% ----------
% Ndata : データビット数
%
% Returns
% ----------
% data : ランダムバイナリデータベクトル

dataSeq = randn(Ndata,1);
data = zeros(Ndata,1);
data(find(dataSeq>0)) = 1;
return