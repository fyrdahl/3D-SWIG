close all; clearvars; clc;

if ~exist([pwd '/figures'], 'dir')
    mkdir([pwd '/figures']);
end

for N = 2:4
    [patch_grid, idx] = utils.createCubeGrid(N, true);
    [x, y, z, face_grid] = utils.getCubeCoords(patch_grid, idx, true);
    utils.createSpherePlot(x, y, z, face_grid, idx);
end