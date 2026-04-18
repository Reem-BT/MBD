

%task4
function   x=solveLinear(A,b)
   det_A=det(A);
if det_A~=0
    x=inv(A)*b;
else
    x=[]
end
    
    disp(x)
end


% A = [1 3 0; 2 1 3; 4 2 3];
% b = [1; 6; 3];