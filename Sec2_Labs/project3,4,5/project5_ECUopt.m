
clc

throttle_pos=single(85.5);
gear_status=uint8(5);
whos gear_status throttle_pos


LiDAR_Buffer=uint8(zeros(10,10,3));

whos LiDAR_Buffer

tic ;
dyn_array=[];
for  i=1:10000;
    dyn_array(i)= i;
end
toc
disp(toc);

tic ;
stat_array=zeros(1,10000);
for  i=1:10000;
    stat_array(i)= i;
end
toc
disp(toc);



Temp_Filter=randn(1000,1000);
clear Temp_Filter
clear persistent

pad_seq=uint8([255;255]);
Padding_Block=repmat(pad_seq,1,2);

ze=uint8(zeros(2));
CAN_Payload=horzcat(ze,Padding_Block)



