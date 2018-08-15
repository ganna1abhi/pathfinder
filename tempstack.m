function path = tempstack(indx,z, path_vec)
%vec = 1; 
n = length(z); 
path = []; 
    for j = 1:n
        temp = find(path_vec == j); 
        
        if(z(indx,j) == 1 && size(temp,2) == 0 && j ~= indx)
            path(end+1) = j; 
            %vec = vec + 1; 
        end 
    end
end