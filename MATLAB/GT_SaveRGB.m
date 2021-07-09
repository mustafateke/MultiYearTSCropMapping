function [ ResultRGB ] = GT_SaveRGB( Result,GTPath2, RName )
initColors
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
[~, R] = geotiffread( GTPath2 );
tiffinfo = geotiffinfo(GTPath2);
 [pathstr,name,~] = fileparts(GTPath2);
 
%  ResultRGB = (ind2rgb(Result, colmap));
 tagstruct.Compression = Tiff.Compression.Deflate;
 
 geotiffwrite([pathstr '\' RName '.tif'], uint8(Result), R, 'GeoKeyDirectoryTag', tiffinfo.GeoTIFFTags.GeoKeyDirectoryTag, 'TiffTags', tagstruct );


end

