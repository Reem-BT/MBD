

   speed=input('Enter cruising speed (km/h) > 50: ');

while   speed <=50;
      speed=input('"Invalid! Speed must be > 50. Try again:  ');

end
V_cruise=uint16(speed);

fprintf(' ACC Initialized. Cruising Speed set to %d ',V_cruise)


LiDAR_Grid=[10:10:40;zeros(1,4);12 8 14 6;ones(1,4)*50]

Center_ROI=LiDAR_Grid(2:3,2:3)


Calibrated_ROI=(Center_ROI.^2) ./10

F=[2 -1;-1 2];
d = [4;1];
det_F=det(F);
v=inv(F)*d
v_trans=v.'



margin= [2.5 2.5];

Safety_Block=repmat(margin,2,1)


ACC_CAN_Frame=horzcat(Calibrated_ROI,Safety_Block)

min_Calibrated_ROI=min(Calibrated_ROI(:))

function  status=assessThreat(distance);

if    distance<5
      status ='Critical';
elseif  distance >= 5 && distance <= 15
       status ='Warning';
else
       status ='safe';
end

end




