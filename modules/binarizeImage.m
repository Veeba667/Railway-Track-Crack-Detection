function binaryImage = binarizeImage(image)
    threshold = graythresh(image);
    binaryImage = imbinarize(image, threshold);
end
