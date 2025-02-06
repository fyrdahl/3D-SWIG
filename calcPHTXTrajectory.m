function [azi, pol] = calcPHTXTrajectory(nSpokes, nInterleaves)
%CALCPHTXTRAJECTORY Calculate a spiral phyllotaxis trajectory
%   CALCPHTXTRAJECTORY(nSpokes, nInterleaves) calculates a spiral phyllotaxis
%   trajectory as described in [1].
%
%   References:
%   [1] Piccini D et al. Magn Reson Med 66:1049-1056 (2011)
%

if nargin < 2
    nInterleaves = 1;
    navFreq = Inf;
else
    navFreq = nSpokes/nInterleaves;
end

azi = [];
pol = [];

N = nSpokes;
M = nInterleaves;


n = 0;
c = 0;

for ii = 1:N
    if mod(ii, navFreq) == 0
        azi = cat(2,azi,0);
        pol = cat(2,pol,0);
    else
        azi = cat(2,azi,mod(n*pi*(3-sqrt(5)),2*pi));
        pol = cat(2,pol,(pi/2)*sqrt(n/N));
        n = n+M;

        if n >= N-M
            c = c+1;
            n = c;
        end
    end
end


