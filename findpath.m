% developed by Abhishek Gannarapu (abhishek.gannarapu@wsu.edu) and Shyam
% Gopal
function [path_vec] = findpath(path_vec,node,z, dest)
    global path_cell;
    last_ele = node;
  
    if (last_ele == dest)
        %disp(path_vec);
        path_vec = cat(2,path_vec,dest); 
    else
        path_vec(end+1) = last_ele; % adds the last element to the generated path vector
        nei = tempstack(last_ele,z, path_vec);
        len = length(nei); %determine the number of neighbours and scan through each
        if (len > 0)
            for i = 1:len
                new_path = findpath(path_vec, nei(i), z, dest); %recursive loop to run thorugh each neighbour
            end
            if(new_path(end) == dest)
                path_cell = cat(2,path_cell,new_path);
            end
        else
            new_path = [];
        end
    end
end