X = reshape([1:24],8,3);
K = 4
idx = [1 1 3 3 4 4 2 2];

[m n] = size(X);
centroids = zeros(K, n);
[p,q]=hist(idx,unique(idx));
s = 0;

for b = 1:K
indices = [];
[ix,iy]=find(idx==K);
indices = [indices;iy];
for i = 1:length(indices)
for j = 1:length(X)
a = X(indices(i),:);
s = s + a;
ans = s/p(b);
centroids(b,:) = s;
end
end
end