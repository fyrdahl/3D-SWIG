function [azi, pol] = calcGATrajectory(nSpokes, navFreq, fullSweep, N)
%CALCGATRAJECTORY Calculate a double golden-angle trajectory
%   CALCGATRAJECTORY(nSpokes) calculates a double golden-angle trajectory
%   as described in [1].
%
%   CALCGATRAJECTORY(nSpokes, true) calculates a full-sweep double
%   golden-angle trajectory with a 360 degree spoke distribution of both
%   polar and azimuthal angles.
%
%   CALCGATRAJECTORY(nSpokes, false, N) calculates a tiny double
%   golden-angle trajectory as described in [2].
%
%   References:
%   [1] Chan RW et al. Magn Reson Med 61:354–363, 2009
%   [2] Fyrdahl A et al. Magn Reson Mater Phy 34:109–118, 2021
%

if nargin < 2
    navFreq = Inf;
end

if nargin < 3
    fullSweep = false;
end

if nargin < 4
    N = 1;
end

[phi1, phi2] = utils.calcPhi(N);
azi = zeros(1, nSpokes);
pol = zeros(1, nSpokes);
navCount = 0;
for spoke = 0:nSpokes-1
    if mod(spoke,navFreq) == 0
        azi(spoke+1) = 0;
        pol(spoke+1) = 0;
        navCount = navCount + 1;
    else
        if fullSweep
            pol(spoke+1) = acos(2 * mod((spoke-navCount) * phi1, 1) - 1);
        else
            pol(spoke+1) = acos(mod((spoke-navCount) * phi1, 1));
        end
        azi(spoke+1) = 2 * pi * mod((spoke-navCount) * phi2, 1);
    end
end

