function createSpherePlot(x, y, z, grid, idx, darkMode)

if nargin < 6
    darkMode = false;
end

if darkMode
    lineColor = [107 114 124]./255;
    fontColor = [230 237 243]./255;
    gridColor = [107 114 124]./255;
    bgColor = [13 17 23]./255;
else
    lineColor = 'black';
    fontColor = 'black';
    gridColor = 'black';
    bgColor = 'white';
end

N = sqrt(numel(grid))/4;
patches = 12*N^2;

figure(100); clf;
ax = axes('Color', 'none');  hold on;
cmap = turbo(12*N^2);
for ii = 1:numel(x)
    
    [row_index, col_index] = ind2sub(size(grid), idx(ii));
    
    if grid(row_index, col_index) == 1
        % Fixed z
        xq = linspace(x(ii),x(ii)-1/N, 21);
        yq = linspace(y(ii),y(ii)+1/N, 21);
        [yy, xx] = meshgrid(yq,xq);
        [azi, pol] = utils.trajTransformSWIG(xx, yy, ones(size(xx)));
        [xx, yy, zz] = utils.my_sph2cart(azi, pol);
        s = surf(xx, yy, zz, 'FaceColor', cmap(ii,:), 'EdgeColor', 'none');
        plot3(xx(:,1), yy(:,1), zz(:,1), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(1,:), yy(1,:), zz(1,:), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(:,end), yy(:,end), zz(:,end), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(end,:), yy(end,:), zz(end,:), '-k', 'LineWidth', 3, 'Color', gridColor);
    
    elseif grid(row_index, col_index) == 2 || grid(row_index, col_index) == 5
        % Fixed x
        yq = linspace(y(ii),y(ii)+1/N, 21);
        zq = linspace(z(ii),z(ii)+1/N, 21);
        [yy, zz] = meshgrid(yq,zq);
        [azi, pol] = utils.trajTransformSWIG(sign(x(ii)).*ones(size(yy)), yy, zz);
        [xx, yy, zz] = utils.my_sph2cart(azi, pol);
        s = surf(xx, yy, zz, 'FaceColor', cmap(ii,:), 'EdgeColor', 'none');
        plot3(xx(:,1), yy(:,1), zz(:,1), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(1,:), yy(1,:), zz(1,:), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(:,end), yy(:,end), zz(:,end), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(end,:), yy(end,:), zz(end,:), '-k', 'LineWidth', 3, 'Color', gridColor);
        
    elseif grid(row_index, col_index) == 3 || grid(row_index, col_index) == 4
        % Fixed y
        xq = linspace(x(ii),x(ii)-1/N, 21);
        zq = linspace(z(ii),z(ii)+1/N, 21);
        [zz, xx] = meshgrid(zq,xq);
        [azi, pol] = utils.trajTransformSWIG(xx, sign(y(ii)).*ones(size(xx)), zz);
        [xx, yy, zz] = utils.my_sph2cart(azi, pol);
        s = surf(xx, yy, zz, 'FaceColor', cmap(ii,:), 'EdgeColor','none');
        plot3(xx(:,1), yy(:,1), zz(:,1), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(1,:), yy(1,:), zz(1,:), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(:,end), yy(:,end), zz(:,end), '-k', 'LineWidth', 3, 'Color', gridColor);
        plot3(xx(end,:), yy(end,:), zz(end,:), '-k', 'LineWidth', 3, 'Color', gridColor);
    end
end

title(sprintf('%i patches, (N = %i)', patches, N), 'Color', fontColor);
view(45, 30);
axis([-1 1 -1 1 0 1]); axis equal;
cmap = turbo(patches);
colormap([0 0 0; cmap]);
cb = colorbar('LineWidth', 2.5, 'Color', lineColor);
cblim = [0 1];
set(cb,'YLim', cblim);
set(cb,'YTick', linspace(cblim(1), cblim(2), 2*N+1))
set(cb,'YTickLabel', string(linspace(0, patches, 2*N+1)));
set(ax, 'FontSize', 16, 'LineWidth', 2.5, 'XColor', lineColor, 'YColor', lineColor, 'ZColor', lineColor);

if darkMode
    
    xTickLabels = get(gca,'XTickLabel');
    yTickLabels = get(gca,'YTickLabel');
    zTickLabels = get(gca,'ZTickLabel');
    cbTickLabels = get(cb,'YTickLabel');
    
    xTickLabels_new = cell(size(xTickLabels));
    yTickLabels_new = cell(size(yTickLabels));
    zTickLabels_new = cell(size(zTickLabels));
    cbTickLabels_new = cell(size(cbTickLabels));
    
    colorStr = regexprep(mat2str(fontColor), {'\[', '\]', '\s+'}, {'', '', ','});
    for ii = 1:length(xTickLabels)
        xTickLabels_new{ii} = sprintf('\\color[rgb]{%s} %s', colorStr, xTickLabels{ii});
    end
    for ii = 1:length(yTickLabels)
        yTickLabels_new{ii} = sprintf('\\color[rgb]{%s} %s', colorStr, yTickLabels{ii});
    end
    for ii = 1:length(zTickLabels)
        zTickLabels_new{ii} = sprintf('\\color[rgb]{%s} %s', colorStr, zTickLabels{ii});
    end
    for ii = 1:length(cbTickLabels)
        cbTickLabels_new{ii} = sprintf('\\color[rgb]{%s} %s', colorStr, cbTickLabels{ii});
    end
    
    set(gca, 'XTickLabel', xTickLabels_new);
    set(gca, 'YTickLabel', yTickLabels_new);
    set(gca, 'ZTickLabel', zTickLabels_new);
    set( cb, 'YTickLabel', cbTickLabels_new);
    
    fileName = sprintf('figures%ssphere_%i_dark.png', filesep, 12*N^2);
else
    fileName = sprintf('figures%ssphere_%i.png', filesep, 12*N^2);
end

exportgraphics(gcf, fileName, 'BackgroundColor', bgColor);

end

