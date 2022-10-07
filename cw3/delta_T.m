function [output] = delta_T(n)

deltaT = n.*(C.lambda./(2.*C.L2.*C.alfa));

output = deltaT;

end

