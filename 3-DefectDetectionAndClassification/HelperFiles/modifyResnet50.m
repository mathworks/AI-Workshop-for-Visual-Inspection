function lgraph = modifyResnet50(lgraph,numClasses)

newLearnableLayer = fullyConnectedLayer(numClasses, "Name","new_fc","WeightLearnRateFactor",10,"BiasLearnRateFactor",10);
lgraph = replaceLayer(lgraph,"fc1000",newLearnableLayer);        
newClassLayer = classificationLayer("Name","new_classoutput");
lgraph = replaceLayer(lgraph,"ClassificationLayer_fc1000",newClassLayer);