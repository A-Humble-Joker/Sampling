clc; clear all; close all;

%% Generate samples using q(x) distribution
lambda = 2; mu = 0; sig2 = 1;
z = rand(1e5, 1);
x_q = - lambda ^ (-1) * log(1-z); % generate samples using q(x) distribution
figure, histogram(x_q,'Normalization','probability')

%% 
x_p_ref = normrnd(mu, sig2, size(z));
figure, histogram(x_p_ref,'Normalization','probability')
h = histogram(x_p_ref, 'Normalization', 'probability');
nbins = h.NumBins;

%% Apply the Importance Sampling
m = 3;
w = gaussian_dist(x_q, mu, sig2)./ exponential_dist(x_q, lambda); 
    % key here is to put generate sample to distribution density
x_p = randsample(x_q, length(x_q), true, w);

%% Plot
figure, histogram(x_p, nbins, 'Normalization', 'probability')
x = linspace(min(x_p), max(x_p), 1024);
p = gaussian_dist(x, mu, sig2);
% hold on, plot(x, p)
