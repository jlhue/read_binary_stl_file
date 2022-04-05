function [tri, v, n] = read_binary_stl_file(filename)
%reads a binary file and gives out triangles, vertices and normals
%[t v n] = read_binary_stl_file('c:\users\sunil.bhandari\downloads\bb_with_um.stl');
%trisurf(double(t),v(:,1),v(:,2),v(:,3),'EdgeColor','red','FaceColor','green')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Author: Sunil Bhandari %%%%%%%%%%%%%%%%%%%%%%
%%%Date: 03/29/2017%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = fopen(filename,'r');
rd = fread(f,inf,'uint8=>uint8');
numTriangles = typecast(rd(81:84),'uint32');
sh = reshape(rd(85:end),50,numTriangles);
tt = reshape(typecast(reshape(sh(1:48,1:numTriangles),1,48*numTriangles),'single'),12,numTriangles)';
v = reshape(tt(:,4:12)',3,numTriangles * 3)';
n = tt(:,1:3);
tri = reshape(1:numTriangles * 3, 3,size(n,1))';
%
% vr = reshape(v',9,size(n,1))';
% vr = [vr(:,:),vr(:,1:3),ones(size(vr,1),1)*[NaN, NaN, NaN]];
% vr = reshape(vr',3,size(vr,1)*5)';
% plot3(vr(:,1),vr(:,2),vr(:,3))
end