%NAME      : HONG SHENG SING
%STUDENT ID: 20018072

%--------------------------LINEAR REGRESSION-------------------------------
clear,clc,close all
fprintf('NAME      : HONG SHENG SING\n')
fprintf('STUDENT ID: 20018072\n')
fprintf('---------------LINEAR REGRESSION---------------')

I=0:0.2:(0.2*20);
N=21;
R=100;

%P = Actual Power Loss 
%Power Loss formula
P=I.*I*100;
mean_I=mean(I);
mean_P=mean(P);

%Current values
I_values = transpose(I);          

%Power values
P_values = transpose(P);

%Display data in table
I_P_Table = table(I_values,P_values);

%Get variable a, b, c, d and e (BELOW ARE THE FORMULA)
a=((I-mean_I).*(P-mean_P))/((I-mean_I).^2);

b=(mean_P)-(a.*mean_I);

c=(mean_P)-(a.*(mean_I.^2))-(b.*mean_I);

order = 1

%Empty bracket to store for further data 
Data = [];
Data_10W = [];
Data_20W = [];
Data_30W = [];
Data_40W = [];
Data_50W = [];
Avg_E_Data = [];

for a = 1:1:10
%-----------------------------CLEAN POWER----------------------------------
scatter(I,P);
hold on 

[p,s,mu] = polyfit(I,P,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
xlabel('CURRENT/A');
ylabel('POWER LOSS/W');
hold on 

difference = P - y_fit;
E = sum(difference.^2);

Data = [Data; E];

%------------------------------NOISES POWER--------------------------------
%Generate random numbers
noise10 = randn(1,N);
noise20 = randn(1,N);
noise30 = randn(1,N);
noise40 = randn(1,N);
noise50 = randn(1,N);

P_noise10 = P + (10*noise10);
P_noise20 = P + (20*noise20);
P_noise30 = P + (30*noise30);
P_noise40 = P + (40*noise40);
P_noise50 = P + (50*noise50);

scatter(I,P_noise10);
hold on 
scatter(I,P_noise20);
hold on 
scatter(I,P_noise30);
hold on 
scatter(I,P_noise40);
hold on 
scatter(I,P_noise50);
hold on 

[p,s,mu] = polyfit(I,P_noise10,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
hold on
[p,s,mu] = polyfit(I,P_noise20,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
hold on 
[p,s,mu] = polyfit(I,P_noise30,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
hold on
[p,s,mu] = polyfit(I,P_noise40,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
hold on
[p,s,mu] = polyfit(I,P_noise50,order);
[y_fit,delta] = polyval(p,I,s,mu);
plot(I,y_fit);
hold on 

difference = P_noise10 - y_fit;
E10 = sum(difference.^2);
difference = P_noise20 - y_fit;
E20 = sum(difference.^2);
difference = P_noise30 - y_fit;
E30 = sum(difference.^2);
difference = P_noise40 - y_fit;
E40 = sum(difference.^2);
difference = P_noise50 - y_fit; 
E50 = sum(difference.^2);

Data_10W = [Data_10W; E10];
Data_20W = [Data_20W; E20];
Data_30W = [Data_30W; E30];
Data_40W = [Data_40W; E40];
Data_50W = [Data_50W; E50];
end

Avg_E = (sum(Data))/10
Avg_E_10W = (sum(Data_10W))/10
Avg_E_20W = (sum(Data_20W))/10
Avg_E_30W = (sum(Data_30W))/10
Avg_E_40W = (sum(Data_40W))/10
Avg_E_50W = (sum(Data_50W))/10


%----------------Relationship between AVERAGE ERROR and POWER--------------
figure(2)
Noise_power_level=0:10:50;
%Noise_power_level=[P_noise10 P_noise20 P_noise30 P_noise40 P_noise50];%X
Avg_Error=[Avg_E Avg_E_10W Avg_E_20W Avg_E_30W Avg_E_40W Avg_E_50W]; %Y
plot(Noise_power_level, Avg_Error);
xlabel('POWER NOISE LEVEL/W');
ylabel('AVERAGE ERROR');