function h = plotImagePair(img1, img2, caption1, caption2, points1, points2)
% Quick wrapper function for plotting pairs of images with captions and
% feature points
h = figure;
subplot(1,2,1);
imshow(img1);
title(caption1);
if nargin > 4
    hold on;
    plot(selectStrongest(points1, 100));
    hold off;
end

subplot(1,2,2);
imshow(img2);
title(caption2);
if nargin > 5
    hold on;
    plot(selectStrongest(points2, 300));
    hold off;
end
end


