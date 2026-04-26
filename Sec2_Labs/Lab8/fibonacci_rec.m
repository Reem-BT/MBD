
%Task2

function result = fibonacci_rec(n)
    if n == 0
        result = 0;
    elseif n == 1
        result = 1;
    else
        result = fibonacci_rec(n - 1) + fibonacci_rec(n - 2);
    end
end

%   result = fibonacci_rec(7); disp(result);