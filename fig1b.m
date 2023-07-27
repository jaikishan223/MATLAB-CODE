% Parameters
B = 1;         % Constant B
R = 1;         % Constant R
N = 1000;        % Number of nodes

% Generate random values for ⟨𝑘⟩ within the desired range
k_avg = rand(1, N) * 5;  % Random average degrees from 0 to 5

% Compute average activity ⟨𝑥⟩ based on the provided equation
x_avg = (-B + sqrt(B^2 + 4*k_avg*R)) ./ (2*R);

% Plot ⟨𝑥⟩ vs log2 ⟨𝑘⟩
figure;
plot(log2(k_avg), x_avg, 'o');
xlabel('log2 ⟨𝑘⟩');
ylabel('Average Activity ⟨𝑥⟩');
title('Figure 1(b) - Relationship between ⟨𝑘⟩ and ⟨𝑥⟩');
xlim([0, log2(5)]);  % Set x-axis limits to 0 and log2(5)
ylim([0, 6]);  % Set y-axis limits to 0 and 6
xticks([0, log2(2.5), log2(5)]);  % Set custom x-axis tick values
xticklabels({'0', '2.5', '5'});  % Set custom x-axis tick labels
yticks([0, 3, 6]);  % Set custom y-axis tick values
