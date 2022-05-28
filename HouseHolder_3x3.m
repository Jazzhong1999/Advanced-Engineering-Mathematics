%HouseHolder Reflection 2x2
clear,clc,close all

fprintf('Enter elements of Matrix A (Full Matrix) and Matrix B (Output)\n')
A=input('MATRIX A=')
B=input('MATRIX B=')

fprintf('FIRST COLUMN MATRIX SELECTED\n')
X=A(:,1)

I1=[1;0;0];
I1_Prime=[1;0];
I3b3=[1 0 0;0 1 0;0 0 1];
I2b2=[1 0;0 1];

X_Prime=(X(1,1)^2 + X(2,1)^2 + X(3,1)^2)*I1;
X_Prime_sqrt=sqrt(X_Prime)
U=X-X_Prime_sqrt

fprintf('HOUSE HOLDER FORMULA calculated\n')
H1=I3b3-(2*U*U')/(U'*U)

H1A=H1*A

fprintf('HERE SHOWS THE SELECTED MATRIX 4x4\n')
A_Prime=H1A(2:3,2:3)

fprintf('FIRST COLUMN MATRIX SELECTED\n')
X1=A_Prime(:,1)

X1_Prime=(X1(1,1)^2 + X1(2,1)^2)*I1_Prime;
X1_Prime_sqrt=sqrt(X1_Prime)
U=X1-X1_Prime_sqrt

fprintf('HOUSE HOLDER FORMULA calculated\n')
H2_Prime=I2b2-(2*U*U')/(U'*U)

fprintf('HERE YOU NEED TO PLACE BACK THE ELEMENT TO FORM 3x3 MATRIX AS H2\n')
fprintf('1 0 0\n0 x x\n0 x x\n')

fprintf('\nPerform Q=H1*H2\n')
fprintf('Perform R=H2*H1*A\n')

[Q,R]=qr(A)

fprintf("REMEMBER TO TRANPOSE THE MATRIX Q")
fprintf("WRITE DOWN THIS EQUATION (Rx=Q'B) and find X1,X2,X3\n")
fprintf("JUST COPY THE ANSWER AT HERE X1,X2,X3\n")
x=inv(A)*B
fprintf("SWIPE UO TO VIEW ALL INFORMATIONS\n")