function [H] = MYGaussianChannelMatrix(Nr,Nt,duration,time,P)
% MYGaussianChannelMatrix ���̎����ŕω�����e�v�f���Ɨ��������f�K�E�X�ɏ]���s��𐶐�
% 
% Parameters
% ----------
% Nr : �o�͍s��̍s��
% 
% Nr : �o�͍s��̗�
% 
% duration : �s��̎�������
%
% time : ���v�̎���
% 
% Returns
% ----------
% H : [Nr Nt time]��3�����z�� ( [Nr Nt]�s��3����������time�����i�[����Ă��� )

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

