function cleanedImage = removeSmallRegions(image)
    cleanedImage = bwareaopen(image, 11000, 8);
end
