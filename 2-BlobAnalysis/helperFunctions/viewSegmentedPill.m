function maskOut = viewSegmentedPill(img,redThreshold,greenThreshold,blueThreshold)

I = img;

redMin = redThreshold(1);
redMax = redThreshold(2);

greenMin = greenThreshold(1);
greenMax = greenThreshold(2);

blueMin = blueThreshold(1);
blueMax = blueThreshold(2);


maskOut = ...
    (I(:,:,1) >= redMin ) & (I(:,:,1) <= redMax) & ...
    (I(:,:,2) >= greenMin ) & (I(:,:,2) <= greenMax) & ...
    (I(:,:,3) >= blueMin ) & (I(:,:,3) <= blueMax);
