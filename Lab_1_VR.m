
%V_R
POMIAR25T12 = table2array(p2POMIAR25T1);
POMIAR25T13 = table2array(p3POMIAR25T1);
POMIAR25T14 = table2array(p4POMIAR25T1);
POMIAR25T15 = table2array(p5POMIAR25T1);
POMIAR25T16 = table2array(p6POMIAR25T1);
POMIAR25T17 = table2array(p7POMIAR25T1);
POMIAR25T18 = table2array(p8POMIAR25T1);
POMIAR25T19 = table2array(p9POMIAR25T1);
POMIAR25T110 = table2array(p10POMIAR25T1);
POMIAR25T111 = table2array(p11POMIAR25T1);
POMIAR25T112 = table2array(p12POMIAR25T1);
p_POMIAR25T1 = table2array(p_POMIAR25T);


%close all
%figure
for i = 1:length(p_POMIAR25T1)
    V(i) = p_POMIAR25T1(i,1);
    I(i) = p_POMIAR25T1(i,2);
    p(i) = V(i).*I(i);
    
end


Isc(1) = max(I);
[Pmax(1),max_ind] = max(p);
Voc(1) = max(V);
Vm(1) = V(max_ind);
Im(1) = I(max_ind);
eta1 = abs(p./Pmax(1));
FF(1) = (Vm(1).*Im(1))./(Isc(1).*Voc(1));
p1 = p;

plot(V,I,'r')
%plot(V,p,'r')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T12)
    V(i) = POMIAR25T12(i,1);
    I(i) = POMIAR25T12(i,2);
    p(i) = V(i).*I(i);
end

Isc(2) = max(I);
[Pmax(2),max_ind] = max(p);
Voc(2) = max(V);
Vm(2) = V(max_ind);
Im(2) = I(max_ind);

FF(2) = (Vm(2).*Im(2))./(Isc(2).*Voc(2));
p2 = p;
eta2 = abs(p./Pmax(2));
plot(V,I,'g')
%plot(V,p,'g')
hold on
clear V I p max_ind


for i = 1:length(POMIAR25T13)
    V(i) = POMIAR25T13(i,1);
    I(i) = POMIAR25T13(i,2);
    p(i) = V(i).*I(i);
end

Isc(3) = max(I);
[Pmax(3),max_ind] = max(p);
Voc(3) = max(V);
Vm(3) = V(max_ind);
Im(3) = I(max_ind);

FF(3) = (Vm(3).*Im(3))./(Isc(3).*Voc(3));
p3 = p;
eta3 = abs(p./Pmax(3));
plot(V,I,'b')
%plot(V,p,'b')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T14)
    V(i) = POMIAR25T14(i,1);
    I(i) = POMIAR25T14(i,2);
    p(i) = V(i).*I(i);
end

Isc(4) = max(I);
[Pmax(4),max_ind] = max(p);
Voc(4) = max(V);
Vm(4) = V(max_ind);
Im(4) = I(max_ind);

FF(4) = (Vm(4).*Im(4))./(Isc(4).*Voc(4));
p4 = p;
eta4 = abs(p./Pmax(4));
plot(V,I,'c')
%plot(V,p,'c')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T15)
    V(i) = POMIAR25T15(i,1);
    I(i) = POMIAR25T15(i,2);
    p(i) = V(i).*I(i);
end

Isc(5) = max(I);
[Pmax(5),max_ind] = max(p);
Voc(5) = max(V);
Vm(5) = V(max_ind);
Im(5) = I(max_ind);

FF(5) = (Vm(5).*Im(5))./(Isc(5).*Voc(5));
p5 = p;
eta5 = abs(p./Pmax(5));
plot(V,I,'c')
%plot(V,p,'c')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T16)
    V(i) = POMIAR25T16(i,1);
    I(i) = POMIAR25T16(i,2);
    p(i) = V(i).*I(i);
end

Isc(6) = max(I);
[Pmax(6),max_ind] = max(p);
Voc(6) = max(V);
Vm(6) = V(max_ind);
Im(6) = I(max_ind);

FF(6) = (Vm(6).*Im(6))./(Isc(6).*Voc(6));
p6 = p;
eta6 = abs(p./Pmax(6));
plot(V,I,'m')
%plot(V,p,'m')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T17)
    V(i) = POMIAR25T17(i,1);
    I(i) = POMIAR25T17(i,2);
    p(i) = V(i).*I(i);
end

Isc(7) = max(I);
[Pmax(7),max_ind] = max(p);
Voc(7) = max(V);
Vm(7) = V(max_ind);
Im(7) = I(max_ind);

FF(7) = (Vm(7).*Im(7))./(Isc(7).*Voc(7));
p7 = p;
eta7 = abs(p./Pmax(7));
plot(V,I,'--r')
%plot(V,p,'--r')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T18)
    V(i) = POMIAR25T18(i,1);
    I(i) = POMIAR25T18(i,2);
    p(i) = V(i).*I(i);
end

Isc(8) = max(I);
[Pmax(8),max_ind] = max(p);
Voc(8) = max(V);
Vm(8) = V(max_ind);
Im(8) = I(max_ind);
p8 = p;
FF(8) = (Vm(8).*Im(8))./(Isc(8).*Voc(8));

eta8 = abs(p./Pmax(8));
plot(V,I,'--g')
%plot(V,p,'--g')
hold on
clear V I p max_ind


for i = 1:length(POMIAR25T19)
    V(i) = POMIAR25T19(i,1);
    I(i) = POMIAR25T19(i,2);
    p(i) = V(i).*I(i);
end

Isc(9) = max(I);
[Pmax(9),max_ind] = max(p);
Voc(9) = max(V);
Vm(9) = V(max_ind);
Im(9) = I(max_ind);

FF(9) = (Vm(9).*Im(9))./(Isc(9).*Voc(9));
p9 = p;
eta9 = abs(p./Pmax(9));
plot(V,I,'--b')
%plot(V,p,'--b')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T110)
    V(i) = POMIAR25T110(i,1);
    I(i) = POMIAR25T110(i,2);
    p(i) = V(i).*I(i);
end

Isc(10) = max(I);
[Pmax(10),max_ind] = max(p);
Voc(10) = max(V);
Vm(10) = V(max_ind);
Im(10) = I(max_ind);

p10 = p;
eta10 = abs(p./Pmax(10));
plot(V,I,'--c')
%plot(V,p,'--c')
hold on
clear V I p max_ind


for i = 1:length(POMIAR25T111)
    V(i) = POMIAR25T111(i,1);
    I(i) = POMIAR25T111(i,2);
    p(i) = V(i).*I(i);
end

Isc(11) = max(I);
[Pmax(11),max_ind] = max(p);
Voc(11) = max(V);
Vm(11) = V(max_ind);
Im(11) = I(max_ind);

FF(11) = (Vm(11).*Im(11))./(Isc(11).*Voc(11));
p11 = p;
eta11 = abs(p./Pmax(11));
plot(V,I,'--m')
%plot(V,p,'--m')
hold on
clear V I p max_ind

for i = 1:length(POMIAR25T112)
    V(i) = POMIAR25T112(i,1);
    I(i) = POMIAR25T112(i,2);
    p(i) = V(i).*I(i);
end

Isc(12) = max(I);
[Pmax(12),max_ind] = max(p);
Voc(12) = max(V);
Vm(12) = V(max_ind);
Im(12) = I(max_ind);
p12 = p;
FF(12) = (Vm(12).*Im(12))./(Isc(12).*Voc(12));

eta12 = abs(p./Pmax(12));
plot(V,I,'--y')
%plot(V,p,'--y')
hold on
grid on
clear V I p max_ind
legend('500.1 [W/m2]','548.7 [W/m2]','605.2 [W/m2]','652.9 [W/m2]','699.5 [W/m2]','746.2 [W/m2]','802.1 [W/m2]','848.5 [W/m2]','904.3 [W/m2]','954.4 [W/m2]','1000.3 [W/m2]','1048.3 [W/m2]')
Ir_var = [500.1,548.7,605.2,652.9,699.5,746.2,802.1,848.5,904.3,954.4,1000.3,1048.3];
T_const = 25;

eta1m = mean(eta1);
eta2m = mean(eta2);
eta3m = mean(eta3);
eta4m = mean(eta4);
eta5m = mean(eta5);
eta6m = mean(eta6);
eta7m = mean(eta7);
eta8m = mean(eta8);
eta9m = mean(eta9);
eta10m = mean(eta10);
eta11m = mean(eta11);
eta12m = mean(eta12);
eta = [eta1m eta2m eta3m eta4m eta5m eta6m eta7m eta8m eta9m eta10m eta11m eta12m];
hold on