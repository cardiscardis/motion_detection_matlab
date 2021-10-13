function result = videomotiondetection(bgframe, currentframe, thres, are)
 result = 0
 bgframe = rgb2gray(bgframe);
 currentframe = rgb2gray(currentframe);
 bgsubtracted = imsubtract(bgframe, currentframe);

 imagebinary = bgsubtracted < thres;
 imagebinary = imcomplement(imagebinary);
 imagebinary = medfilt2(imagebinary, [5 5]);
 
 [l num] = bwlabel(imagebinary);
 stats = regionprobs(l, 'all');

 for i =1:num
  blobarea = stats(i).Area;
  if blobarea > area
   result = 1;
  end
end


end