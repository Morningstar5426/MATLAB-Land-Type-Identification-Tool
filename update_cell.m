function type_of_land = update_cell(grid, i, j, rows, cols)
    neighborhood = grid(max(i-1,1):min(i+1,rows), max(j-1,1):min(j+1,cols));
    desert_count = sum(neighborhood(:) == 1);
    grassland_count = sum(neighborhood(:) == 2);
    water_count = sum(neighborhood(:) == 3);
    urban_count = sum(neighborhood(:) == 4);
    lush_count = sum(neighborhood(:) == 5);
    other_count = sum(neighborhood(:) == 6);
    
    if desert_count > grassland_count && desert_count > water_count && desert_count > urban_count && desert_count > lush_count && desert_count > other_count
        type_of_land = 1; % Desert
    elseif grassland_count > desert_count && grassland_count > water_count && grassland_count > urban_count && grassland_count > lush_count && grassland_count > other_count
        type_of_land = 2; % Grassland
    elseif water_count > desert_count && water_count > grassland_count && water_count > urban_count && water_count > lush_count && water_count > other_count
        type_of_land = 3; % Water
    elseif urban_count > desert_count && urban_count > grassland_count && urban_count > water_count && urban_count > lush_count && urban_count>  other_count
        type_of_land = 4; % Urban
    elseif lush_count > urban_count && lush_count > desert_count && lush_count > grassland_count && lush_count > water_count && lush_count > other_count
        type_of_land = 5; % Lush vegetatiaon
    else
        type_of_land = 6; % Other
    end
end