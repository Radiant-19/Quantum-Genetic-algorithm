function [xvals,xvals1,xvals2]=generate_normal_distribution(arr,arr1)
% arr: input array

n = length(arr);
k = 4;
for i = 1:n
    x= max(arr(i)-5,-5):0.5:arr(i);
    x_min = max(arr(i)-5,-5);
    x_max= arr(i);
    mu = (x_max + x_min) / 2; % mean is the middle of the range
    sigma = (x_max - x_min) / 6; % standard deviation is 1/6 of the range
    x_min1 = max(arr1(i)-5,-5);
    x_max1= arr1(i);
    mu1 = (x_max1 + x_min1) / 2; % mean is the middle of the range
    sigma1 = (x_max1 - x_min1) / 6; % standard deviation is 1/6 of the range
    figure(k)
    if i==1
        xvals=superimpose_normal_distributions(x,mu,sigma,mu1,sigma1);
    elseif i==2
        xvals1=superimpose_normal_distributions(x,mu,sigma,mu1,sigma1);
    else
         xvals2=superimpose_normal_distributions(x,mu,sigma,mu1,sigma1);
    end     
    k=k+1;
    
end

end