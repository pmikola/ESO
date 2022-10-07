clear all
figure;
acquiring = true;
UART = [0,0,0,0,0,1,0,1,1,1]
while acquiring
    xlim([0.5 10.5]);
    ylim([0 1.5]);
    b = bar(1:10,UART(end-9:end),'BarWidth',1,'FaceColor','flat');
    b.CData(6,:) = [0 0.8 0.8];
    b.CData(8,:) = [0.5 0.3 0.4];
    b.CData(9,:) = [1 0.2 0.2];
    b.CData(10,:) = [1 0.2 0.2];
    name = {'ST1';'D0';'D1';'D2';'D3';'D4';'D5';'C';'SP1';'SP2'};
    set(gca,'xticklabel',name)
    title('Ramka UART ze znakiem "P"');
    xlabel('Pozycja Bitu w ramce');
    ylabel('Stan Logiczny');
    drawnow;
    pause(.05);
end
