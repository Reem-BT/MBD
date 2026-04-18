

%Task1

N=input('enter a positive integer greater than 2:  ')
while N<=2
    disp('Invalid! Try again:')
    N=input('enter a positive integer greater than 2')

end
MAT=randn(N);
sub_mat=MAT(end-1:end, end-1:end);
disp(sub_mat)


% % %Task2
% 
% 
%  function x=solveSystem(A, b)
%  
%  det_A=det(A);
%  if det_A=0
%      disp('No unique solution')
%      x=[]% else
%      x=inv(A)*b;
%    
%  end
%  end

%Task3
v=[1 2];
Rep_Mat=repmat(v,2,3)
c = [10;20];

Final_Mat=horzcat(c,Rep_Mat).^2


%Task4

word ='MATLAB';

wordnum=int32(word);
n=length(wordnum);
mat=zeros(n);

final_mat =  diag(wordnum);
disp(final_mat)

%Task5

f = @(x) x.^2 + 2.*x
sum =0 ;
for i=1:5
   sum=sum+f(i) ;
end
fprintf('The final sum is %d\n',sum)


%Task6
 y=input('Enter operation (add, sub): ','s')
 
  A = [1 2; 3 4]; B = [5 6; 7 8];
 switch y
     case 'add'
         disp(vertcat(A,B));
     case'sub'
         disp(horzcat(A,B));
     otherwise
         disp(error('Invalid operation'));
     
 end
     


%Task7

 M = [12 -5 8; -3 9 -1];
mask = M < 0; 
M(mask) = abs(M(mask)) * 10;

disp(M)

%Task8
 I = eye(2);
 Big_I=repelem(I,2,2);
 traceBig_I=trace(Big_I);
 final_string=string(traceBig_I);
 disp('Trace is: '+final_string)
%changed the repelem dimensions so it can be a square matrix for trace.

%Task9
 Data = [10 20; 30 40];
 save('sensor_data.mat', 'Data');
clearvars
load('sensor_data.mat')
x=(Data.')./10;
disp('The final matrix is : ')
disp(x)


%Task10

mat=randn(2,3,4);
page2=mat(:,:,2 );
trans_mat=page2';
T_numel=numel(trans_mat);
fprintf('The extracted matrix contains %d elements.\n', T_numel)




