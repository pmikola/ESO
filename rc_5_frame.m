clear all
figure;
RC_5 = [0,1,0,1,1,0,1,0,1,0,0,1,0,1,1,0,1,0,1,0,0,1,1,0,0,1,1,0];
acquiring = true;

while acquiring
    xlim([0.5 28.5]);
    ylim([0 1]);
    b = bar(1:28,RC_5(end-27:end),'BarWidth',1);
    name = {'S1a';'S1b';...
        'S2a';'S2b';'Ta';'Tb';...
        'A4a';'A4b';'A3a';'A3b';'A2a';'A2b';'A1a';'A1b';'A0a';'A0b';...
        'K5a';'K5b';'K4a';'K4b';'K3a';'K3b';'K2a';'K2b';'K1a';'K1b';'K0a';'K0b'};
    set(gca,'xtick',[1:28],'xticklabel',name)
    title('Ramka fizyczna RC-5 dla danych z zadania');
    xlabel('Pozycja Bitu w ramce');
    ylabel('Stan Logiczny');
    drawnow;
    pause(.05);
end
