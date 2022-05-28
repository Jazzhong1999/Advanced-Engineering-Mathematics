%EIGENSOLUTIONS
clear,clc,close all

fprintf('Enter elements of Matrix A\n')
A=input('MATRIX A=')
I2b2=[1 0;0 1];

fprintf('Enter quadratic equation to find ROOTS:\n')
a=input('a=')
b=input('b=')
c=input('c=')

Eigenvalues=[a b c];
roots(Eigenvalues)

[EigenVector,EigenValue]=eig(A) 

fprintf('To find EigenVector1 using EigenValue1\n')
EigenValue1=EigenValue(2,2)
Matrix_eqn1=(A-EigenValue1*I2b2)
Calculated_Matrix_eqn1=[sum(Matrix_eqn1(:,1)) sum(Matrix_eqn1(:,2))]

fprintf('Enter value of X0_1 and X1_1\n')
X0_1=input('X0_1=')
X1_1=input('X1_1=')
EigenVector1_prime=[X0_1;X1_1]
EigenVector1=EigenVector1_prime/norm(EigenVector1_prime)
V1=EigenVector(:,2)

fprintf('To find EigenVector2 using EigenValue2\n')
EigenValue2=EigenValue(1,1)
Matrix_eqn2=(A-EigenValue2*I2b2)
Calculated_Matrix_eqn2=[sum(Matrix_eqn2(:,1)) sum(Matrix_eqn2(:,2))]

fprintf("Enter value of X0_2 and X1_2'\n")
X0_2=input('X0_2=')
X1_2=input('X1_2=')
EigenVector2_prime=[X0_2;X1_2]
EigenVector2=EigenVector2_prime/norm(EigenVector2_prime)
V2=EigenVector(:,1)

fprintf("COMPARE THIS SOLUTION WITH EigenVector\n")
Final_Eigenvector=[EigenVector2 EigenVector1]
fprintf('SWIPE TO ABOVE VIEW DATA\n')
