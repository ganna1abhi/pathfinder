% developed by Abhishek Gannarapu (abhishek.gannarapu@wsu.edu) and Shyam
% Gopal
function path = tempstack(indx,z, path_vec) %finds all possible neighbours for a node 
%vec = 1; 
n = length(z); 
path = []; 
    for j = 1:n
        temp = find(path_vec == j); 
        
        if(z(indx,j) == 1 && size(temp,2) == 0 && j ~= indx) % removes itself and duplicate paths
            path(end+1) = j; 
            %vec = vec + 1; 
        end 
    end
end