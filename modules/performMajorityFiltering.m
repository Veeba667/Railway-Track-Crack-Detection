function majorityFiltered = performMajorityFiltering(image)
    majorityFiltered = image;
    for n = 1:6
        majorityFiltered = bwmorph(majorityFiltered, 'majority');
    end
end
