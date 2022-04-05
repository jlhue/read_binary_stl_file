# read_binary_stl_file
Reads STL files in very short time with MATLAB

Does not read color.
Reads binary file and returns triangle nodes as n*3 matrix , vertices as 3n*3 matrix and normals as n*3 matrix
Triangles can be plotted using trisurf or trimesh

    trisurf(tri,v(:,1),v(:,2),v(:,3),'EdgeColor','red','FaceColor','green')

## Cite As

Sunil Bhandari (2022). read_binary_stl_file(filename) (https://www.mathworks.com/matlabcentral/fileexchange/62345-read_binary_stl_file-filename), MATLAB Central File Exchange. Retrieved April 5, 2022.
