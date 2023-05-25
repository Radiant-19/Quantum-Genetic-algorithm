function xvals = superimpose_normal_distributions(x, mu1, sigma1, mu2, sigma2)
% Computes the superposition of two normal distributions given their means and standard deviations

% Compute the two normal distributions
y1 = normpdf(x, mu1, sigma1);
y2 = normpdf(x, mu2, sigma2);
% Compute the superposition of the two normal distributions
y = y1 + y2;

% Compute the corresponding CDF
cdf = cumsum(y) * 0.1; % Multiply by the step size of x (0.1) to convert from PDF to CDF
% Plot the CDF
plot(x, cdf, 'g-');
xlabel('y');
ylabel('CDF');
xmax=max(cdf);
xmin=max(cdf);
title('Resultant CDF of Two Normal Curves');
desired_cdfs = xmin+ rand(1,2).*xmax ;
xvals = zeros(size(desired_cdfs));
for i = 1:length(desired_cdfs)
    [~, index] = min(abs(cdf - desired_cdfs(i)));
    xvals(i) = x(index);
    fprintf('x value corresponding to CDF gene %f: %f\n', desired_cdfs(i), xvals(i));
end    

end
