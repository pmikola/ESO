
deltaL = zeros(1,length(C.n));
deltaT = zeros(1,length(C.n));
deltaF = zeros(1,length(C.n));

for c = 1:length(C.n)
    deltaL(c) = delta_L(C.n(c));
end

for c = 1:length(C.n)
    deltaT(c) = delta_T(C.n(c));
end

for c = 1:length(C.n)
    deltaF(c) = delta_f(C.n(c));
end
figure(1)
semilogy(C.t,deltaL)
hold on
semilogy(C.t,deltaT)
hold on
semilogy(C.t,deltaF)
hold on
grid on
ylabels{1}='deltaL [um]';
ylabels{2}='deltaT [deg]';
ylabels{3}='deltaf [GHz]';

plotyyy(C.t,deltaL,C.t,deltaT,C.t,deltaF,ylabels)
grid on