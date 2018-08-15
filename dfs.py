adj_list = [[0,0,1,1,0], [0,0,0,0,1], [0,0,0,0,1],[0,1,0,0,0], [1, 1, 1, 1, 1]  ]


#Source node is 0, destination node is 5

dest = 4 #destination
path = [] #no elemenets on path

paths = [] #list of all paths


def find_paths_to_dest(path, node, adj_list, dest):
    global paths
    print("Exploring " + str(node))

    if node == dest:
        print(str(path) + str(dest))
        return path[:] + [dest]

    path.append(node)
    neighbours = find_neighbours(node, adj_list, path)
    for neighbour in neighbours:
        new_path = find_paths_to_dest(path, neighbour, adj_list, dest)
        if new_path != None:
            paths.append(new_path)



def find_neighbours(n, adj_list, path):

    #function that finds all the neighbours of n

    adj_row = adj_list[n]


    neighbours = []
    for i in range(len(adj_row)):
        if adj_row[i] == 1 and i != n and i not in path:
            neighbours.append(i)

    print("The neighbours of " + str(n)  + " are " + str(neighbours))

    return neighbours

find_paths_to_dest(path, 0, adj_list, dest)


print("LIST OF ALL PATHS")
print(paths)
