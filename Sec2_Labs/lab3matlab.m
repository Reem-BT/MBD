
% %Task1
user_val=input('Enter a decimal number: ');
 int_val=int32(user_val);
 
 fprintf('The converted integer is:%d\n',int_val);


%Task2

mat_size=input('Enter matrix size: ')
mat1=zeros(mat_size);

mat1(1, :) = randi([1, 20], 1, mat_size);
disp(mat1);


%Task3
 Data = [1 2 3 4; 5 6 7 8; 9 10 11 12]
 Extracted_Data=Data([1,3],[2:end])
 
%Task4
 A = [2 4; 6 8];
 B = [2 2; 2 2];
 
 Math_Result=(A.^2)./B 
 
 
%Task5

v = [7 8];
Repeated_Mat=repmat(v,2,1)
col = [9; 9];
Combined_Mat=horzcat(Repeated_Mat,col)


%Task6

 A = [1 2; 2 2];
 b = [2; 6];
 
 inv(A)
 x=inv(A)*b
 trace(A)









