
clear
clc
%Task 1
num=15.7;

num_int= int32(num)
is_positive = num_int>0
str= cat(2,num2str(num_int),'Units')

%task2

M=[1:3;zeros(1,3);5+rand(1,3)*2]



%task3

 A = [10 20 30; 40 50 60; 70 80 90];

sub_A=A(:,2:end)

%task4

 X = [2 4; 6 8];
 
 X1= X.^2;
 X2= X1./2
 
 %TASK5
 
 A = [1 2; 3 4];
 B = [5; 6];
 
 C=cat(2,A,B)
 D=[7 8 9];
 Final_Mat= cat(1,C,D)
 
 
 %TASK6
 
 V=[1 2];
 R1=repmat(V,3,2)
 R2=repelem(V,3)
 
 
  %TASK67
  
  
A = [1 2; 2 2];
b = [2; 6];

A_inv=inv(A)

X=  A_inv * b

trace_A=trace(A)











 
 
 
 
 
 
 