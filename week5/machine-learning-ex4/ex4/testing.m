c = [1,2,3,4,5,6,7,8,9,10];
A = [10;5;1;2;3;4;6;7;8;9];
q = zeros(10,10);
for i = 1:10
if(ismember(A(i), c))
[ix,iy]=find(c==A(i));
q(i,iy) = 1;
end
end
q
