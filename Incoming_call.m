% [num, txt, raw] = xlsread('Incoming_Phone_Call_Decible_level_noisy.xlsx');
[num, txt, raw] = xlsread('Incoming_Phone_Call_Decible_level_noisy.xlsx');

x=num(2:end, 1);
vol1 = num(2:end, 2);
vol2 = num(2:end, 3);
vol3 = num(2:end, 4);
vol4 = num(2:end, 5);
vol5 = num(2:end, 6);
vol6 = num(2:end, 7);
env = ones(1,length(vol1))*64.8;
%env = ones(1,length(vol1))*42.5;

plot(x,vol1,'-.*b',x,vol2,'--or', x,vol3, ':^g',x,vol4, '-+y',x,vol5, '-pm', x, env, ':k','LineWidth',2); %线性，颜色，标记
axis([0,40,56.5,66])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:100:700]) %y轴范围0-700，间隔100
legend('Vol=1','Vol=2','Vol=3','Vol=4','Vol=5','Env');   %右上角标注
xlabel('distance (cm)')  %x轴坐标描述
ylabel('level (dBA)') %y轴坐标描述
set(gca,'fontname','times');
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);