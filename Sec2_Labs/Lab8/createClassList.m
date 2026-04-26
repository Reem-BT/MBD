
%Task1

function classList=createClassList(varargin);
       studentsnum=nargin;

       classlist(1,studentsnum)=struct('Name',[],'Grade', []);
       
       for i=1:studentsnum
       classList(i).Name=varargin{i};
       classList(i).Grade=[];
       end
end



%  disp(createClassList('Alice', 'Bob', 'Charlie'));  
