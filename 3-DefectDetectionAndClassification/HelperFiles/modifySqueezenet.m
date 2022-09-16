function lgraph = modifySqueezenet(lgraph,numClasses)

newLearnableLayer = convolution2dLayer([1 1], numClasses, "Name","new_c2d","WeightLearnRateFactor",10,"BiasLearnRateFactor",10);
lgraph = replaceLayer(lgraph,"conv10",newLearnableLayer);    
newClassLayer = classificationLayer("Name","new_classoutput");
lgraph = replaceLayer(lgraph,"ClassificationLayer_predictions",newClassLayer);