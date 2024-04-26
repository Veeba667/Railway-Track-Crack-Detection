function openedImage = performOpening(image)
    openedImage = bwmorph(image, 'open');
end
