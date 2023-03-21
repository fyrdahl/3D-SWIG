function [grid, idx] = createCubeGrid(N, do_plot, rand_order)

if nargin < 2
    do_plot = false;
end

if nargin < 3
    rand_order = false;
end

% The full size of the grid is [4*N, 4*N]
grid = ones(4*N,4*N);

% Exclude corners
grid(1:N,1:N) = 0;
grid(1:N,end-N+1:end) = 0;
grid(end-N+1:end,1:N) = 0;
grid(end-N+1:end,end-N+1:end) = 0;

patches = nnz(grid);
assert(patches == 12*N^2, 'the number of patches should be 12*N^2')

% Calculate the spiral pattern
spiral = utils.ccwSpiral(N);

if rand_order
    order = randperm(16*N^2);
else
    order = 1:size(spiral,1);
end

% Use a grayscale to indicate ordering
p = 1;
for ii = order
    if grid(spiral(ii,1), spiral(ii,2)) ~= 0
        grid(spiral(ii,1), spiral(ii,2)) = p/(12*N^2);
        p = p+1;
    end 
end

% To get the indices, we can now sort the matrix
if nargout > 1
    [~, idx] = sort(grid(:), 'descend');
    idx = flip(idx(1:12*N^2));
end

% Optional: plot the grid with colors and gridlines
if do_plot
    figure(98); clf;
    h = imshow(grid, 'InitialMagnification', 'fit');
    
    xdata = get(h, 'XData');
    ydata = get(h, 'YData');
    ii = size(get(h,'CData'), 1);
    jj = size(get(h,'CData'), 2);
    
    pixel_height = diff(ydata) / (ii-1);
    pixel_width = diff(xdata) / (jj-1);
    
    y_top = ydata(1) - (pixel_height/2);
    y_bottom = ydata(2) + (pixel_height/2);
    y = linspace(y_top, y_bottom, ii+1);
    
    x_left = xdata(1) - (pixel_width/2);
    x_right = xdata(2) + (pixel_width/2);
    x = linspace(x_left, x_right, jj+1);
    
    xv = zeros(1, 2*numel(x));
    xv(1:2:end) = x;
    xv(2:2:end) = x;
    
    yv = repmat([y(1) ; y(end)], 1, numel(x));
    yv(:,2:2:end) = flipud(yv(:,2:2:end));
    
    xv = xv(:);
    yv = yv(:);
    
    yh = zeros(1, 2*numel(y));
    yh(1:2:end) = y;
    yh(2:2:end) = y;
    
    xh = repmat([x(1) ; x(end)], 1, numel(y));
    xh(:,2:2:end) = flipud(xh(:,2:2:end));
    
    xh = xh(:);
    yh = yh(:);
    
    ax = ancestor(h, 'axes');

    line('Parent', ax, 'XData', xh, 'YData', yh, ...
        'Color', 'black', 'LineStyle', '-', 'LineWidth', 2, 'Clipping', 'off');
    line('Parent', ax, 'XData', xv, 'YData', yv, ...
        'Color', 'black', 'LineStyle', '-', 'LineWidth', 2, 'Clipping', 'off');
    
    set(h, 'AlphaData', grid>0)

    title(sprintf('%i patches, (N = %i)', patches, N));
    
    cmap = turbo(patches);
    colormap([0 0 0; cmap]);
    cb = colorbar();
    cblim = [min(grid(grid>0)) 1];
    set(cb,'YLim', cblim);
    set(cb,'YTick', linspace(cblim(1), cblim(2), 2*N+1))
    set(cb,'YTickLabel', string(linspace(0, patches, 2*N+1)));
    set(ax, 'FontSize', 16);
    exportgraphics(ax, sprintf('figures/grid_%i.png', 12*N^2));
end
end
