function [ y ] = x2y( x )
%XTOY Summary of this function goes here
%   Detailed explanation goes here

w = rand(size(x)) * 0.2;

y = x.^2 /2 + w;

end

