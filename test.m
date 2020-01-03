% generate legends

data = [0.91 0.3 0.65 0.79]
% the stacked trick
temp = 1:numel(data);
dia_data = diag(data);
H = bar(temp, dia_data); 
H(1).FaceColor = [0 1 0] ; % set the colour of one bar
H(2).FaceColor = [1 1 0] ; % set the colour of one bar
H(3).FaceColor = [0 0 1] ; % set the colour of one bar
l = cell(1,3);
l{1}='Less than 100cm';
l{2}='Less than 300cm';
l{3}='Maximum Distance';
legend(l)