%HouseHolder Reflection 3x3
clear,clc,close all

fprintf('Enter elements of Matrix A (Full Matrix) and Matrix B (Output)\n')
A=input('MATRIX A=')
B=input('MATRIX B=')

fprintf('FIRST COLUMN MATRIX SELECTED\n')
X=A(:,1)

I1=[1;0];
%I1_Prime=[1;0];
I2b2=[1 0;0 1];

X_Prime=(X(1,1)^2 + X(2,1)^2)*I1;
X_Prime_sqrt=sqrt(X_Prime)
U=X-X_Prime_sqrt

fprintf('HOUSE HOLDER FORMULA calculated\n')
H=I2b2-(2*U*U')/(U'*U)

HA=H*A;

fprintf("COMPARE THIS SOLUTION TO THE ACTUAL R and Q\n")
Final_Solution_R=HA
Final_Solution_Q=H

fprintf('\nPerform Q=H\n')
fprintf('Perform R=H*A\n')

[Q,R]=qr(A)

fprintf("REMEMBER TO TRANPOSE THE MATRIX Q")
fprintf("WRITE DOWN THIS EQUATION (Rx=Q'B) and find X1 and X2\n")
fprintf("JUST COPY THE ANSWER AT HERE X1 and X2\n")
x=inv(A)*B
fprintf("SWIPE UO TO VIEW ALL INFORMATIONS\n")