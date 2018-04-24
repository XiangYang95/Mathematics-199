%Read data in to a table to make it easy to sort rows
data = readtable('Data2017byCensus_allEstimated.xlsx');
 
%Select columns and format
origMat = cell2mat(table2cell(data(:,[32,33,34,28,29,30,31,2,3,22, 26])));
[n,m] = size(origMat);
 
%Normalize, get matrix of form normMat (n x m) H (n x k) and W(k x m)
normMat = tiedrank(origMat) / n;
 
 
%Varying k
for k = 2:3
 
    %NNMF algorithm in Matlab
    [w,h] = nnmf(normMat,k);

    %let y be the topic
    y = 1:k;

    %let x be the census tracts
    x = cell2mat(table2cell(data(:,1)));

    index = [];

    for i = y
        for j = 1:length(x)
            k = [i x(j)];
            index = [index;k];
        end
    end
    

    %let z be the weights which depends on the census tract and matrix
    %z = w(x,);
end
