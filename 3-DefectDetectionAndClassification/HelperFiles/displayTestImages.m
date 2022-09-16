function displayTestImages(imdsTest,YPred,YTrue,imgNum,idx)

figure
for i = 1:size(idx,2)
    subplot(ceil(sqrt(imgNum)),ceil(sqrt(imgNum)),i)
    I = readimage(imdsTest,idx(i));
    imshow(I)
    label = YPred(idx(i));
    if YPred(idx(i)) == YTrue(idx(i))
        title(label,'Color','#77AC30');
    else
        title(label,'Color','#A2142F');
    end
end