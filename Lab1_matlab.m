
%TASK1
my_num=50;
my_str='Hello World';
size(my_str)

%TASK2
M=[1 2 3;4 5 6]
V=20:-2:10

%TASK3
X=M(2,3)
Y=M(:,1)
Z=M(end,end)

%TASK4
A=[1 2;3 4];;
B=[2 4;6 8];

Q1=A.*B
Q2=A./B
Q3=A.'

%TASK5
A = [1 2; 3 4];
B = [5 6; 7 8];

C_horz=horzcat(A,B)
%C_horz=cat(2,A,B)
C_vert=vertcat(A,B)
%C_vert=cat(1,A,B)


%TASK6

 A = [1 2; 3 4];
 newA=repmat(A,3,2)
