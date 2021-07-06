%init
tempcolormap = [0 0 0; colormap( distinguishable_colors(6, [1 1 1])) ];
tempcolormap = [0 0 0; colormap( distinguishable_colors(359, [1 1 1])) ];
% tempcolormap = [0 0 0; colormap( colorcube(8)) ];
% tempcolormap = [0 0 0; colormap( jet(255)) ];
addpath('libsvm-3.17');
addpath('libsvm-3.17\matlab');
addpath('matlabhyperspec');

% tempcolormap = 1.1*tempcolormap;
% tempcolormap(tempcolormap > 1) = 1;
% GT_Kirp = strel('disk',3);    
colmap = tempcolormap;
colmap(1,:) = [ 0, 0, 0];
% colmap(9,:) = [1.00000000000      0.82745098039      0.00000000000];
% colmap(35,:) = [1.00000000000      0.14901960784      0.14901960784];
% colmap(2,:) = [ 0.64705882353      0.43921568628      0.00000000000];
% colmap(255,:) = [ 1, 1, 1];
% colmap(4,:) = [ 255, 0, 0];
% colmap(5,:) = [ 255, 0, 0];
colmap(2,:) = [ 255, 165, 0]/255;%QGIS
colmap(9,:) = [153, 255, 51]/255;
colmap(9,:) = [0, 211, 0]/255; %QGIS
colmap(11,:) = [0, 211, 0]/255; %QGIS
colmap(35,:) = [153, 204, 255]/255;
colmap(35,:) = [135, 163, 209]/255;%QGIS
colmap(45,:) = [169, 35, 174]/255;
% colmap(100,:) = [0, 0, 0];
% colmap(2,:) = [ 255, 153, 1];
% colmap(5,:) = [ 255, 153, 1];
% colmap(255,:) = [ 255, 255, 255];
% colmap = double(colmap)/255;
tempcolormap(35,:) = colmap(35,:);
% tempcolormap(100,:) = colmap(100,:);
tempcolormap(10,:) = colmap(10,:);
tempcolormap(2,:) = colmap(2,:);
tempcolormap(5,:) = colmap(5,:);
Signs (1) = '+';
Signs (4) = 'x';
Signs (8) = 'o';
Signs (8) = '*';
Signs (34) = 'd';
Signs (44) = 's';
Signs (151) = '.';
CropWindows(1, :) = [ 110 180];
CropWindows(8, :) = [ 130 200];
CropWindows(34, :) = [ 160 260];
CropWindows(44, :) = [ 180 260];

%USDA
% colmap(255,:) = [ 1, 1, 1];
% colmap(2,:) = [ 0.64705882353,      0.43921568628,      0.00000000000];
% colmap(5,:) = [ 0.88627450980,      0.00000000000,      0.48627450980];
% colmap(9,:) = [ 0.00000000000,      0.82745098039,      0.00000000000];
% colmap(11,:) = [ 0.00000000000,      0.82745098039,      0.00000000000];
% colmap(21,:) = [ 0.00000000000,      0.68627450980,      0.29803921569];
% colmap(23,:) = [ 0.00000000000,      0.86666666667,      0.68627450980];
% colmap(35,:) = [0.5333,    0.6431,    0.8196]; %[ 1.00000000000,      0.14901960784,      0.14901960784];
% colmap(45,:) = [ 0.14901960784,      0.43921568628,      0.00000000000];
% colmap(52,:) = [ 1.00000000000      0.64705882353      0.88627450980];
% colmap(100,:) = [0, 0, 0];
% % colmap(45,:) = [ 0.14901960784,      0.43921568628,      0.00000000000];
% colmap(151,:) = [ 0.74901960784,      0.74901960784,      0.46666666667];
% colmap(181,:) = [ 0.90980392157,      1.00000000000,      0.74901960784];
% colmap(256,:) = [ 1, 1, 1];
tempcolormap = colmap;
% tempcolormap(5,:) = [ 0.88627450980,      0.00000000000,      0.48627450980];