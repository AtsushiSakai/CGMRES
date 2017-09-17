% x        : [ x;dx ]       �i�ʒu�C���x�j
% u        : [ u;v;mu ]     �i���́C�^���ϐ��C���O�����W���搔�j
% lmd      : [ lmd1;lmd2 ]  �i�����ϐ�1�C�����ϐ�2�j
% r        : [ r1;r2 ]      �i�ʒu�̏d�݁C���x�̏d�݁j
% umax     : umax           �i���͂̍ő�l�j
% a        : a              �i�V�X�e���W���j
% b        : b              �i�V�X�e���W���j

function Hu = dHdu( x, u, lmd, r, umax, a, b )
    Hu = [ ...
        r(1) * u(1) + b * lmd(2) * x(2) + u(3) * ( 2 * u(1) - umax );
        2 * u(2) * u(3) - r(2);
        ( u(1) - ( umax / 2 ) )^2 + u(2)^2 - ( umax / 2 )^2;
        ];
end