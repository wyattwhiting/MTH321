function [maxVal, index] = mymax(colVec)
    index = 1;
    for i = 1:length(colVec)
        if colVec(i, 1) > colVec(index, 1)
            index = i;
        end
    end
    
    maxVal = colVec(index, 1);
end

