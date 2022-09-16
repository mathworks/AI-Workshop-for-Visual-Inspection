function trainingProperties = setTrainingProperties(networkSelector)
if networkSelector == "squeezenet"
    trainingProperties.MaxEpochs = 8;
elseif networkSelector == "mobilenetv2"
    trainingProperties.MaxEpochs = 2;
elseif networkSelector == "googlenet"
    trainingProperties.MaxEpochs = 4;
elseif networkSelector == "resnet50"
    trainingProperties.MaxEpochs = 2;
end