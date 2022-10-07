%close all

%figure

for i = 1:length(POMIAR80011T)
    V(i) = POMIAR80011T(i,1);
    I(i) = POMIAR80011T(i,2); 
    p(i) = V(i).*I(i);
end

Isc(1) = max(I);
[Pmax(1),max_ind] = max(p);
Voc(1) = max(V);
Vm(1) = V(max_ind);
Im(1) = I(max_ind);
p1 = p;
FF(1) = (Vm(1).*Im(1))./(Isc(1).*Voc(1));
eta1 = p./Pmax(1);

plot(V,I,'r')
%plot(V,p,'r')
hold on
clear V I p max_ind

for i = 1:length(POMIAR80012T)
    V(i) = POMIAR80012T(i,1);
    I(i) = POMIAR80012T(i,2);
    p(i) = V(i).*I(i);
end

Isc(2) = max(I);
[Pmax(2),max_ind] = max(p);
Voc(2) = max(V);
Vm(2) = V(max_ind);
Im(2) = I(max_ind);
p2 = p;
FF(2) = (Vm(2).*Im(2))./(Isc(2).*Voc(2));
eta2 = abs(p./Pmax(2)./p);

plot(V,I,'g')
%plot(V,p,'g')
hold on
clear V I p max_ind

for i = 1:length(POMIAR80013T)
    V(i) = POMIAR80013T(i,1);
    I(i) = POMIAR80013T(i,2);
    p(i) = V(i).*I(i);
end

Isc(3) = max(I);
[Pmax(3),max_ind] = max(p);
Voc(3) = max(V);
Vm(3) = V(max_ind);
Im(3) = I(max_ind);
p3 = p;
FF(3) = (Vm(3).*Im(3))./(Isc(3).*Voc(3));
eta3 = abs(p./Pmax(3));

plot(V,I,'b')
%plot(V,p,'b')
hold on
clear V I p max_ind

for i = 1:length(POMIAR80014T)
    V(i) = POMIAR80014T(i,1);
    I(i) = POMIAR80014T(i,2);
    p(i) = V(i).*I(i);
end

Isc(4) = max(I);
[Pmax(4),max_ind] = max(p);
Voc(4) = max(V);
Vm(4) = V(max_ind);
Im(4) = I(max_ind);

FF(4) = (Vm(4).*Im(4))./(Isc(4).*Voc(4));
eta4 = abs(p./Pmax(4));
p4 = p;
plot(V,I,'--r')
%plot(V,p,'--r')
hold on
clear V I p max_ind

for i = 1:length(POMIAR80015T)
    V(i) = POMIAR80015T(i,1);
    I(i) = POMIAR80015T(i,2);
    p(i) = V(i).*I(i);
  
end

Isc(5) = max(I);
[Pmax(5),max_ind] = max(p);
Voc(5) = max(V);
Vm(5) = V(max_ind);
Im(5) = I(max_ind);
p5 = p;
FF(5) = (Vm(5).*Im(5))./(Isc(5).*Voc(5));
eta5 = abs(p./Pmax(5));

plot(V,I,'--g')
%plot(V,p,'--g')
hold on
clear V I p max_ind

for i = 1:length(POMIAR80016T)
    V(i) = POMIAR80016T(i,1);
    I(i) = POMIAR80016T(i,2);
    p(i) = V(i).*I(i);
end

Isc(6) = max(I);
[Pmax(6),max_ind] = max(p);
Voc(6) = max(V);
Vm(6) = V(max_ind);
Im(6) = I(max_ind);
p6 = p;
FF(6) = (Vm(6).*Im(6))./(Isc(6).*Voc(6));
eta6 = abs(p./Pmax(6));

plot(V,I,'--b')
%plot(V,p,'--b')
hold on
grid on
clear V I p max_ind

T_var = [25.2,30.2,35.2,40.1,45.1,50.1]

legend('25.2 [ °C ]','30.2 [ °C ]','35.2 [ °C ]','40.1 [ °C ]','45.1 [ °C ]','50.1 [ °C ]')
%legend('795 [ W / m2 ]')


eta1m = mean(eta1);
eta2m = mean(eta2);
eta3m = mean(eta3);
eta4m = mean(eta4);
eta5m = mean(eta5);
eta6m = mean(eta6);
power_g = [mean(p1),mean(p2),mean(p3),mean(p4),mean(p5),mean(p6)];
eta = [eta1m eta2m eta3m eta4m eta5m eta6m];
hold on