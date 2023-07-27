% Define the parameters
N = 1000;
R = 0.5;
B = 0.3;

% Define the differential equation
dydt = @(k, x) 1 - (B ./ (k * R));

% Solve the differential equation
k_values = 0:0.1:6;
x_values = 1 - (B ./ (k_values * R));

% Plot the results
plot(k_values, x_values, 'b', 'LineWidth', 2);
xlabel('\langlek\rangle');
ylabel('\langle x\rangle');
title('Epidemic Dynamics');
ylim([0 0.8]);
grid on;
