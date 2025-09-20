function land_type_name = get_land_type_name(land_type)
    switch land_type
        case 1
            land_type_name = 'Desert';
        case 2
            land_type_name = 'Grassland';
        case 3
            land_type_name = 'Water';
        case 4
            land_type_name = 'Urban';
        case 5
            land_type_name = 'Lush vegetation';
        otherwise
            land_type_name = 'Other';
    end
end