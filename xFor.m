function [ x_for ] = xFor( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x_for = 3 + x/2 + 20 * x ./ (x.^3 + 1) + log(x) + 6 * sin(x * (2*pi)/8);
x_for = real(x_for);

end

