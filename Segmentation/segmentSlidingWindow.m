% Copyright 2011-2014 Ulf Blanke, Swiss Federal Institute of Technology (ETH) Zurich, Switzerland
% Copyright 2011-2014 Andreas Bulling, Max Planck Institute for Informatics, Germany
%
% --------------------------------------------------------------------
% This file is part of the ActRecTut Matlab toolbox.
%
% ActRecTut is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% ActRecTut is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with HARPS. If not, see <http://www.gnu.org/licenses/>.
% --------------------------------------------------------------------

function segments = segmentSlidingWindow(data, wSize, sSize)
    len = size(data,1);
    wCurr = 1;
    segments = []; % todo: init to make faster
    while (wCurr<len-wSize)
        segments = [segments; wCurr wCurr+wSize]; % start stop
        wCurr = wCurr+sSize; % step forward
    end
    segments = [segments; wCurr len]; % add residual
end

