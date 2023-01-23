function [Z] = MYzadoffChumat(R,M,Kp,l)
% MYzadoffChumat Zadoff-Chu�n��Ɋ�Â����p�C���b�g�s��𐶐�
%
% Parameters
% ----------
% R : Zadoff-Chu�n��̍�
%
% M : ���[�U��
% 
% Kp : �p�C���b�g��
%
% l : Zadoff-Chu�n��Ɋւ��鐮��
%
% Returns
% ----------
% Z : [Kp Kp] �p�C���b�g�s��

if Kp >= M
    N = Kp;
else
    N = M;
end

if rem(N,2) == 0
    z = exp(-j*2*pi*R/N*((0:N-1)'.^2/2+l*(0:N-1)'));
else
    z = exp(-j*2*pi*R/N*((0:N-1)'.*(1:N)'/2+l*(0:N-1)'));
end
    
Z_all = toeplitz([z(1) fliplr(z(2:end).')], z.');

if Kp >= M
    Z = Z_all(1:M,:);
else
    Z = Z_all(:,1:Kp);
end

end

