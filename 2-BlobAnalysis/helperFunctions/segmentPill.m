function BW = segmentPill(RGB)
% Convert RGB image to chosen color space
I = RGB;

% Define thresholds for channel 1 based on histogram settings
channel1Min = 170.000;
channel1Max = 255.000;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 110.000;
channel2Max = 255.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 110.000;
channel3Max = 255.000;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;
end
