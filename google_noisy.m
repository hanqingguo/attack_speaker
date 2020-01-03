[num, txt, raw] = xlsread('Google_Assistant_Response-noisy.xlsx');

x=num(2:end, 1);
vol1 = num(2:end, 2);
vol2 = num(2:end, 3);
vol3 = num(2:end, 4);
vol4 = num(2:end, 5);
vol5 = num(2:end, 6);
env = ones(1,length(vol1))*64.8;

p = plot(x,vol1,'-*b',x,vol2,'-or', x,vol3, '-vg',x,vol4,'-+y',x,vol5, '-pm', x, env, ':k','LineWidth',2); %线性，颜色，标记
% plot(x,vol1,'-*b',x,vol2,'-or', x,vol3, '-vg',x,vol4,'-+','color',[.5 .5 .5]')
axis([0,200,57,70])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:100:700]) %y轴范围0-700，间隔100
legend('Vol=1','Vol=2','Vol=3','Vol=4','Vol=5','Env');   %右上角标注
% p(4).Color = [0.8500 0.3250 0.0980];
xlabel('distance (cm)')  %x轴坐标描述
ylabel('level (dBA)') %y轴坐标描述
set(gca,'fontname','times');
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);
