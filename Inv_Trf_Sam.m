clc; clear all; close all;

lambda = 2;
z = rand(1024, 1);
y = - lambda ^ (-1) * log(1-z);
figure, histogram(y,'Normalization','probability')