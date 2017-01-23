X = reshape([1:24],8,3);
idx = [1 1 3 3 4 4 2 2];
K =4;
[m n] = size(X);
centroids = zeros(K, n);
[p,q]=hist(idx,unique(idx));

for b = 1:K
  s = 0;
  indices = [];
  [ix,iy]=find(idx==b);
  indices = [indices;iy];
  for i = 1:length(indices)
    a = X(indices(i),:);
    s = s + a;
    ans = s/p(b);
    centroids(b,:) = ans;
    end
    end