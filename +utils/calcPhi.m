function [phi1, phi2] = calcPhi(varargin)
%CALCPHI Calculate phi1 and phi2 for double golden angle
%   [phi1, phi2] = calcPhi(N) returns phi1 & phi2 according to [1]
%   In the case N = 1, the result will the same as described in [2]
%
%   References:
%   [1] Fyrdahl A et al. Magn Reson Mater Phy 34:109–118, 2021
%   [2] Chan RW et al. Magn Reson Med 61:354–363, 2009
%

if nargin > 0
    N = varargin{1};
end

A = [0 1 0; 0 0 1; 1 0 1];
[V, ~] = eigs(A);
phi = V(:,1)/max(V(:,1));

phi2 = round(1/(N-1+1/phi(2)), 4);
phi1 = round(phi2/(1+phi(1)), 4);
    
end

