% Parameters
F = 1;           % Constant F
B = 0.5;         % Constant B
N = 3;           % Number of elements
A = rand(N);     % Random NxN matrix A
R = 0.2;         % Constant R

% Initial conditions
x0 = zeros(N, 1);  % Initial values of xi
t0 = 0;           % Initial time
tf = 10;          % Final time
dt = 0.01;        % Time step size

% Number of time steps
num_steps = round((tf - t0) / dt);

% Initialize arrays
x = zeros(N, num_steps+1);
t = zeros(num_steps+1, 1);

% Set initial conditions
x(:, 1) = x0;
t(1) = t0;

% Euler method
for i = 1:num_steps
    % Compute the derivative
    dx_dt = F - B*x(:, i) - sum(A.*R*x(:, i), 2);
    
    % Update x using Euler's method
    x(:, i+1) = x(:, i) + dt*dx_dt;
    
    % Update time
    t(i+1) = t(i) + dt;
end

% Plot the results
figure;
plot(t, x);
xlabel('t');
ylabel('x_i');
title('Graph of x_i versus t');
legend('x_1', 'x_2', 'x_3'); % Modify as per the number of elements N
