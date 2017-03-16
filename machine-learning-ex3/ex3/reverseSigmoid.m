function z = reverseSigmoid(g, N)
%Compute the inverse function of the sigmoid
%if input > 1 or < 0, output some very positive or very negative number +/- N
%N should probably be within an order of magnitude of the matrix norm of Theta

if ~exist('N', 'var') || isempty(N) 
	N = 50;
end

if (g < 1) && (g > 0)
    z = log(1 / ((1/g)-1));
elseif (g>0.5)
    z = N;
else
    z = -N;
end