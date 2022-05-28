%GIVEN ROTATION FOR 2x2
clear,clc,close all

fprintf('Enter elements of Matrix A(Input) and Matrix B (Output)\n')
A=input('MATRIX A=')
fprintf('If MATRIX B not given, just simply key in [0;0]\n')
B=input('MATRIX B=')

%Ax=B
%A=QR
%Add QT to both side 

fprintf('COPY DOWN MATRIX G\n')
fprintf('MATRIX G=[cos(theta) -sin(theta);sin(theta) cos(theta)]\n')

fprintf('Write down G*A matrix and let GA(2,1) == 0\n')
fprintf('x x\n')
fprintf('0 x\n')
fprintf('You will get the sind/cosd\n')
value=input('sind/cosd=');
theta=atand(value)

G=[cosd(theta) -sind(theta);sind(theta) cosd(theta)]
GA=G*A

fprintf("COMPARE THIS SOLUTION TO THE ACTUAL R and Q")
Final_Solution_R=GA
Q_Tranpose=G
Final_Solution_Q=G'

[Q,R]=qr(A)

fprintf("WRITE DOWN Q'=G then sub. into formula below")
fprintf("\nWRITE DOWN THIS EQUATION (Rx=Q'B) and find X1 and X2 if question asked\n")
fprintf("JUST COPY THE ANSWER AT HERE X1 and X2\n")
x=inv(A)*B
fprintf("SWIPE UP TO VIEW ALL INFOMATIONS\n")