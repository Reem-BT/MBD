%Task2

function x=solveSystem(A, b)

det_A=det(A);
if det_A==0
    disp('No unique solution')
    x=[]
else
    x=inv(A)*b;
end

   disp(x)
end

%call: solveSystem6([1 2; 2 4], [5;10])
