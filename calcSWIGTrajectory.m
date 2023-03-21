function [azi, pol] = calcSWIGTrajectory(N, nSpokesPerBeat, navFreq)
%CALCSWIGTRAJECTORY Calculate a SWIG trajectory
%   CALCSWIGTRAJECTORY(N, nSpokesPerBeat) calculates a 3D-SWIG trajectory
%   of order N. nSpokesPerBeat is an 1x12*N^2 array containing the number
%   of spokes per heartbeat.
%
%   nSpokes can also be passed as an integer, in which case it's assumed
%   that all heartbeats have an equal number of spokes.
%

if nargin < 3
    navFreq = Inf;
end

if length(nSpokesPerBeat) == 1
    nSpokesPerBeat = ones(1, 12*N^2).*nSpokesPerBeat;
end

assert(12*N^2 == size(nSpokesPerBeat, 2), sprintf("array of spokes per beat must have size 1x%i", 12*N^2));

[grid, idx] = utils.createCubeGrid(N);
[x, y, z, grid] = utils.getCubeCoords(grid, idx);
[phi1, phi2] = utils.calcPhi(1);

azi = [];
pol = [];
count = 0; % Running count to keep track of navigator spoke frequency
for beat = 1:12*N^2
    navCount = 0; % Per-beat count to adjust for angles lost to navigators
    for spoke = 1:nSpokesPerBeat(beat)
        [row_index, col_index] = ind2sub(size(grid), idx(beat));
        if mod(count, navFreq) == 0
            p = 0; a = p;
            navCount = navCount + 1;
        else
            p1 = mod(phi1*(spoke-navCount), 1)/N;
            p2 = mod(phi2*(spoke-navCount), 1)/N;
            
            if grid(row_index, col_index) == 1
                % Fixed z
                [a, p] = utils.trajTransformSWIG(x(beat)-p1, y(beat)+p2, z(beat));
            elseif grid(row_index, col_index) == 2 || grid(row_index, col_index) == 5
                % Fixed x
                [a, p] = utils.trajTransformSWIG(x(beat), y(beat)+p1, z(beat)+p2);
            elseif grid(row_index, col_index) == 3 || grid(row_index, col_index) == 4
                % Fixed y
                [a, p] = utils.trajTransformSWIG(x(beat)-p1, y(beat), z(beat)+p2);
            end
        end
        azi(end+1) = a;
        pol(end+1) = p;
        count = count + 1;
    end
end
