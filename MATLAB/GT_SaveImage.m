function [ ResultRGB ] = GT_SaveImage( Result,GTPath2, RName )
init
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
[~, R] = geotiffread( GTPath2 );
tiffinfo = geotiffinfo(GTPath2);
 [pathstr,name,~] = fileparts(GTPath2);
 
%  ResultRGB = (ind2rgb(Result, colmap));
 
 geotiffwrite([pathstr '\' name '_' RName '.tif'], Result, R, 'GeoKeyDirectoryTag', tiffinfo.GeoTIFFTags.GeoKeyDirectoryTag);


end

