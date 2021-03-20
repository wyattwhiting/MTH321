function changes = rootfind(funhandle, a, b, n)
    % if interval is measure 0, don't do anything
    if a == b 
        fprintf("ERROR: interval has length 0")
        return
    end
    
    % make sure the ordering of interval is correct
    low = min(a, b);
    high = max(a, b);
    
    x = linspace(low, high, n);
    y = funhandle(x);
    changes = length(find(signchange(y)));
end

function w = signchange(v)
    w = [];
    for i = 1:(length(v) - 1)
        if v(i) > 0 && v(i + 1) < 0
            w = [w 1];
        
        elseif v(i) < 0 && v(i + 1) > 0
            w = [w 1];
        else
            w = [w 0];
        end
    end
end
