%PRINCIPLE COMPONENT
clear,clc,close all 
fprintf('ENTER ELEMENT FOR MATRIX X\n')
X=input('MATRIX X=')

fprintf('KEY IN THE NUMBER OF READINGs or MEASUREs\n')
Reading=input('Reading=')
Mean_X=mean(X)

fprintf('FORMULA X_new = X-Mean_X')
New_X=X-Mean_X

fprintf("FORMULA Covariance(C) = (X_new'*X_new)/No. of Reading")
Covariance=(New_X'*New_X)/Reading

fprintf('--------------------PCA PERFORM---------------------\n')
fprintf('Do all the steps to find the eigensolutions of Covariance matrix\n')
[EigenVector,EigenValue]=eig(Covariance)

fprintf('ONLY SELECTED EigVector with THE MOST INFORMATION COLUMNS IN EIGENVALUE\n')
fprintf("FORMULA PC1 = EigenVector_TRANSPOSE*X_new_TRANSPOSE")
PC1=EigenVector(:,3)'*New_X'
%PC1=EigenVector(:,2)'*New_X'

