
clear;
clc;
%----------read data
fileName = 'voltage_current_data.xlsx';
data = readtable(fileName);

voltage = data.Voltage;
current = data.Current;

disp(table(voltage, current));


empty_voltage = isnan(voltage);
empty_current = isnan(current);
missing_values = empty_voltage | empty_current;


missing_voltage = voltage(missing_values);
missing_current = current(missing_values);


voltage_clean = voltage(~missing_values);
current_clean = current(~missing_values);


[voltage_clean, sortIdx] = sort(voltage_clean);
current_clean = current_clean(sortIdx);


voltage_interp = -17.3:0.1:0.9;
current_interp = interp1(voltage_clean, current_clean, voltage_interp, 'linear');
 


figure
hold on;

plot(voltage_clean, current_clean, 'bo')

plot(voltage_interp, current_interp, 'r-')

xlabel('Voltage (V)');
ylabel('Current (A)');
title('Voltage vs Current: Original and Interpolated Data');
legend('show', 'Location', 'best');
grid on;
hold off;


interpFileName = 'interpolated_data.txt';
interpolated_data = [voltage_interp', current_interp'];
save(interpFileName, 'interpolated_data', '-ascii', '-tabs');
fprintf('Interpolated data saved to "%s".\n', interpFileName);

missingFileName = 'missing_data.txt';
missing_data = [missing_voltage, missing_current];
save(missingFileName, 'missing_data', '-ascii', '-tabs');
fprintf('Missing data saved to "%s".\n', missingFileName);



