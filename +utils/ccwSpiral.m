function spiral = ccwSpiral(N)

% Initialize the spiral with the starting point
spiral = [2*N, 2*N];

% Set the maximum number of steps in each direction
max_steps = 1;

% Set the step counter to zero
steps = 0;

% Set initial direction
dir_idx = 1;

% Keep track of number of direction changes
dir_changes = 0;

% Directions
directions = [[ 1,  0];
              [ 0,  1];
              [-1,  0];
              [ 0, -1]];

% Walk through the grid in a spiral pattern
while size(spiral,1) < 16*N^2
    
    % Update the current position
    spiral(end+1,:) = spiral(end,:) + directions(dir_idx,:); %#ok<AGROW>
    
    % Update the step counter
    steps = steps + 1;
    
    % If the maximum number of steps has been reached, change direction
    if steps == max_steps
        % Reset the step counter
        steps = 0;
        
        % Update the direction
        dir_idx = mod(dir_idx, 4) + 1;
        
        % Update number of direction changes
        dir_changes = dir_changes + 1;
        
        % On every second direction change, increase max steps by one
        if mod(dir_changes+1, 2)
            max_steps = max_steps + 1;
        end
    end
end
end