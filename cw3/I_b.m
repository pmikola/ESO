function [output] = I_b(a,b,lambda)

fun = C.I_zero.*cos(2.*pi.*abs(b - a)./lambda);
output = fun;

end

