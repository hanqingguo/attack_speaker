clear;
[num, txt, raw] = xlsread('distance_power.xlsx');
dbm = num(1:end, 4);
dis = num(1:end, 5);
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
xlabel('Power (dbm)')  %xÖá×ø±êÃèÊö
ylabel('Distance£¨cm£©') %yÖá×ø±êÃèÊö
l = cell(1,3);
l{1}='Less than 100cm';
l{2}='Less than 200cm';
l{3}='Maximum Distance';
c = [b(1) b b];
legend(l)

