function  p = gaussian_dist( x, mu, sig2 )
%GAUSSIAN_DIST Summary of this function goes here
%   Detailed explanation goes here

p = 1 / (2 * pi * sig2) ^ (1/2) * exp(-(x-mu).^2./(2*sig2));

end

