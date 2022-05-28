%4-Points Haar techniques
clear,clc,close all 
fprintf('From Haar technique,\n')
fprintf('ENTER ELEMENT FOR MATRIX x\n')
x=input('MATRIX x=')

fprintf('Using Haar Formula:')

T_Haar=[1 1 1 1;1 1 -1 -1;1 -1 0 0;0 0 1 -1]
T_Haar_Transpose=T_Haar';
fprintf("T_Haar*x'=X\n")

X=T_Haar*x'

fprintf('Using Normalise function contained in matrix T:\n')
fprintf('After performing normalise square, norm^2 = \n')
X_norm_square=[X(1,:)/4; X(2,:)/4; X(3,:)/2; X(4,:)/2]

fprintf('x=T_Haar_Tranpose*X_norm_square\n')
x=T_Haar'*X_norm_square

fprintf('Therefore/Thus\n,')
fprintf('Haar technique is preferred, because it is in the form of edge data and less floating number\n')
fprintf('NOW NEED TO WRTIE OUT THE FULL EQUATION USING MATRIX X_norm_sqare multiply to T_Haar\n')
fprintf('\n')
fprintf('MATRIX x = X1_norm_square[COLUMN 1 of T_Haar_Transpose] + X2[COLUMN 2] +X3[COLUMN 3] + X4[COLUMN 4]\n')
fprintf('SWIPE UP TO VIEW ALL INFORMATIONS\n,')