% Define the range of x-values over which to plot the normal curve
x_min = 0;
x_max = 5;
x = x_min:0.1:x_max;

% Calculate the mean and standard deviation of the normal distribution based on the range
mu = (x_max + x_min) / 2; % mean is the middle of the range
sigma = (x_max - x_min) / 6; % standard deviation is 1/6 of the range

% Generate the PDF of the normal distribution using the calculated mean and standard deviation
pdf = normpdf(x, mu, sigma);

% Plot the PDF over the range of x-values
plot(x, pdf);
xlabel('x');
ylabel('Probability density');
title(sprintf('Normal distribution with mean=%.2f and std=%.2f', mu, sigma));
