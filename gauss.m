function p = gauss(x, mu, sig2)

sig = sig2 ^ (1/2);
p = 1 / (2 * pi) * exp( - (x - mu)^2 / (2 * sig2) );

end