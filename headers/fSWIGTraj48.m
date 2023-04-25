%FSWIGTRAJ48 Look-up tables for a 48-wedge 3D-SWIG trajectory
% NOTE: This code uses 0-indexing to be consistent with the C++ code
% If this code is useful for your research, please consider citing:
% Fyrdahl, A., Ullvin, A., Ramos, J.G., Seiberlich, N., Ugander, M. & Sigfridsson, A. Three-dimensional sector-wise golden-angle (3D-SWIG) – Improved k-space uniformity after ECG binning. MRM 2023. [In press]
%
% 2023 – Alexander Fyrdahl, PhD (alexander.fyrdahl@ki.se)
%

function [x, y, z] = fSWIGTraj48(u_lTrig, dMPhi1, dMPhi2)
    switch mod(u_lTrig, 48)
        case 0
            x = (-dMPhi1)/2;
            y = (dMPhi2-1)/2;
            z = 1;
        case 1
            x = (-dMPhi1+1)/2;
            y = (dMPhi2-1)/2;
            z = 1;
        case 2
            x = (-dMPhi1+1)/2;
            y = (dMPhi2)/2;
            z = 1;
        case 3
            x = (-dMPhi1)/2;
            y = (dMPhi2)/2;
            z = 1;
        case 4
            x = (-dMPhi1-1)/2;
            y = (dMPhi2)/2;
            z = 1;
        case 5
            x = (-dMPhi1-1)/2;
            y = (dMPhi2-1)/2;
            z = 1;
        case 6
            x = (-dMPhi1-1)/2;
            y = (dMPhi2-2)/2;
            z = 1;
        case 7
            x = (-dMPhi1)/2;
            y = (dMPhi2-2)/2;
            z = 1;
        case 8
            x = (-dMPhi1+1)/2;
            y = (dMPhi2-2)/2;
            z = 1;
        case 9
            x = (-dMPhi1+2)/2;
            y = (dMPhi2-2)/2;
            z = 1;
        case 10
            x = (-dMPhi1+2)/2;
            y = (dMPhi2-1)/2;
            z = 1;
        case 11
            x = (-dMPhi1+2)/2;
            y = (dMPhi2)/2;
            z = 1;
        case 12
            x = (-dMPhi1+2)/2;
            y = (dMPhi2+1)/2;
            z = 1;
        case 13
            x = (-dMPhi1+1)/2;
            y = (dMPhi2+1)/2;
            z = 1;
        case 14
            x = (-dMPhi1)/2;
            y = (dMPhi2+1)/2;
            z = 1;
        case 15
            x = (-dMPhi1-1)/2;
            y = (dMPhi2+1)/2;
            z = 1;
        case 16
            x = -1;
            y = (dMPhi1+1)/2;
            z = (dMPhi2+1)/2;
        case 17
            x = -1;
            y = (dMPhi1)/2;
            z = (dMPhi2+1)/2;
        case 18
            x = -1;
            y = (dMPhi1-1)/2;
            z = (dMPhi2+1)/2;
        case 19
            x = -1;
            y = (dMPhi1-2)/2;
            z = (dMPhi2+1)/2;
        case 20
            x = (-dMPhi1-1)/2;
            y = -1;
            z = (dMPhi2+1)/2;
        case 21
            x = (-dMPhi1)/2;
            y = -1;
            z = (dMPhi2+1)/2;
        case 22
            x = (-dMPhi1+1)/2;
            y = -1;
            z = (dMPhi2+1)/2;
        case 23
            x = (-dMPhi1+2)/2;
            y = -1;
            z = (dMPhi2+1)/2;
        case 24
            x = 1;
            y = (dMPhi1-2)/2;
            z = (dMPhi2+1)/2;
        case 25
            x = 1;
            y = (dMPhi1-1)/2;
            z = (dMPhi2+1)/2;
        case 26
            x = 1;
            y = (dMPhi1)/2;
            z = (dMPhi2+1)/2;
        case 27
            x = 1;
            y = (dMPhi1+1)/2;
            z = (dMPhi2+1)/2;
        case 28
            x = (-dMPhi1+2)/2;
            y = 1;
            z = (dMPhi2+1)/2;
        case 29
            x = (-dMPhi1+1)/2;
            y = 1;
            z = (dMPhi2+1)/2;
        case 30
            x = (-dMPhi1)/2;
            y = 1;
            z = (dMPhi2+1)/2;
        case 31
            x = (-dMPhi1-1)/2;
            y = 1;
            z = (dMPhi2+1)/2;
        case 32
            x = -1;
            y = (dMPhi1+1)/2;
            z = (dMPhi2)/2;
        case 33
            x = -1;
            y = (dMPhi1)/2;
            z = (dMPhi2)/2;
        case 34
            x = -1;
            y = (dMPhi1-1)/2;
            z = (dMPhi2)/2;
        case 35
            x = -1;
            y = (dMPhi1-2)/2;
            z = (dMPhi2)/2;
        case 36
            x = (-dMPhi1-1)/2;
            y = -1;
            z = (dMPhi2)/2;
        case 37
            x = (-dMPhi1)/2;
            y = -1;
            z = (dMPhi2)/2;
        case 38
            x = (-dMPhi1+1)/2;
            y = -1;
            z = (dMPhi2)/2;
        case 39
            x = (-dMPhi1+2)/2;
            y = -1;
            z = (dMPhi2)/2;
        case 40
            x = 1;
            y = (dMPhi1-2)/2;
            z = (dMPhi2)/2;
        case 41
            x = 1;
            y = (dMPhi1-1)/2;
            z = (dMPhi2)/2;
        case 42
            x = 1;
            y = (dMPhi1)/2;
            z = (dMPhi2)/2;
        case 43
            x = 1;
            y = (dMPhi1+1)/2;
            z = (dMPhi2)/2;
        case 44
            x = (-dMPhi1+2)/2;
            y = 1;
            z = (dMPhi2)/2;
        case 45
            x = (-dMPhi1+1)/2;
            y = 1;
            z = (dMPhi2)/2;
        case 46
            x = (-dMPhi1)/2;
            y = 1;
            z = (dMPhi2)/2;
        case 47
            x = (-dMPhi1-1)/2;
            y = 1;
            z = (dMPhi2)/2;
        otherwise
            x = 0;
            y = 0;
            z = 0;
    end
end
