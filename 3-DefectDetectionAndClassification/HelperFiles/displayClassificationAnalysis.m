function displayClassificationAnalysis(im,scoreGradCAM,scoreLIME,defectClass,classification)

figure

subplot(1,3,1)
imshow(im)
title(classification+" "+defectClass+" classification " )

subplot(1,3,2)
imshow(im2double(im),[])
title("GradCam Analysis")
hold on
imagesc(scoreGradCAM,"AlphaData",0.5)
colormap parula
% colorbar
hold off

subplot(1,3,3)
imshow(im)
title("LIME Analysis")
hold on
imagesc(scoreLIME,"AlphaData",0.5)
colormap jet
% colorbar
hold off