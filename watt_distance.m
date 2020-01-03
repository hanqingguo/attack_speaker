% generate figure, use with test.m
clear;
[num, txt, raw] = xlsread('distance_power.xlsx');
watt = num(1:end, 3);
dis = num(1:end, 5);

p = plot(watt, dis,'-.*b','LineWidth',2); %线性，颜色，标记
set(gca,'fontname','times');
axis([0,0.8,0,400])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:100:700]) %y轴范围0-700，间隔100
% legend('Pixel 1');   %右上角标注
% p(4).Color = [0.8500 0.3250 0.0980];
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);
xlabel('Attack Power (watt)')  %x轴坐标描述
ylabel('Attack distance (cm)') %y轴坐标描述
t = annotation('textbox');
sz = t.FontSize;
t.String = "Maximum to 670+ cm";
t.FontSize = 12;
t.Position = [0.5 0.8 0.1 0.1];
