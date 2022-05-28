%EIGENSOLUTIONS FOR 3x3
clear,clc,close all 

fprintf('Enter elements of Matrix A\n')
A=input('MATRIX A=')
I3b3=[1 0 0;0 1 0;0 0 1];

fprintf('FORMULA TO FIND EIGENVALUE: det(P-Eigentvalues*I)=0\n')
fprintf('ENTER COEFFICIENT TO FIND 3 ROOTS\n')
a=input('a=')
b=input('b=')
c=input('c=')
d=input('d=')
Eigenvalues=[a b c d];
roots(Eigenvalues)

[EigenVector,EigenValue]=eig(A) 

fprintf('To find EigenVector1 using EigenValue1\n')
EigenValue1=EigenValue(3,3)
Matrix_eqn1=(A-EigenValue1*I3b3)
Calculated_Matrix_eqn1=[sum(Matrix_eqn1(:,1)) sum(Matrix_eqn1(:,2)) sum(Matrix_eqn1(:,3))]

fprintf('Write Using normalise function, then just copy V1 from EigenVector as solution\n')
V1=EigenVector(:,3)

fprintf('To find EigenVector2 using EigenValue2\n')
EigenValue2=EigenValue(2,2)
Matrix_eqn2=(A-EigenValue2*I3b3)
Calculated_Matrix_eqn2=[sum(Matrix_eqn2(:,1)) sum(Matrix_eqn2(:,2)) sum(Matrix_eqn2(:,3))]

fprintf('Write Using normalise function, then just copy V2 from EigenVector as solution\n')
V2=EigenVector(:,2)

fprintf('To find EigenVector3 using EigenValue3\n')
EigenValue3=EigenValue(1,1)
Matrix_eqn3=(A-EigenValue3*I3b3)
Calculated_Matrix_eqn3=[sum(Matrix_eqn3(:,1)) sum(Matrix_eqn3(:,2)) sum(Matrix_eqn3(:,3))]

fprintf('Write Using normalise function, then just copy V3 from EigenVector as solution\n')
V3=EigenVector(:,1)

fprintf("EXACTLY THE SAME WITH correct EigenVector\n")
Final_Eigenvector=[V3 V2 V1]
fprintf('SWIPE TO ABOVE VIEW DATA\n')