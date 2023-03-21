function [x, y, z, grid] = getCubeCoords(grid, idx, do_plot)

% Optional plot
if nargin < 3
    do_plot = false;
end

N = sqrt(numel(grid))/4;
patches = 12*N^2;

grid(grid > 0) = 1;
grid(        1:N,   N+1:end-N) = 2;
grid(  N+1:end-N,         1:N) = 3;
grid(  N+1:end-N, end-N+1:end) = 4;
grid(end-N+1:end,   N+1:end-N) = 5;

x = zeros(size(idx));
y = zeros(size(idx));
z = zeros(size(idx));

for ii = 1:numel(idx)
    [row_index, col_index] = ind2sub(size(grid), idx(ii));
    if grid(row_index, col_index) == 1 % Top face
        x(ii) = (row_index - 2*N) / N;
        y(ii) = (col_index - 2*N - 1) / N;
        z(ii) = 1;
    else % Sides
        if grid(row_index, col_index) == 2
            x(ii) = -1;
            y(ii) = (col_index - 2*N - 1) / N;
            z(ii) = row_index/N - 1/N;
        elseif grid(row_index, col_index) == 3
            x(ii) = (row_index - 2*N) / N;
            y(ii) = -1;
            z(ii) = col_index/N - 1/N;
        elseif grid(row_index, col_index) == 4
            x(ii) = (row_index - 2*N) / N;
            y(ii) = 1;
            z(ii) = 4 - col_index/N;
        elseif grid(row_index, col_index) == 5
            x(ii) = 1;
            y(ii) = (col_index - 2 * N - 1) / N;
            z(ii) = 4 - row_index/N;
        end
    end
end

if do_plot
    cmap = turbo(12*N^2);
    figure(99); clf; hold on;
    for ii = 1:numel(x)
        [row_index, col_index] = ind2sub(size(grid), idx(ii));
        if grid(row_index, col_index) == 1
            % Fixed z
            coords = utils.cwSort([x(ii) y(ii); x(ii) y(ii)+1/N; x(ii)+1/N y(ii); x(ii)+1/N y(ii)+1/N]);
            patch(coords(:,1), coords(:,2), [1; 1; 1; 1].*z(ii), cmap(ii,:), 'LineWidth', 3);
        elseif grid(row_index, col_index) == 2 || grid(row_index, col_index) == 5
            % Fixed x
            coords = utils.cwSort([y(ii) z(ii); y(ii) z(ii) + 1/N; y(ii) + 1/N z(ii); y(ii)+1/N z(ii)+1/N]);
            patch([1; 1; 1; 1].*x(ii)+1/N, coords(:,1), coords(:,2), cmap(ii,:), 'LineWidth', 3);
        elseif grid(row_index, col_index) == 3 || grid(row_index, col_index) == 4
            % Fixed y
            coords = utils.cwSort([x(ii) z(ii); x(ii) z(ii) + 1/N; x(ii) + 1/N z(ii); x(ii) + 1/N z(ii) + 1/N]);
            patch(coords(:,1), [1; 1; 1; 1].*y(ii), coords(:,2), cmap(ii,:), 'LineWidth', 3);
        end
    end
    view(45, 30);
    axis([-1 1 -1 1 0 1]); axis equal;
    title(sprintf('%i patches, (N = %i)', patches, N));
    colormap(turbo(patches));
    cb = colorbar();
    set(cb,'YLim', [0 1]);
    set(cb,'YTick', linspace(0, 1, 2*N+1))
    set(cb,'YTickLabel', string(linspace(0, patches, 2*N+1)));
    set(gca, 'FontSize', 16);
    exportgraphics(gca, sprintf('figures/cube_%i.png', 12*N^2));
    hold off;
end
end




