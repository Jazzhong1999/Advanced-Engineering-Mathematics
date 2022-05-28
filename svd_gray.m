%NAME: HONG SHENG SING
%STUDENT ID: 20018072
%DATE: 27th October 2020

%Firstly, we clear all the contents (RESET) to make sure the screen is clean
clc, close all, clear all

%Here we want to load and input the photo into MATLAB
%Image read=imread 
Inputimage=imread('C:\Users\Jazz Hong\Desktop\AEM\Passport size.jpg');

%Here we converting rgb to gray scale 
Inputimage=rgb2gray(Inputimage);
I=double(Inputimage);
imwrite(uint8(I), 'Original.jpg');

%Decomposing the image using singular value decomposition function
[U,S,V]=svd(I);

%Using different number of singular values (diagonal of S matrix) 
%to compress and reconstruct the image
%[] Empty arguments meaning undefined which allows further input arguments
%to be specified
Absolutedifference = []; %Display error
numSVals = []; %Number of singular values

%Setting the singular values ranging using N
%787 singular values

for N=5:5:100
    %Store the singular values in a temporary variable
    C = S;

    %Discard the diagonal values not required for compression
    %Note that the first one is ROWS , second is COLUMNS
    C(N+1:end,:)=0;
    C(:,N+1:end)=0;

    %Construct an image using the selected singular values
    Reconstructedimage=U*C*V';

    %Display the images with difference singular values used
    figure;

    %sprintf is for string, fprintf is for file to display on the command  
    buffer = sprintf('Image output using %d singular values', N)

    %imshow = image show
    %unit8 = unsigned 8 bit integer
    imshow(uint8(Reconstructedimage));

    %Imwrtie used to saved the picture we want, write = do something
    %instead of just read the image
    title(buffer);
    imwrite(uint8(Reconstructedimage), sprintf('F%d_Gray.jpg', N));
    error=sum(sum((I-Reconstructedimage).^2));

    %Store values for display
    Absolutedifference = [Absolutedifference; error];
    numSVals = [numSVals; N];
end

%Dislay the error compression graph
figure; 
title('Error in compression');
%Plot(X,Y)
plot(numSVals, Absolutedifference);
grid on
xlabel('Number of Singular Values used');
ylabel('Error between compress and original image');