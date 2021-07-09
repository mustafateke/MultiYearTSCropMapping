function [ ResultRGB ] = GT_SaveResult( Result,GTPath2, OutputPath )
initColors
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
[~, R] = geotiffread( GTPath2 );
tiffinfo = geotiffinfo(GTPath2);
 [pathstr,name,~] = fileparts(GTPath2);
 
 tagstruct.Compression = Tiff.Compression.Deflate;
 
 ResultRGB = (ind2rgb(Result, tempcolormap));
 geotiffwrite([OutputPath '.tif'], uint8(Result), R, 'GeoKeyDirectoryTag', tiffinfo.GeoTIFFTags.GeoKeyDirectoryTag, 'TiffTags', tagstruct);
 geotiffwrite([OutputPath '_Tematik.tif'], uint8(255*ResultRGB), R, 'GeoKeyDirectoryTag', tiffinfo.GeoTIFFTags.GeoKeyDirectoryTag, 'TiffTags', tagstruct);

end

