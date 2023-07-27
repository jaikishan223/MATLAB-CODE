% Parameters
N = 1000;  % Number of nodes
R = 1;     % Constant R
F = 1;     % Constant F
B = 1;     % Constant B

% Generate log2 ⟨𝑘⟩ values from -5 to 5
log2_k = -5:0.1:5;
k = 2.^log2_k;

% Solve the ODE for each ⟨𝑘⟩ value
x = zeros(size(k));
for i = 1:length(k)
    fun = @(t, x) (-B + sqrt(B^2 + 4*k(i)*R*F))/(2*k(i)*R);
    [t, sol] = ode45(fun, [0 1], 0);
    x(i) = sol(end);
end

% Plot the graph
plot(log2_k, x)
xlabel('log2 ⟨𝑘⟩')
ylabel('⟨𝑥⟩')
title('Relationship between ⟨𝑘⟩ and ⟨𝑥⟩')
grid on
