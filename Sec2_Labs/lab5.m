
%Task1

Department=input('Enter your department name: ','s');

Dimension=input('Enter a matrix dimension N: ','s');
N=str2double(Dimension);
NMAT=randn(N);

isNempty=isempty(NMAT);

fprintf('Department : %s  created a %d x %d matrix \n is it empty? %d', Department,N,N,isNempty)

%Task2

M=reshape(1:16,4,4);
SubM=M(3:end,3:end);
Id=eye(2);

Math_Mat=(SubM.^2)+Id


%Task3

v=10:-3:1;
Rep_A=repmat(v,3,2);
col=zeros(3,1);

 Final_Block=horzcat(Rep_A,col)


%Task5

N=input('Enter a Number: ')
while N<=0;
    N=input('Enter a Number: ')
end

  f = @(x) x.^2 + 10;
 
  total_sum = 0;
    for i=1:N
       total_sum=total_sum+f(i);
    end  


fprintf('The final accumulated sum is %d',total_sum)













