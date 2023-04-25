%FSWIGTRAJ108 Look-up tables for a 108-wedge 3D-SWIG trajectory
% NOTE: This code uses 0-indexing to be consistent with the C++ code
% If this code is useful for your research, please consider citing:
% Fyrdahl, A., Ullvin, A., Ramos, J.G., Seiberlich, N., Ugander, M. & Sigfridsson, A. Three-dimensional sector-wise golden-angle (3D-SWIG) – Improved k-space uniformity after ECG binning. MRM 2023. [In press]
%
% 2023 – Alexander Fyrdahl, PhD (alexander.fyrdahl@ki.se)
%

function [x, y, z] = fSWIGTraj108(u_lTrig, dMPhi1, dMPhi2)
    switch mod(u_lTrig, 108)
        case 0
            x = (-dMPhi1)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 1
            x = (-dMPhi1+1)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 2
            x = (-dMPhi1+1)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 3
            x = (-dMPhi1)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 4
            x = (-dMPhi1-1)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 5
            x = (-dMPhi1-1)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 6
            x = (-dMPhi1-1)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 7
            x = (-dMPhi1)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 8
            x = (-dMPhi1+1)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 9
            x = (-dMPhi1+2)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 10
            x = (-dMPhi1+2)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 11
            x = (-dMPhi1+2)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 12
            x = (-dMPhi1+2)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 13
            x = (-dMPhi1+1)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 14
            x = (-dMPhi1)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 15
            x = (-dMPhi1-1)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 16
            x = (-dMPhi1-2)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 17
            x = (-dMPhi1-2)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 18
            x = (-dMPhi1-2)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 19
            x = (-dMPhi1-2)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 20
            x = (-dMPhi1-2)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 21
            x = (-dMPhi1-1)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 22
            x = (-dMPhi1)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 23
            x = (-dMPhi1+1)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 24
            x = (-dMPhi1+2)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 25
            x = (-dMPhi1+3)/3;
            y = (dMPhi2-3)/3;
            z = 1;
        case 26
            x = (-dMPhi1+3)/3;
            y = (dMPhi2-2)/3;
            z = 1;
        case 27
            x = (-dMPhi1+3)/3;
            y = (dMPhi2-1)/3;
            z = 1;
        case 28
            x = (-dMPhi1+3)/3;
            y = (dMPhi2)/3;
            z = 1;
        case 29
            x = (-dMPhi1+3)/3;
            y = (dMPhi2+1)/3;
            z = 1;
        case 30
            x = (-dMPhi1+3)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 31
            x = (-dMPhi1+2)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 32
            x = (-dMPhi1+1)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 33
            x = (-dMPhi1)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 34
            x = (-dMPhi1-1)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 35
            x = (-dMPhi1-2)/3;
            y = (dMPhi2+2)/3;
            z = 1;
        case 36
            x = -1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2+2)/3;
        case 37
            x = -1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2+2)/3;
        case 38
            x = -1;
            y = (dMPhi1)/3;
            z = (dMPhi2+2)/3;
        case 39
            x = -1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2+2)/3;
        case 40
            x = -1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2+2)/3;
        case 41
            x = -1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2+2)/3;
        case 42
            x = (-dMPhi1-2)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 43
            x = (-dMPhi1-1)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 44
            x = (-dMPhi1)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 45
            x = (-dMPhi1+1)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 46
            x = (-dMPhi1+2)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 47
            x = (-dMPhi1+3)/3;
            y = -1;
            z = (dMPhi2+2)/3;
        case 48
            x = 1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2+2)/3;
        case 49
            x = 1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2+2)/3;
        case 50
            x = 1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2+2)/3;
        case 51
            x = 1;
            y = (dMPhi1)/3;
            z = (dMPhi2+2)/3;
        case 52
            x = 1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2+2)/3;
        case 53
            x = 1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2+2)/3;
        case 54
            x = (-dMPhi1+3)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 55
            x = (-dMPhi1+2)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 56
            x = (-dMPhi1+1)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 57
            x = (-dMPhi1)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 58
            x = (-dMPhi1-1)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 59
            x = (-dMPhi1-2)/3;
            y = 1;
            z = (dMPhi2+2)/3;
        case 60
            x = -1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2+1)/3;
        case 61
            x = -1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2+1)/3;
        case 62
            x = -1;
            y = (dMPhi1)/3;
            z = (dMPhi2+1)/3;
        case 63
            x = -1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2+1)/3;
        case 64
            x = -1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2+1)/3;
        case 65
            x = -1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2+1)/3;
        case 66
            x = (-dMPhi1-2)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 67
            x = (-dMPhi1-1)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 68
            x = (-dMPhi1)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 69
            x = (-dMPhi1+1)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 70
            x = (-dMPhi1+2)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 71
            x = (-dMPhi1+3)/3;
            y = -1;
            z = (dMPhi2+1)/3;
        case 72
            x = 1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2+1)/3;
        case 73
            x = 1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2+1)/3;
        case 74
            x = 1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2+1)/3;
        case 75
            x = 1;
            y = (dMPhi1)/3;
            z = (dMPhi2+1)/3;
        case 76
            x = 1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2+1)/3;
        case 77
            x = 1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2+1)/3;
        case 78
            x = (-dMPhi1+3)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 79
            x = (-dMPhi1+2)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 80
            x = (-dMPhi1+1)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 81
            x = (-dMPhi1)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 82
            x = (-dMPhi1-1)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 83
            x = (-dMPhi1-2)/3;
            y = 1;
            z = (dMPhi2+1)/3;
        case 84
            x = -1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2)/3;
        case 85
            x = -1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2)/3;
        case 86
            x = -1;
            y = (dMPhi1)/3;
            z = (dMPhi2)/3;
        case 87
            x = -1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2)/3;
        case 88
            x = -1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2)/3;
        case 89
            x = -1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2)/3;
        case 90
            x = (-dMPhi1-2)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 91
            x = (-dMPhi1-1)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 92
            x = (-dMPhi1)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 93
            x = (-dMPhi1+1)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 94
            x = (-dMPhi1+2)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 95
            x = (-dMPhi1+3)/3;
            y = -1;
            z = (dMPhi2)/3;
        case 96
            x = 1;
            y = (dMPhi1-3)/3;
            z = (dMPhi2)/3;
        case 97
            x = 1;
            y = (dMPhi1-2)/3;
            z = (dMPhi2)/3;
        case 98
            x = 1;
            y = (dMPhi1-1)/3;
            z = (dMPhi2)/3;
        case 99
            x = 1;
            y = (dMPhi1)/3;
            z = (dMPhi2)/3;
        case 100
            x = 1;
            y = (dMPhi1+1)/3;
            z = (dMPhi2)/3;
        case 101
            x = 1;
            y = (dMPhi1+2)/3;
            z = (dMPhi2)/3;
        case 102
            x = (-dMPhi1+3)/3;
            y = 1;
            z = (dMPhi2)/3;
        case 103
            x = (-dMPhi1+2)/3;
            y = 1;
            z = (dMPhi2)/3;
        case 104
            x = (-dMPhi1+1)/3;
            y = 1;
            z = (dMPhi2)/3;
        case 105
            x = (-dMPhi1)/3;
            y = 1;
            z = (dMPhi2)/3;
        case 106
            x = (-dMPhi1-1)/3;
            y = 1;
            z = (dMPhi2)/3;
        case 107
            x = (-dMPhi1-2)/3;
            y = 1;
            z = (dMPhi2)/3;
        otherwise
            x = 0;
            y = 0;
            z = 0;
    end
end
