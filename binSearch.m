function L = binSearch( v,x )
% L is the index such that v(L) <= x < v(L+1);
% L=0 if x<v(1). If x>v(end), L=length(v) but x~=v(L).
% Maintain a search window [L..R] such that v(L)<=x<v(R).
% Since x may not be in v, initially set ...
L=0; R=length(v)+1;
% Keep halving [L..R] until R-L is 1,
always keeping v(L) <= x < v(R)
while R ~= L+1
% middle of search window
m= floor((L+R)/2);
if v(m) <= x
L= m;
else
R= m;
end
end
if L~=0 && v(L)==x
fprintf('Found %d at index %d\n', x, L)
else
fprintf('%d not found.\n', x)
end
end