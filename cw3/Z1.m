d1 = 50e-6; %[um]
d2 = 200e-6; %[um]
d3 = 100e-6;  %[um]
Itheta1 = I_theta(d1);
Itheta2 = I_theta(d2);
Itheta3 = I_theta(d3);
lim1 = 5e-2;
lim2 = 0;
precision = 1e-6;
figure(1)
plot(-lim2:precision:lim1,Itheta1(-lim2:precision:lim1))
hold on
plot(-lim2:precision:lim1,Itheta2(-lim2:precision:lim1))
hold on
plot(-lim2:precision:lim1,Itheta3(-lim2:precision:lim1))
grid on

figure(2)
semilogy(-lim2:precision:lim1,Itheta1(-lim2:precision:lim1))
hold on
semilogy(-lim2:precision:lim1,Itheta2(-lim2:precision:lim1))
hold on
semilogy(-lim2:precision:lim1,Itheta3(-lim2:precision:lim1))
grid on