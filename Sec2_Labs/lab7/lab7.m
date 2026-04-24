

%Task1
deci_num=input('Enter a decimal number:');
int_num=uint8(deci_num);
fprintf('The converted 8-bit integer is: %d\n',int_num)


%Task2
MyCell={"matlab" 2026 [ones(2)]}

first_cell=MyCell{1}
disp(first_cell)

%Task3

student=struct('name','Ali','age',21,'gpa',3.6);
if student.gpa>=3.5
    fprintf('Excellent student: %s\n',student.name)
else
        fprintf('Good student: %s\n',student.name)

end

%Task4

for i=1:5
   res=i*10;
    fprintf('%d ',res)
end
fprintf('\n')


%Task5

x=input('Enter a positive number: ');
while x<=0
    
   x=input('Invalid! Enter a positive number: ') ;
    
end

disp(x)


%Task6

color=input('Enter a color code (r, g, b): ','s');

switch color
    case 'r'
       chosencolor='Red' ;
    case 'b'
        chosencolor='Blue';
    case'g';
        chosencolor='Green';
    otherwise
            chosencolor='Unknown';
end

disp(chosencolor)


%Task7
x=0:0.1:2*pi;
y=sin(x);
figure;
plot(x , y,'r--','LineWidth',3)

title('Sine Wave')
xlabel('x')
ylabel('sin x')

%Task8

v=[20, 35, 45];
figure;
subplot(1,2,1)
bar(v)
title('bar chart')

subplot(1,2,2)
pie(v)
title('pie chart')


%Task9
x=1:5;
figure;
plot(x.^2,'b')
hold on 
plot(x.^3,'g')
legend('x squared','x cubed')







