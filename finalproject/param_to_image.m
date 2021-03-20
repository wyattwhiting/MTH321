function out = param_to_image(vec)
    % output the count_grid function
    % applied to every element from the 
    % result of complex_grid, which
    % each take arguments from the 'global'
    % argument vector 'vec'.
    out = arrayfun(@(z) count_grid(z, vec), complex_grid(vec));
end

% count_grid takes in a complex starting point and 
% returns an interation count
function out = count_grid(A, in)
    % set escape radius
    R = (1/2) * (1 + sqrt(1 + 4*abs(in(7))));
    
    % initialize iteration count
    iter = 0;
    
    % loop while magnitude is within critical radius and
    % maximum iteration count has not been met
    while abs(A) < R && iter < abs(in(8))
        % apply iteration and increment count
        A = A^(in(9)) + in(7);
        iter = iter + 1;
    end
    % after loop terminates, return the number of iterations
    out = iter;
end

% complex_grid returns a matrix of complex values
% with bounds specified by the argument vector 'in'
function out = complex_grid(in)
    % linear space of strictly real values
    x = complex(linspace(in(1), in(2), in(3)));
    % linear space of strictly imaginary values
    y = complex(0,linspace(in(4), in(5), in(6)));
    % create mesgrid of both linear spaces
    [x, y] = meshgrid(x, y);
    % sum ends up being the spaving we want for evenly
    % placed points in the complex plane
    out = x + y;
end