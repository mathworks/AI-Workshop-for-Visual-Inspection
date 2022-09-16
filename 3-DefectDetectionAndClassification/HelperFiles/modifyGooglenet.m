function lgraph = modifyGooglenet(lgraph,numClasses)

newLearnableLayer = fullyConnectedLayer(numClasses, "Name","new_fc","WeightLearnRateFactor",10,"BiasLearnRateFactor",10);
lgraph = replaceLayer(lgraph,"loss3-classifier",newLearnableLayer);        
newClassLayer = classificationLayer("Name","new_classoutput");
lgraph = replaceLayer(lgraph,"output",newClassLayer);