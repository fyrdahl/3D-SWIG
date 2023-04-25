function [azi, pol] = trajTransformSWIG(x, y, z)

% Half-cube grid to hemisphere grid (Equations 3-5 in the paper)
xx = x .* sqrt(1 - (y.^2)./2 - (z.^2)./2 + (y.^2.*z.^2)./3);
yy = y .* sqrt(1 - (z.^2)./2 - (x.^2)./2 + (z.^2.*x.^2)./3);
zz = z .* sqrt(1 - (x.^2)./2 - (y.^2)./2 + (x.^2.*y.^2)./3);

% Cartesian to spherical coordinates
azi = atan2(xx,yy);
pol = atan2(sqrt(xx.^2+yy.^2), zz);

end

