% generate figure, use with test.m
clear;
[num, txt, raw] = xlsread('distance_power.xlsx');
watt = num(1:end, 3);
dis = num(1:end, 5);

p = plot(watt, dis,'-.*b','LineWidth',2); %���ԣ���ɫ�����
set(gca,'fontname','times');
axis([0,0.8,0,400])  %ȷ��x����y���ͼ��С
% set(gca,'XTick',[0:1:6]) %x�᷶Χ1-6�����1
% set(gca,'YTick',[0:100:700]) %y�᷶Χ0-700�����100
% legend('Pixel 1');   %���ϽǱ�ע
% p(4).Color = [0.8500 0.3250 0.0980];
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);
xlabel('Attack Power (watt)')  %x����������
ylabel('Attack distance (cm)') %y����������
t = annotation('textbox');
sz = t.FontSize;
t.String = "Maximum to 670+ cm";
t.FontSize = 12;
t.Position = [0.5 0.8 0.1 0.1];
