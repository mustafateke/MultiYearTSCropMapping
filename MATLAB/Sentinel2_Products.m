function Product = Sentinel2_Products(Image, ProductName)
Image = Image/10000;
RedIdx = 3;
GreenIdx = 2;
BlueIdx = 1;
NIRIdx = 4;


if ( strcmp(ProductName, 'NDVI') )
    Product = ( Image(:, :, NIRIdx) - Image(:, :, RedIdx ) ) ./ ...
        ( Image(:, :, NIRIdx) + Image(:, :, RedIdx ) );
    
elseif ( strcmp(ProductName, 'EVI') )
    Product = 2.5*( Image(:, :, NIRIdx) - Image(:, :, RedIdx ) ) ./ ...
        ( Image(:, :, NIRIdx) + 6*Image(:, :, RedIdx ) - 7.5*Image(:, :, BlueIdx ) + 1 );
    
elseif ( strcmp(ProductName, 'SAVI') )
    Product = ( Image(:, :, 5) - Image(:, :, 4 ) ) ./ ...
        ( Image(:, :, 5) + Image(:, :, 4 ) + 0.5 );
    

    
elseif ( strcmp(ProductName, 'MSAVI') )
    Product = (2 * Image(:, :, NIRIdx) + 1 - ...
        sqrt ((2 * Image(:, :, NIRIdx) + 1).^2 - 8 * (Image(:, :, NIRIdx) - Image(:, :, RedIdx)))) / 2;
    
elseif ( strcmp(ProductName, 'NDMI') ) %
    Product = ( Image(:, :, 5) - Image(:, :, 6 ) ) ./ ...
        ( Image(:, :, 5) + Image(:, :, 6 ) );
    
elseif ( strcmp(ProductName, 'NDWI') ) %
    Product = ( Image(:, :, 3) - Image(:, :, 5 ) ) ./ ...
        ( Image(:, :, 3) + Image(:, :, 5 ) );
    
elseif ( strcmp(ProductName, 'ENDVI') )
    Product = ( Image(:, :, 5)  + Image(:, :, 3 ) - 2*Image(:, :, 2 ) ) ./ ...
        ( Image(:, :, 5) + Image(:, :, 3 ) + 2*Image(:, :, 2 ) );
    
elseif ( strcmp(ProductName, 'NBR') )
    Product = ( Image(:, :, 5) - Image(:, :, 7 ) ) ./ ...
        ( Image(:, :, 5) + Image(:, :, 7 ) );
    
elseif ( strcmp(ProductName, 'NBR2') )
    Product = ( Image(:, :, 6) - Image(:, :, 7 ) ) ./ ...
        ( Image(:, :, 6) + Image(:, :, 7 ) );
    
elseif ( strcmp(ProductName, 'NDSI') )
    Product = ( Image(:, :, 4) - Image(:, :, 6 ) ) ./ ...
        ( Image(:, :, 4) + Image(:, :, 6 ) );
    
elseif ( strcmp(ProductName, 'NDTI') )
    Product = ( Image(:, :, 6) - Image(:, :, 7 ) ) ./ ...
        ( Image(:, :, 6) + Image(:, :, 7 ) );
elseif ( strcmp(ProductName, 'TCT') )
    Product = -0.2941*Image(:, :, 2) + -0.243*Image(:, :, 3 )  + ...
        -0.5424*Image(:, :, 4) + 0.7276*Image(:, :, 5 ) + ...
        0.0713*Image(:, :, 6) + -0.1608*Image(:, :, 7 )  ;
end
