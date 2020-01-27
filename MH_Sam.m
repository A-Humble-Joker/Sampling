clc; clear all; close all;
n = 100000; mu = 0; sig = 1;

% initialize
x = zeros(5000, 1); 

%sampling
for i = 2:5000
    
    x_candi = normrnd(x(i-1), sig);
    alpha = min(1, (gauss(x_candi, mu, sig^2)) / (gauss(x(i-1), mu, sig^2)));
    
    if alpha < rand
        x(i) = x(i-1);
    else
        x(i) = x_candi;
    end
    
end

figure, hist(x)
