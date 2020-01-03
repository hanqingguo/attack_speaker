% generate figure, use with test.m
clear;
[num, txt, raw] = xlsread('distance_power.xlsx');
dbm = num(1:end, 4);
dis = num(1:end, 5);
watt = num(1:end, 3);
re_dbm = diag(dbm);
b = bar(dbm, dis, 'FaceColor','flat');
%set(gca, 'YScale', 'log')
for k = 1:size(dbm,1)
    if(k>14)
      b.CData(k,:)=[0 0 1];
    elseif(k>7)
      b.CData(k,:)=[1 1 0];
    else
      b.CData(k,:)=[0 1 0];  
    end        
end
axis([17,33,0,700]) 
xlabel('Power (dbm)')  %xÖá×ø±êÃèÊö
ylabel('Distance£¨cm£©') %yÖá×ø±êÃèÊö
hold on 
hBB=bar(nan(2,3));                % now create the dummy four bar handles
hBB(1).FaceColor=[0 1 0];         % FaceColor is normalized 0, 1 instead of rgb -- red
hBB(2).FaceColor=[1 1 0];         % green
hBB(3).FaceColor=[0 0 1];         % blue
hLG=legend(hBB,'Less than 100cm','Less than 300cm','Maximum to 670cm','location','northwest');   % write legend for the colored bars
