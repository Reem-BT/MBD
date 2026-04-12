%1
sensor_name='Thermal_Alpha';
sensor_id= int32(105.8);
RawData= [10 20 30 ; 40 50 60;70 80 90];
%2
ROI_Data=RawData(1:2,2:3)
%3
Calibrated_Data=(ROI_Data.^2)./10
%4
pad_val=[5,5];
PadMatrix=repmat(pad_val,2,1)
%5
TransmissionData=horzcat(Calibrated_Data,PadMatrix)
%TransmissionData=[Calibrated_Data ,PadMatrix]

%6
 A = [1 2; 2 2];
 b = [2; 6];

 inv(A)
 x=inv(A)*b
 trace(A)





