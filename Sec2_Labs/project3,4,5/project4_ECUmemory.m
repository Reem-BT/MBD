

vehicle_speed=single(120.5);
gear_state=uint8(4);


TempBuffer=zeros(4)
buffer_capacity=numel(TempBuffer)

whos

Temp_Calc=[100 200; 300 400];
 
clear Temp_Calc
clc


default_padding = uint8([255 255]);

CAN_Memory_Block=repmat(default_padding,3,2)











