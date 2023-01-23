function[noise] = MYcompNoise(noiseSize, Pn)
% MYcompNoise 平均ゼロの複素ガウス雑音行列を生成
% 
% Parameters
% ----------
% noiseSize : 出力する雑音行列のサイズ
% 
% Pn : 雑音電力
%
% Returns
% ----------
% noise : 雑音行列

noise = ( randn(noiseSize) + j*randn(noiseSize) ) * sqrt(Pn/2);
end