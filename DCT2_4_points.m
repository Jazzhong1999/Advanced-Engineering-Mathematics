%4-Points DCT-II(2) techniques
clear,clc,close all 
fprintf('From DCT-II technique,\n')
fprintf('ENTER ELEMENT FOR MATRIX x\n')
x=input('MATRIX x=')

fprintf('Using DCT-II Formula:')

T_DCT2=[1 1 1 1; 0.9239 0.3827 -0.3827 -0.9239; 0.7071 -0.7071 -0.7071 0.7071; 0.3827 -0.9239 0.9239 -0.3827]
T_DCT2_Transpose=T_DCT2';
fprintf("T*x'=X")

X=T_DCT2*x'

fprintf('Using Normalise function contained in matrix T:\n')
fprintf('After performing normalise square, norm^2 = \n')
fprintf('MAY REFER THE WORKING STEPS IN ONENOTE MOCK EXAM\n')
R2_T_DCT2_norm=norm(T_DCT2(2,:));
R3_T_DCT2_norm=norm(T_DCT2(3,:));
R4_T_DCT2_norm=norm(T_DCT2(4,:));
X_norm_square=[X(1,:)/4; X(2,:)/(R2_T_DCT2_norm*R2_T_DCT2_norm); X(3,:)/(R3_T_DCT2_norm*R3_T_DCT2_norm); X(4,:)/(R4_T_DCT2_norm*R4_T_DCT2_norm)]

fprintf('x=T_DCT_Tranpose*X_norm_square\n')
x=T_DCT2'*X_norm_square

fprintf('Therefore/Thus\n,')
fprintf('DCT-II technique is rejected, because it is not in the form of edge data and containing more floating numbers\n')
fprintf('NOW NEED TO WRTIE OUT THE FULL EQUATION USING MATRIX X_norm_sqare multiply to T_DCT2\n')
fprintf('\n')
fprintf('MATRIX x = X1_norm_square[COLUMN 1 of T_DCT_Transpose] + X2[COLUMN 2] +X3[COLUMN 3] + X4[COLUMN 4]\n')
fprintf('SWIPE UP TO VIEW ALL INFORMATIONS\n,')