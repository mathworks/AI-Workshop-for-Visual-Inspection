function [normalScores, anomalyScores, flipVec] = calculateScores(normalValues,anomalyValues)

columnsToFlip = mean(normalValues) > mean(anomalyValues);
flipVec = -2*columnsToFlip+1;

normalScores = flipVec.*normalValues;
anomalyScores = flipVec.*anomalyValues;
