
%Task3

 names = {'John','Sara','Mike'};
 depts={'HR','IT','IT'};

empTable=table(names,depts)
empTable.depts=categorical(empTable.depts);

itTable=empTable.depts=='IT';

disp(itTable);



%Task4
fruits = ["Cherry", "Apple", "Banana"];
sorted_fruits = sort(fruits);
joined_str = join(sorted_fruits, "-");

disp(joined_str);

%Task5
A = [1 2; 3 4];
B = [1; 2; 3];

try
    result = A * B;
catch
    disp('Matrix mismatch detected. Applying fallback.');
    NEWresult = A(1,:).*B(1:2);
    disp(NEWresult);
end

%Task6
[X,Y]=meshgrid(-3:0.1:3);
Z=cos(X)+sin(Y);

figure;
surf(X, Y,Z);
colormap(turbo);
colorbar;

%task7
cars(1)=struct('Model', 'Sedan', 'Price', 25000);
cars(2)=struct('Model', 'SUV', 'Price', 40000);
cars(3)=struct('Model', 'Truck', 'Price', 30000);




