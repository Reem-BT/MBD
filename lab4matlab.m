

% %Task1

t=input( 'Enter an integer number: ','s');
t_int=int32(t);
  
if t>50
    status='High'
elseif t==50
    status='Perfect'
else 
        status='Low'
end


% %Task2

M = [10 20 30; 40 50 60; 70 80 90];
Sub_M=M(:,[1,3]);
 
V=ones(3,1);

Final_Mat=cat(2,Sub_M,V)
 
% %Task3
vec =[2 4];
Rep_Mat=repmat(vec,2,1)
Math_Res=(Rep_Mat.^2)*0.5

% %Task4
A =[1 2; 3 4];
B = [5; 11];

det_A=det(A);
inv_A=inv(A);
X=inv_A*B

fprintf(' The determinant of matrix A IS: %d\n',det_A)



% %Task5
user_color=input( 'Enter a color code (r, g, b): ','s');

switch user_color
    case 'r'
    color_name='Red';
    case 'g'
      color_name='Green';
      case 'b'
       color_name='Blue';
    otherwise 
        color_name='Unknown Color';
        
end

fprintf('The selected color is : %s\n',color_name)












