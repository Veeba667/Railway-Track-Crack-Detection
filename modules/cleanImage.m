function cleanedImage = cleanImage(image)
    cleanedImage = bwmorph(image, 'clean', inf);
end
