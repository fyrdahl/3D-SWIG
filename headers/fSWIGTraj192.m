%FSWIGTRAJ192 Look-up tables for a 192-wedge 3D-SWIG trajectory
% NOTE: This code uses 0-indexing to be consistent with the C++ code
% If this code is useful for your research, please consider citing:
% Fyrdahl, A, Ullvin, A, Ramos, JG, Seiberlich, N, Ugander, M, Sigfridsson, A. Three-dimensional sector-wise golden angle–improved k-space uniformity after electrocardiogram binning. Magn Reson Med. 2023; 90( 3): 1041- 1052. doi: 10.1002/mrm.29698
%
% 2023 – Alexander Fyrdahl, PhD (alexander.fyrdahl@ki.se)
%

function [x, y, z] = fSWIGTraj192(u_lTrig, dMPhi1, dMPhi2)
    switch mod(u_lTrig, 192)
        case 0
            x = (-dMPhi1)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 1
            x = (-dMPhi1+1)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 2
            x = (-dMPhi1+1)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 3
            x = (-dMPhi1)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 4
            x = (-dMPhi1-1)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 5
            x = (-dMPhi1-1)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 6
            x = (-dMPhi1-1)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 7
            x = (-dMPhi1)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 8
            x = (-dMPhi1+1)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 9
            x = (-dMPhi1+2)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 10
            x = (-dMPhi1+2)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 11
            x = (-dMPhi1+2)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 12
            x = (-dMPhi1+2)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 13
            x = (-dMPhi1+1)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 14
            x = (-dMPhi1)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 15
            x = (-dMPhi1-1)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 16
            x = (-dMPhi1-2)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 17
            x = (-dMPhi1-2)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 18
            x = (-dMPhi1-2)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 19
            x = (-dMPhi1-2)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 20
            x = (-dMPhi1-2)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 21
            x = (-dMPhi1-1)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 22
            x = (-dMPhi1)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 23
            x = (-dMPhi1+1)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 24
            x = (-dMPhi1+2)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 25
            x = (-dMPhi1+3)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 26
            x = (-dMPhi1+3)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 27
            x = (-dMPhi1+3)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 28
            x = (-dMPhi1+3)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 29
            x = (-dMPhi1+3)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 30
            x = (-dMPhi1+3)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 31
            x = (-dMPhi1+2)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 32
            x = (-dMPhi1+1)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 33
            x = (-dMPhi1)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 34
            x = (-dMPhi1-1)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 35
            x = (-dMPhi1-2)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 36
            x = (-dMPhi1-3)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 37
            x = (-dMPhi1-3)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 38
            x = (-dMPhi1-3)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 39
            x = (-dMPhi1-3)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 40
            x = (-dMPhi1-3)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 41
            x = (-dMPhi1-3)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 42
            x = (-dMPhi1-3)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 43
            x = (-dMPhi1-2)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 44
            x = (-dMPhi1-1)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 45
            x = (-dMPhi1)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 46
            x = (-dMPhi1+1)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 47
            x = (-dMPhi1+2)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 48
            x = (-dMPhi1+3)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 49
            x = (-dMPhi1+4)/4;
            y = (dMPhi2-4)/4;
            z = 1;
        case 50
            x = (-dMPhi1+4)/4;
            y = (dMPhi2-3)/4;
            z = 1;
        case 51
            x = (-dMPhi1+4)/4;
            y = (dMPhi2-2)/4;
            z = 1;
        case 52
            x = (-dMPhi1+4)/4;
            y = (dMPhi2-1)/4;
            z = 1;
        case 53
            x = (-dMPhi1+4)/4;
            y = (dMPhi2)/4;
            z = 1;
        case 54
            x = (-dMPhi1+4)/4;
            y = (dMPhi2+1)/4;
            z = 1;
        case 55
            x = (-dMPhi1+4)/4;
            y = (dMPhi2+2)/4;
            z = 1;
        case 56
            x = (-dMPhi1+4)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 57
            x = (-dMPhi1+3)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 58
            x = (-dMPhi1+2)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 59
            x = (-dMPhi1+1)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 60
            x = (-dMPhi1)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 61
            x = (-dMPhi1-1)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 62
            x = (-dMPhi1-2)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 63
            x = (-dMPhi1-3)/4;
            y = (dMPhi2+3)/4;
            z = 1;
        case 64
            x = -1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+3)/4;
        case 65
            x = -1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+3)/4;
        case 66
            x = -1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+3)/4;
        case 67
            x = -1;
            y = (dMPhi1)/4;
            z = (dMPhi2+3)/4;
        case 68
            x = -1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+3)/4;
        case 69
            x = -1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+3)/4;
        case 70
            x = -1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+3)/4;
        case 71
            x = -1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+3)/4;
        case 72
            x = (-dMPhi1-3)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 73
            x = (-dMPhi1-2)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 74
            x = (-dMPhi1-1)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 75
            x = (-dMPhi1)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 76
            x = (-dMPhi1+1)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 77
            x = (-dMPhi1+2)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 78
            x = (-dMPhi1+3)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 79
            x = (-dMPhi1+4)/4;
            y = -1;
            z = (dMPhi2+3)/4;
        case 80
            x = 1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+3)/4;
        case 81
            x = 1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+3)/4;
        case 82
            x = 1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+3)/4;
        case 83
            x = 1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+3)/4;
        case 84
            x = 1;
            y = (dMPhi1)/4;
            z = (dMPhi2+3)/4;
        case 85
            x = 1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+3)/4;
        case 86
            x = 1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+3)/4;
        case 87
            x = 1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+3)/4;
        case 88
            x = (-dMPhi1+4)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 89
            x = (-dMPhi1+3)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 90
            x = (-dMPhi1+2)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 91
            x = (-dMPhi1+1)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 92
            x = (-dMPhi1)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 93
            x = (-dMPhi1-1)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 94
            x = (-dMPhi1-2)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 95
            x = (-dMPhi1-3)/4;
            y = 1;
            z = (dMPhi2+3)/4;
        case 96
            x = -1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+2)/4;
        case 97
            x = -1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+2)/4;
        case 98
            x = -1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+2)/4;
        case 99
            x = -1;
            y = (dMPhi1)/4;
            z = (dMPhi2+2)/4;
        case 100
            x = -1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+2)/4;
        case 101
            x = -1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+2)/4;
        case 102
            x = -1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+2)/4;
        case 103
            x = -1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+2)/4;
        case 104
            x = (-dMPhi1-3)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 105
            x = (-dMPhi1-2)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 106
            x = (-dMPhi1-1)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 107
            x = (-dMPhi1)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 108
            x = (-dMPhi1+1)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 109
            x = (-dMPhi1+2)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 110
            x = (-dMPhi1+3)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 111
            x = (-dMPhi1+4)/4;
            y = -1;
            z = (dMPhi2+2)/4;
        case 112
            x = 1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+2)/4;
        case 113
            x = 1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+2)/4;
        case 114
            x = 1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+2)/4;
        case 115
            x = 1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+2)/4;
        case 116
            x = 1;
            y = (dMPhi1)/4;
            z = (dMPhi2+2)/4;
        case 117
            x = 1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+2)/4;
        case 118
            x = 1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+2)/4;
        case 119
            x = 1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+2)/4;
        case 120
            x = (-dMPhi1+4)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 121
            x = (-dMPhi1+3)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 122
            x = (-dMPhi1+2)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 123
            x = (-dMPhi1+1)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 124
            x = (-dMPhi1)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 125
            x = (-dMPhi1-1)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 126
            x = (-dMPhi1-2)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 127
            x = (-dMPhi1-3)/4;
            y = 1;
            z = (dMPhi2+2)/4;
        case 128
            x = -1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+1)/4;
        case 129
            x = -1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+1)/4;
        case 130
            x = -1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+1)/4;
        case 131
            x = -1;
            y = (dMPhi1)/4;
            z = (dMPhi2+1)/4;
        case 132
            x = -1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+1)/4;
        case 133
            x = -1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+1)/4;
        case 134
            x = -1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+1)/4;
        case 135
            x = -1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+1)/4;
        case 136
            x = (-dMPhi1-3)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 137
            x = (-dMPhi1-2)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 138
            x = (-dMPhi1-1)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 139
            x = (-dMPhi1)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 140
            x = (-dMPhi1+1)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 141
            x = (-dMPhi1+2)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 142
            x = (-dMPhi1+3)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 143
            x = (-dMPhi1+4)/4;
            y = -1;
            z = (dMPhi2+1)/4;
        case 144
            x = 1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2+1)/4;
        case 145
            x = 1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2+1)/4;
        case 146
            x = 1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2+1)/4;
        case 147
            x = 1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2+1)/4;
        case 148
            x = 1;
            y = (dMPhi1)/4;
            z = (dMPhi2+1)/4;
        case 149
            x = 1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2+1)/4;
        case 150
            x = 1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2+1)/4;
        case 151
            x = 1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2+1)/4;
        case 152
            x = (-dMPhi1+4)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 153
            x = (-dMPhi1+3)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 154
            x = (-dMPhi1+2)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 155
            x = (-dMPhi1+1)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 156
            x = (-dMPhi1)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 157
            x = (-dMPhi1-1)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 158
            x = (-dMPhi1-2)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 159
            x = (-dMPhi1-3)/4;
            y = 1;
            z = (dMPhi2+1)/4;
        case 160
            x = -1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2)/4;
        case 161
            x = -1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2)/4;
        case 162
            x = -1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2)/4;
        case 163
            x = -1;
            y = (dMPhi1)/4;
            z = (dMPhi2)/4;
        case 164
            x = -1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2)/4;
        case 165
            x = -1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2)/4;
        case 166
            x = -1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2)/4;
        case 167
            x = -1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2)/4;
        case 168
            x = (-dMPhi1-3)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 169
            x = (-dMPhi1-2)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 170
            x = (-dMPhi1-1)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 171
            x = (-dMPhi1)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 172
            x = (-dMPhi1+1)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 173
            x = (-dMPhi1+2)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 174
            x = (-dMPhi1+3)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 175
            x = (-dMPhi1+4)/4;
            y = -1;
            z = (dMPhi2)/4;
        case 176
            x = 1;
            y = (dMPhi1-4)/4;
            z = (dMPhi2)/4;
        case 177
            x = 1;
            y = (dMPhi1-3)/4;
            z = (dMPhi2)/4;
        case 178
            x = 1;
            y = (dMPhi1-2)/4;
            z = (dMPhi2)/4;
        case 179
            x = 1;
            y = (dMPhi1-1)/4;
            z = (dMPhi2)/4;
        case 180
            x = 1;
            y = (dMPhi1)/4;
            z = (dMPhi2)/4;
        case 181
            x = 1;
            y = (dMPhi1+1)/4;
            z = (dMPhi2)/4;
        case 182
            x = 1;
            y = (dMPhi1+2)/4;
            z = (dMPhi2)/4;
        case 183
            x = 1;
            y = (dMPhi1+3)/4;
            z = (dMPhi2)/4;
        case 184
            x = (-dMPhi1+4)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 185
            x = (-dMPhi1+3)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 186
            x = (-dMPhi1+2)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 187
            x = (-dMPhi1+1)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 188
            x = (-dMPhi1)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 189
            x = (-dMPhi1-1)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 190
            x = (-dMPhi1-2)/4;
            y = 1;
            z = (dMPhi2)/4;
        case 191
            x = (-dMPhi1-3)/4;
            y = 1;
            z = (dMPhi2)/4;
        otherwise
            x = 0;
            y = 0;
            z = 0;
    end
end
