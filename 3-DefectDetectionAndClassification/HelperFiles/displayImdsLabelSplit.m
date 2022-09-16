function displayImdsLabelSplit(imdsTrain,imdsVal,imdsTest)

trainLabels = countlabels(imdsTrain.Labels);
valLabels = countlabels(imdsVal.Labels);
testLabels = countlabels(imdsTest.Labels);
bar([trainLabels.Count';valLabels.Count';testLabels.Count'])
set(gca,'xticklabel',["Training Images", "Validation Images", "Test Images"])
legend(["Chip" "Dirt" "Discoloration" "Normal" "Text"])