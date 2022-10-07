function [output] = d_theta(theta,n)

fun = (C.lambda./sin(theta)).*n;

output = fun;
end

