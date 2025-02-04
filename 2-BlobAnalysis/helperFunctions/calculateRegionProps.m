function [regProps, propNames] = calculateRegionProps(BW_in)

properties = regionprops('table', BW_in, {'Area', 'Circularity', 'Eccentricity', 'EquivDiameter', 'Perimeter'});
[~, maxInd] = max(properties.Area);

regProps(:,1) = properties{maxInd, 1}; % Area
regProps(:,2) = properties{maxInd, 2}; % Eccentricity
regProps(:,3) = properties{maxInd, 3}; % Circularity
regProps(:,4) = properties{maxInd, 4}; % EquivDiameter
regProps(:,5) = properties{maxInd, 5}; % Perimeter


% Extract property names as string array
columnNames = properties.Properties.VariableNames;
propNames = string(columnNames);
