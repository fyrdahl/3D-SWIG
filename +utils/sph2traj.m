function [k, w] = sph2traj(azi, pol, nSamples)
% This function outputs trajectory coordinates normalized between -0.5 and
% 0.5 with "appropriate" centering, i.e. -kmax/2:kmax/2-dk.
%
% Additionally, this function outputs an estimation of the density 
% compensation function.
%
% Alexander Fyrdahl, Karolinska Institutet, 2023
    
    nSpokes = numel(azi);
    kt = (-nSamples/2 : nSamples/2-1) / nSamples;
    k = zeros(nSamples*nSpokes, 3);

    k(:,1) = reshape(kt' * (cos(azi) .* sin(pol)), [], 1);
    k(:,2) = reshape(kt' * (sin(azi) .* sin(pol)), [], 1);
    k(:,3) = reshape(kt' *              cos(pol) , [], 1);
    
    if nargout > 1
        kt = kt.*nSamples; kt(end+1) = nSamples/2; % Make 'kt' symmetric and in sample units
        w = zeros(1,numel(kt));

        for i = 2:nSamples  
            w(i) = (pi*abs((kt(i)+kt(i+1))^3-(kt(i)+kt(i-1))^3))/(6*nSpokes);
        end

        w(1) = 2*w(end-1)-w(end-2); % Fix first point
        w = w./max(w);              % Normalize
        w = w(1:end-1);             % Re-center
        w = repmat(w', [1 nSpokes]);
    end
end
