%GIVEN ROTATION FOR 3x3
clear,clc,close all

fprintf('Enter elements of Matrix A(Input) and Matrix B (Output)\n')
A=input('MATRIX A=')

fprintf('If MATRIX B not given, just simply key in some elements\n')
B=input('MATRIX B=')
I=[1 0;0 1];
%Ax=B
%A=QR
%Add QT to both side 

value=input('sind/cosd=');
theta1=atand(value)

G1=[cosd(theta1) 0 -sind(theta1);0 1 0; sind(theta1) 0 cosd(theta1)]
A2=G1*A

value2=input('sind/cosd=');
theta2=atand(value2)

G2=[cosd(theta2) -sind(theta2) 0; sind(theta2) cosd(theta2) 0; 0 0 1]
A3=G2*A2

value3=input('sind/cosd=');
theta3=atand(value3)

G3=[1 0 0;0 cosd(theta3) -sind(theta3); 0 sind(theta3) cosd(theta3)]
Final_Solution_R=G3*A3

fprintf("CAN USE THIS Q_Transpose to COMPARE with actual Q transpose at below")
Q_Transpose=G3*G2*G1

[Q,R]=qr(A)

fprintf("WRITE DOWN Q'=G3*G2*G1 then sub. into formula below")
fprintf("\nWRITE DOWN THIS EQUATION (Rx=Q'B) and find X1,X2,X3\n")
fprintf("JUST COPY THE ANSWER AT HERE X1,X2,X3\n")
x=inv(A)*B
fprintf("SWIPE UP TO VIEW ALL INFOMATIONS\n")