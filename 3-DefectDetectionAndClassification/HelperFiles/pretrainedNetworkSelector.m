function [net,lgraph] = pretrainedNetworkSelector(networkSelector,enableNetworkTraining,numClasses)

if networkSelector == "squeezenet"
    net = squeezenet;
    lgraph = layerGraph(net);

    type modifySqueezenet.m
    lgraph = modifySqueezenet(lgraph,numClasses);

    if ~enableNetworkTraining
        load("networkTrainedSqueeze.mat");
        net = networkTrainedSqueeze;
    end

elseif networkSelector == "mobilenetv2"
    net = mobilenetv2;
    lgraph = layerGraph(net);
    
    type modifyMobilenetv2.m
    lgraph = modifyMobilenetv2(lgraph,numClasses);

    if ~enableNetworkTraining
        load("networkTrainedMobile.mat");
        net = networkTrainedMobile;
    end

elseif networkSelector == "googlenet"
    net = googlenet;
    lgraph = layerGraph(net);
    
    type modifyGooglenet.m
    lgraph = modifyGooglenet(lgraph,numClasses);

    if ~enableNetworkTraining
        load("networkTrainedGoogle.mat");
        net = networkTrainedGoogle;
    end

elseif networkSelector == "resnet50"
    net = resnet50;
    lgraph = layerGraph(net);
    
    type modifyResnet50.m
    lgraph = modifyResnet50(lgraph,numClasses);

    if ~enableNetworkTraining
        load("networkTrainedResnet50.mat");
        net = networkTrainedResnet50;
    end

end