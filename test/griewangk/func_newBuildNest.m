function [ nestPop ] = func_newBuildNest( nestPop ,Pa ,Xmax,Xmin)
%FUNC_NEWBUILDNEST new solutions are generated by using the similarity 
% between the existing eggs/solutions and the host eggs/solutions with a discovery rate pa .
%@author zhaoyuqiang
[N,D] = size(nestPop) ;
nestPop = nestPop+rand.*heaviside(rand(N,D)-Pa).*(nestPop(randperm(N),:)-nestPop(randperm(N),:));
% Deal with bounds
nestPop(find(nestPop>Xmax)) = Xmax ; %#ok<*FNDSB>
nestPop(find(nestPop<Xmin)) = Xmin ;
end
