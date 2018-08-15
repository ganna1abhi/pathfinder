function [path_vec] = findpath(path_vec,node,z, dest)
    global path_cell;
    last_ele = node;
   
    %path_vec = cat(2,path_vec,last_ele); 
    if (last_ele == dest)
        %disp(path_vec);
        path_vec = cat(2,path_vec,dest);
    else
        %node = node(1:length(node)-1); 
        path_vec(end+1) = last_ele;
        nei = tempstack(last_ele,z, path_vec);
        len = length(nei);
        if (len > 0)
            for i = 1:len
                new_path = findpath(path_vec, nei(i), z, dest);
            end
            if(new_path(end) == dest)
                path_cell = cat(2,path_cell,new_path);
            end
        else
            new_path = [];
        end
    end
end