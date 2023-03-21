function [x,y,z] = my_sph2cart(azi,pol)
z = cos(pol);
sinelev = sin(pol);
x = sinelev .* sin(azi);
y = sinelev .* cos(azi);
end