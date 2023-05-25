
mu1 = 0;    % Mean
sigma1 = 1; % Standard deviation

mu2 = 2;    % Mean
sigma2 = 0.5;% Standard deviation

mu3 = 2.5;
sigma3 = 0.75;

mu4 = 2.25;
sigma4 = 0.55;

mu5 = 2.75;
sigma5 = 0.85;

mu6 = 1.25;
sigma6 = 1.55;


% Define the x-axis range
x = -5:0.1:5;
figure(1)
xvals = superimpose_normal_distributions(x, mu1, sigma1, mu2, sigma2);

figure(2)
xvals1 = superimpose_normal_distributions(x, mu3, sigma3, mu4, sigma4);

figure(3)
xvals2 = superimpose_normal_distributions(x, mu5, sigma5, mu6, sigma6);


init=[xvals(1),xvals1(1),xvals2(1)];
init1=[xvals(2),xvals1(2),xvals2(2)];
disp(init);
disp(init1);

[child1,child2]=Geneticalgo(init,init1,0.4);
disp(child1)
disp(child2)
for i=1:100
[xvals,xvals1,xvals2]=generate_normal_distribution(child1,child2);
init=[xvals(1),xvals1(1),xvals2(1)];
init1=[xvals(2),xvals1(2),xvals2(2)];
[child1,child2]=Geneticalgo(init,init1,0.4);
end

