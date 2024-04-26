clc;
clear all;
close all;

% Import functions from modules
addpath('modules');

% Prompt the user to enter the path to the image
imagePath = input('Enter the path to the image: ', 's');
imagePath = "assets/" + imagePath;

% Read the image
readImageFunc = @readImage;
inputImage = readImageFunc(imagePath);
imshow(inputImage);

% Preprocess the image
preprocessImageFunc = @preprocessImage;
preprocessedImage = preprocessImageFunc(inputImage);
figure, imshow(preprocessedImage), title('Image after contrast adjustment');

% Binarize the image
binarizeImageFunc = @binarizeImage;
binaryImage = binarizeImageFunc(preprocessedImage);
figure, imshow(binaryImage), title('Binary Image');

% Clean the image
cleanImageFunc = @cleanImage;
cleanedImage = cleanImageFunc(binaryImage);
figure, imshow(cleanedImage), title('Image after removing isolated pixels');

% Fill holes in the image
fillHolesFunc = @fillHoles;
filledImage = fillHolesFunc(cleanedImage);
figure, imshow(filledImage), title('Image after filling holes');

% Perform morphological opening
performOpeningFunc = @performOpening;
openedImage = performOpeningFunc(filledImage);
figure, imshow(openedImage), title('Image after morphological opening');

% Remove small regions
removeSmallRegionsFunc = @removeSmallRegions;
removedSmallRegions = removeSmallRegionsFunc(openedImage);
figure, imshow(removedSmallRegions), title('Image after removing small regions');

% Perform majority filtering
performMajorityFilteringFunc = @performMajorityFiltering;
majorityImage = performMajorityFilteringFunc(removedSmallRegions);
figure, imshow(majorityImage), title('Image after majority filtering');

% Find connected components
findConnectedComponentsFunc = @findConnectedComponents;
connectedComponents = findConnectedComponentsFunc(majorityImage);
disp(connectedComponents);

% Display results
displayResultsFunc = @displayResults;
displayResultsFunc(connectedComponents);
