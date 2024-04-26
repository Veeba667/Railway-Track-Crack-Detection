function filledImage = fillHoles(image)
    filledImage = imfill(image, 'holes');
end
