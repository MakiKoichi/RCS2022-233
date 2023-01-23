function [H] = MYGaussianChannelMatrix(Nr,Nt,duration,time,P)
% MYGaussianChannelMatrix 一定の周期で変化する各要素が独立した複素ガウスに従う行列を生成
% 
% Parameters
% ----------
% Nr : 出力行列の行数
% 
% Nr : 出力行列の列数
% 
% duration : 行列の持続時間
%
% time : 合計の時間
% 
% Returns
% ----------
% H : [Nr Nt time]の3次元配列 ( [Nr Nt]行列が3次元方向にtimeだけ格納されている )

prt = fix(time / duration);
H = zeros(Nr,Nt,time);
for i = 0:prt-1
    matrix = MYcompNoise([Nr,Nt],P);
    noise = zeros(Nr,Nt,duration);
    for j=1:duration
    noise(:,:,j) = matrix;
    end
    H(:,:,i*duration+1:(i+1)*duration) = noise;
end
if time > duration*prt
    matrix = MYcompNoise([Nr,Nt],P);
    noise = zeros(Nr,Nt,time-duration*prt);
    for j=1:time-duration*prt
    noise(:,:,j) = matrix;
    H(:,:,duration*prt+1:time) = noise;
    end
end
end

