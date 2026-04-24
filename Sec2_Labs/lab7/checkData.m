%Task10

function checkData(v)

if length(v)> 3
    stem(v)
    title(sprintf('Data Length: %d', length(v)))
else
   error('data too short') 
end
end


 % testdata=[8, 4, 6, 9, 2];  checkData(testdata)
 
