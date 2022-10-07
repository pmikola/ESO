function [output] = I_theta(d)

%I_theta = @(theta) C.I_zero.*((((sin(pi*d*sin(theta))/C.lambda))^2)./(((pi*d*sin(theta))/C.lambda)^2));

I_theta = @(theta) C.I_zero.*( (sin(pi.*d.*sin(theta)./C.lambda)./((pi.*d.*sin(theta))./C.lambda))).^2;

output = I_theta;

end

