%This function takes in two datasets (which must have the same number of
%columns), and reduces them down to a two-dimensional representation via
%Principal Component Analysis. It outputs the reduced datasets and
%generates a two-dimensional scatter plot.
function [dataset0_2d dataset1_2d] = visualize2d(dataset0,dataset1)

X = [dataset0; dataset1];
muX = mean(X);
sigmaX = cov(X);

[V D] = eig(sigmaX);

col = diag(D);
[elem, index] = maxk(col,2); % gets largest 2 values 

vi = V(:,index(1));
vj = V(:,index(2));

data_point0 = (dataset0 - muX);
data_point1 = (dataset1 - muX);
evec = [vi vj];
dataset0_2d = data_point0 * evec;
dataset1_2d = data_point1 * evec;

figure(4)
hold off
scatter(dataset0_2d(:,1),dataset0_2d(:,2),'b');
hold on
scatter(dataset1_2d(:,1),dataset0_2d(:,2),'r');


xlabel('z1')
ylabel('z2')