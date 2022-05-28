%SVD 2x2
clear,clc,close all 

fprintf('Using SVD formula:\n')
fprintf("A=U ΣV'\n")
fprintf('Enter element for MATRIX A:\n')
A=input('MATRIX A=')
I2b2=[1 0;0 1];

fprintf('CORRECT ANSWER for U,S,V\n')
[U,S,V]=svd(A)

fprintf("P=")
P=A'*A
P_Transpose=P';

fprintf('FORMULA TO FIND EIGENVALUE: det(P-Eigentvalues*I)=0\n')
fprintf('ENTER COEFFICIENT TO FIND 3 ROOTS\n')
a=input('a=')
b=input('b=')
c=input('c=')
Eigenvalues=[a b c];
roots(Eigenvalues)

[EigenVector,EigenValue]=eig(P) 

fprintf('To find EigenVector1 using EigenValue1\n')
EigenValue1=EigenValue(2,2)
Matrix_eqn1=(P-EigenValue1*I2b2)
Calculated_Matrix_eqn1=[sum(Matrix_eqn1(:,1)) sum(Matrix_eqn1(:,2))]

fprintf('Write Using normalise function, then just copy V1 from EigenVector as solution at below\n')
fprintf('Enter value of X0_1 and X1_1\n')
X0_1=input('X0_1=')
X1_1=input('X1_1=')
EigenVector1_prime=[X0_1;X1_1]
EigenVector1=EigenVector1_prime/norm(EigenVector1_prime)
V1=EigenVector(:,2)

fprintf('To find EigenVector2 using EigenValue2\n')
EigenValue2=EigenValue(1,1)
Matrix_eqn2=(P-EigenValue2*I2b2)
Calculated_Matrix_eqn2=[sum(Matrix_eqn2(:,1)) sum(Matrix_eqn2(:,2))]

fprintf('Write Using normalise function, then just copy V2 from EigenVector as solution\n')
fprintf("Enter value of X0_2 and X1_2'\n")
X0_2=input('X0_2=')
X1_2=input('X1_2=')
EigenVector2_prime=[X0_2;X1_2]
EigenVector2=EigenVector2_prime/norm(EigenVector2_prime)
V2=EigenVector(:,1)

fprintf('NOW WE NEED TO FIND THE SIGMA,Σ\n')
Sigma1=sqrt(EigenValue(2,2))
Sigma2=sqrt(EigenValue(1,1))
SIGMA=[Sigma1 0 ;0 Sigma2;]

fprintf('NOW WE NEED TO FIND (U)\n')
%nullspace=U(:,2)
u=[-(1/Sigma1)*A*V1 (1/Sigma2)*A*V2]

fprintf('HERE WE NEED TO GET THE FINAL COMPONENT FOR V_Tranpose\n')
fprintf('Re-arrange the matrix V and tranpose it\n')
V_new=[-V1 V2]
V_Transpose=V_new';

fprintf("USING SVD FORMULA 'A=U*SIGMA*V_Transpose\n")
FINAL_A=u*SIGMA*V_Transpose

fprintf("SWIPE UP TO VIEW ALL INFORMATIONS\n")