%load('ex7data2.mat');
%initial_centroids = [3 3; 6 2; 8 5];
X = reshape(sin(1:50), 10, 5);
initial_centroids = X(7:10,:);
K = size(initial_centroids, 1);
idx = zeros(size(X,1), 1);
m = length(X);
distance = [];
for i = 1:m
for j = 1:K
z = X(i,:) - initial_centroids(j,:);
q = z.^2;
w = sum(q);
s = sqrt(w);
distance = [distance;s];
end
[value index] = min(distance);
idx(i) = index;
distance = [];
end 