function dataSorted = cwSort(data)
    % Sort coordinates clockwise to use in MATLAB's patch command
    
    u = data(:,1);
    v = data(:,2);
    
    % Find the centroid of the coordinates
    centroid = mean([u, v]);
    
    % Subtract the centroid from each coordinate
    u = u - centroid(1);
    v = v - centroid(2);
    
    % Get the angles between coordinates
    angle = atan2(v,u);
    
    [~, sortIdx] = sort(angle, 'descend'); 
    dataSorted = data(sortIdx, :);
end