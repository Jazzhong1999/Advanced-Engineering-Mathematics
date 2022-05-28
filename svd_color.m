%NAME: HONG SHENG SING
%STUDENT ID: 20018072
%DATE: 27th October 2020

%Firstly, we clear all the contents (RESET) to make sure the screen is clean
clc, close all, clear all

filename = 'C:\Users\Jazz Hong\Desktop\AEM\Passport size.jpg';

%[I,map], map is just like a fast key to lookup data structure that offers
%a flexible means of indexing into its indivisual elements
 [I, map] = imread(filename);
 figure('Name','ORIGINAL component of the imported image');
 imshow(I); %Show in Matlab
 imwrite(I, 'Original.jpg'); %Saved/Write into our laptop (device)
 
 %Extracting out the components of RGB
 %(:,:,1) First one is ROWS, Second is COLUMNS and the "1" is meaning first
 %red channel plane
 %":" meaning ALL ROWS for the First one (:,:,1) at the red channel plane 1
 R = I(:,:,1);
 G = I(:,:,2);
 B = I(:,:,3);
 
 %Here showing all the original picture but each in different color only 
 %So that we can make a comparison at the end for all components
 %This is just the formula to obtain indivisual content just like (255,0,0)
 %for RED, (0,255,0) for GREEN and (0,0,255) for BLUE
 %Cat meaning Concatenate (Merge) up all the 3 color components
 Rimg = cat(3, R, zeros(size(R)), zeros(size(R)));
 Gimg = cat(3, zeros(size(G)), G, zeros(size(G)));
 Bimg = cat(3, zeros(size(B)), zeros(size(B)), B);
 figure('Name','RED component of the imported image');
 imshow(Rimg);
 imwrite(Rimg, 'Original RED.jpg');
 figure('Name','GREEN component of the imported image');
 imshow(Gimg);
 imwrite(Gimg, 'Original GREEN.jpg');
 figure('Name','BLUE component of the imported image');
 imshow(Bimg);
 imwrite(Bimg, 'Original BLUE.jpg');
 
Red =double(R);
Green = double(G);
Blue = double(B);

Absolutedifference = []; %Display error
numSVals = []; %Number of singular values

for N=5:5:100
 %Perform svd function for RED component
 [U,S,V]=svd(Red);
 C = S;
 C(N+1:end,:)=0;
 C(:,N+1:end)=0;
 Dr=U*C*V';
 
 %Display the figures
 figure;
 buffer = sprintf('Red image output using %d singular values', N);
 Rimg = cat(3, Dr, zeros(size(Dr)), zeros(size(Dr)));
 imshow(uint8(Rimg));
 imwrite(uint8(Rimg), sprintf('%dred.jpg', N));
 title(buffer);
 
 %Perform svd function for RED component
 [U2, S2, V2]=svd(Green);
 C = S2;
 C(N+1:end,:)=0;
 C(:,N+1:end)=0;
 Dg=U2*C*V2';
 
 %Display the figures
 figure;
 buffer = sprintf('Green image output using %d singular values', N);
 Gimg = cat(3, zeros(size(Dg)), Dg, zeros(size(Dg)));
 imshow(uint8(Gimg));
 imwrite(uint8(Gimg), sprintf('%dgreen.jpg', N));
 title(buffer);
 
 %Perform svd function for RED component
 [U3, S3, V3]=svd(Blue);
 C = S3;
 C(N+1:end,:)=0;
 C(:,N+1:end)=0;
 Db=U3*C*V3';
 
 %Display the figures
 figure;
 buffer = sprintf('Blue image output using %d singular values', N);
 Bimg = cat(3, zeros(size(Db)), zeros(size(Db)), Db);
 imshow(uint8(Bimg));
 imwrite(uint8(Bimg), sprintf('%dblue.jpg', N));
 title(buffer);
 
 % Rebuild a colored image with the corresponding data and show it
 % Merge up all the 3 color components
 figure;
 buffer = sprintf('Colored image output using %d singular values', N);
 Cimg = cat(3, Dr, Dg, Db);
 imshow(uint8(Cimg));
 imwrite(uint8(Cimg), sprintf('%dcolor.jpg', N));
 title(buffer);
end

%Dislay the error compression graph
figure; 
title('Error in compression');
%Plot(X,Y)
plot(numSVals, Absolutedifference);
grid on
xlabel('Number of Singular Values used');
ylabel('Error between compress and original image');