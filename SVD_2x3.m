%SVD 3x3 or 2x3
clear,clc,close all 

fprintf('Using SVD formula:\n')
fprintf("A=U ΣV'\n")
fprintf('Enter element for MATRIX A:\n')
A=input('MATRIX A=')
I3b3=[1 0 0;0 1 0;0 0 1];

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
d=input('d=')
Eigenvalues=[a b c d];
roots(Eigenvalues)

[EigenVector,EigenValue]=eig(P) 

fprintf('To find EigenVector1 using EigenValue1\n')
EigenValue1=EigenValue(3,3)
Matrix_eqn1=(P-EigenValue1*I3b3)
Calculated_Matrix_eqn1=[sum(Matrix_eqn1(:,1)) sum(Matrix_eqn1(:,2)) sum(Matrix_eqn1(:,3))]

fprintf('Write Using normalise function, then just copy V1 from EigenVector as solution\n')
V1=EigenVector(:,3)

fprintf('To find EigenVector2 using EigenValue2\n')
EigenValue2=EigenValue(2,2)
Matrix_eqn2=(P-EigenValue2*I3b3)
Calculated_Matrix_eqn2=[sum(Matrix_eqn2(:,1)) sum(Matrix_eqn2(:,2)) sum(Matrix_eqn2(:,3))]

fprintf('Write Using normalise function, then just copy V2 from EigenVector as solution\n')
V2=EigenVector(:,2)

fprintf('To find EigenVector3 using EigenValue3\n')
EigenValue3=EigenValue(1,1)
Matrix_eqn3=(P-EigenValue3*I3b3)
Calculated_Matrix_eqn3=[sum(Matrix_eqn3(:,1)) sum(Matrix_eqn3(:,2)) sum(Matrix_eqn3(:,3))]

fprintf('Write Using normalise function, then just copy V3 from EigenVector as solution\n')
V3=EigenVector(:,1)

fprintf('NOW WE NEED TO FIND THE SIGMA,Σ\n')
Sigma1=sqrt(EigenValue(3,3))
Sigma2=sqrt(EigenValue(2,2))
Sigma3=sqrt(EigenValue(1,1))
SIGMA=[Sigma1 0 0;0 Sigma2 0]

fprintf('NOW WE DONT NEED TO FIND NULL SPACE, JUST COPY ANSWER FROM MATLAB\nbut dont forget to do the working manually if question asks - USV\n')
%nullspace=[SIGMA(:,3)]
%u=[-(1/Sigma1)*A*V1 (1/Sigma2)*A*V2 nullspace]
u=[(1/Sigma1)*A*V1 (1/Sigma2)*A*V2]

fprintf('HERE WE NEED TO GET THE FINAL COMPONENT FOR V_Tranpose\n')
fprintf('Re-arrange the matrix V and tranpose it\n')
V_new=[V1 V2 V3]
V_Transpose=V_new';

fprintf("USING SVD FORMULA 'A=U*SIGMA*V_Transpose'\n")
FINAL_A=u*SIGMA*V_Transpose

fprintf("SWIPE UP TO VIEW ALL INFORMATIONS\n")