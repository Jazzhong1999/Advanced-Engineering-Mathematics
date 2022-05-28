%Orthonormal vectors
clear,clc,close all 
fprintf('ENTER ELEMENT FOR Vector V1, V2 and V3\n')
V1=input('V1=')
V2=input('V2=')
V3=input('V3=')

fprintf('From Othonormal technique\nUsing normalise function\n')
fprintf('Refer all the working step from OneNote\n')
U1_norm=V1/norm(V1)

fprintf('Using FORMULA U2=V2-(U1_norm.V2)*U1_norm/(U1_norm.U1_norm)\n')
dot(U1_norm,V2);
dot(U1_norm,U1_norm);
U2=V2-(dot(U1_norm,V2)*U1_norm/dot(U1_norm,U1_norm))

fprintf('Using normalise function from MATLAB\n')
U2_norm=U2/norm(U2)

fprintf('Using FORMULA a13=(U1_norm.V3)/(U1_norm.U1_norm)\n')
dot(U1_norm,V3);
dot(U1_norm,U1_norm);
a13=(dot(U1_norm,V3)/dot(U1_norm,U1_norm))

fprintf('Using FORMULA a23=(U2_norm.V3)/(U2_norm.U2_norm)\n')
dot(U2_norm,V3);
dot(U2_norm,U2_norm);
a23=(dot(U2_norm,V3)/dot(U2_norm,U2_norm))

fprintf('Using FORMULA U3=V3-a13*U1_norm-a23*U2_norm\n')
U3=V3-a13*U1_norm-a23*U2_norm

fprintf('Using normalise function from MATLAB\n')
U3_norm=U3/norm(U3)

fprintf('------------------------FINAL ANSWER---------------------------\n')
fprintf('Therefore, the following orthonormal vectors are:\n')
U1_norm
U2_norm
U3_norm