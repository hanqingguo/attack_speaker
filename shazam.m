[num, txt, raw] = xlsread('shazam.xlsx');

x=num(2:end, 1);
vol1 = num(2:end, 2)/10;
vol2 = num(2:end, 3)/10;
vol3 = num(2:end, 4)/10;
vol4 = num(2:end, 5)/10;
vol5 = num(2:end, 6)/10;
% env = ones(1,length(vol1))*64.8;

p = plot(x,vol1,'-.*b',x,vol2,'--or', x,vol3, ':^g',x,vol4,'-+k',x,vol5, '-pm', 'LineWidth',2); %���ԣ���ɫ�����
set(gca,'fontname','times');
% plot(x,vol1,'-*b',x,vol2,'-or', x,vol3, '-vg',x,vol4,'-+','color',[.5 .5 .5]')
axis([0,40,-0.1,1.199])  %ȷ��x����y���ͼ��С
% set(gca,'XTick',[0:1:6]) %x�᷶Χ1-6�����1
% set(gca,'YTick',[0:100:700]) %y�᷶Χ0-700�����100
legend('Vol=1','Vol=2','Vol=3','Vol=4','Vol=5');   %���ϽǱ�ע
% p(4).Color = [0.8500 0.3250 0.0980];
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);
xlabel('Attack distance (cm)')  %x����������
ylabel('Recognition rate') %y����������