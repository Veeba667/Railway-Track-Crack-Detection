function preprocessedImage = preprocessImage(image)
    grayImage = rgb2gray(image);
    equalizedImage = histeq(grayImage);
    preprocessedImage = equalizedImage;
end
