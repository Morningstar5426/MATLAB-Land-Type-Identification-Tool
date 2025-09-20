function land_type = land_check(rgb)
    r = rgb(1);
    g = rgb(2);
    b = rgb(3);
    if r >= 160 && r <= 255 && g >= 80 && g <= 255 && b >= 80 && b <= 200
        land_type = 1; % Desert
    elseif r >= 30 && r <= 110 && g >= 50 && g <= 255 && b >= 0 && b <= 40
        land_type = 2; % Grassland
    elseif r >= 0 && r <= 70 && g >= 10 && g <= 95 && b >= 19 && b <= 130
        land_type = 3; % Water
    elseif r >= 70 && r <= 180 && g >= 50 && g <= 160 && b >= 30 && b <= 150
        land_type = 4; % Urban
    elseif r >= 0 && r <= 55 && g >= 75 && g <= 140 && b >= 0 && b <= 40
        land_type = 5; % %Lush vegetation
    else
        land_type = 6; % Other
    end
end