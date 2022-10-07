

D1 = [9e-3,39e-3,69e-3];
n1 = [1,4,7];

D2 = [6e-3,26e-3,47e-3];
n2 = [1,4,7];

D3 = [2.4e-3,29.8e-3,59.3e-3];
n3 = [1,10,20];

d_1 = zeros(1,length(D1));
d_2 = zeros(1,length(D2));
d_3 = zeros(1,length(D3));

for c = 1:length(D1)
    theta = theta_n(D1(c),C.L1);
    d_1(c) = d_theta(theta,n1(c));
end

for c = 1:length(D2)
    theta = theta_n(D2(c),C.L1);
    d_2(c) = d_theta(theta,n2(c));
end

for c = 1:length(D3)
    theta = theta_n(D3(c),C.L1);
    d_3(c) = d_theta(theta,n3(c));
end

