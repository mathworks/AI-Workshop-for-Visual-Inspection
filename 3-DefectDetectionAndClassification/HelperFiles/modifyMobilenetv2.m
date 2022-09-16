function lgraph = modifyMobilenetv2(lgraph,numClasses)

newLearnableLayer = fullyConnectedLayer(numClasses, "Name","new_fc","WeightLearnRateFactor",10,"BiasLearnRateFactor",10);
lgraph = replaceLayer(lgraph,"Logits",newLearnableLayer);        
newClassLayer = classificationLayer("Name","new_classoutput");
lgraph = replaceLayer(lgraph,"ClassificationLayer_Logits",newClassLayer);