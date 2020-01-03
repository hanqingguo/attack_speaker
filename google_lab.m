[num, txt, raw] = xlsread('Google_Assistant_Response-lab.xlsx');

x=num(2:end, 1);
vol1 = num(2:end, 2);
vol2 = num(2:end, 3);
vol3 = num(2:end, 4);
env = ones(1,length(vol1))*42.5;

plot(x,vol1,'-*b',x,vol2,'-or', x,vol3, '-vg', x, env, ':k','LineWidth',2); %���ԣ���ɫ�����
axis([0,200,35,70])  %ȷ��x����y���ͼ��С
% set(gca,'XTick',[0:1:6]) %x�᷶Χ1-6�����1
% set(gca,'YTick',[0:100:700]) %y�᷶Χ0-700�����100
legend('Vol=1','Vol=2','Vol=3','Env');   %���ϽǱ�ע
xlabel('distance (cm)')  %x����������
ylabel('level (dBA)') %y����������
set(gca,'fontname','times');
set(gca,'FontSize',18);
set(gca,'linewidth',1.5);
