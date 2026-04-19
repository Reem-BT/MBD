

N=input('Enter number of battery modules (must be > 2): ')

while N<=2
    disp('Invalid! Try again: ');
    N=input('Enter number of battery modules (must be > 2): ')

end

Volt_Matrix=zeros(N);
 
 
Volt_Matrix(logical(eye(N))) = 3.7;
chem_type=input(' battery chemistry ','s');
fprintf('BMS Initialized for %s chemistry.\n ', chem_type);
disp('Volt_Matrix is:');
disp(Volt_Matrix);


Critical_Cells=Volt_Matrix(end-1:end,end-1:end)

Norm_Power=(Critical_Cells.^2)./4.2


status_flag=[0 1];
Flag_Matrix=repmat(status_flag,2,1)


CAN_Packet=horzcat(Norm_Power,Flag_Matrix)

I_mat = [5 2; 2 4];
V_vec = [14; 12];
det_I_mat=det(I_mat);

if det_I_mat~=0
    
    R_vec=inv(I_mat)*V_vec
end
 
trace_I_mat=trace(I_mat)

fprintf( 'The trace of the current matrix is %d\n',trace_I_mat)

returned_mood = setBMSMode('Charge');
final_output = [returned_mood, ' Mode'];
disp(final_output);

function mood=setBMSMode( vehiclesState)
switch  vehiclesState
    case'Drive'
        mood='Active Discharging';
    case'Charge'
        mood='Active Balancing';
        
    otherwise
        mood='Standby';
end
end


