% Parameters
N = 1000;       % Number of nodes
R = 1;          % Constant R
B = 1;          % Constant B

% Generate a range of ⟨𝑘⟩ values
k_values = 12:-0.1:2;

% Initialize arrays for ⟨𝑥⟩ values
x_values_plus = zeros(size(k_values));
x_values_minus = zeros(size(k_values));

% Simulate the dynamical process for each ⟨𝑘⟩ value
for i = 1:length(k_values)
    k = k_values(i);
    
    % Calculate ⟨𝑥⟩ using the given equations
    x_plus = real(k * R + sqrt(k^2 * R^2 - 4 * B^2)) / (2 * B);
    x_minus = real(k * R - sqrt(k^2 * R^2 - 4 * B^2)) / (2 * B);
    
    x_values_plus(i) = x_plus;
    x_values_minus(i) = x_minus;
end

% Plot the results
plot(k_values, x_values_plus, 'o-', k_values, x_values_minus, 'o-')
xlabel('⟨𝑘⟩ (Average Degree)')
ylabel('⟨𝑥⟩ (Average Activity)')
title('Relationship between Average Degree and Average Activity')
legend('x = real(k * R + sqrt(k^2 * R^2 - 4 * B^2)) / (2 * B)', 'x = real(k * R - sqrt(k^2 * R^2 - 4 * B^2)) / (2 * B)')
grid on
