function displayTrainingProgress(networkSelector)

figure
if networkSelector == "squeezenet"
    imshow("networkTrainedSqueeze.png")
elseif networkSelector == "mobilenetv2"
    imshow("networkTrainedMobile.png")
elseif networkSelector == "googlenet"
    imshow("networkTrainedGoogle.png")
elseif networkSelector == "resnet50"
    imshow("networkTrainedResnet50.png")
end