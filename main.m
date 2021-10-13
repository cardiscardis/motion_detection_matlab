clc; clear; close all;
camObj = webcam();
thres = 30;
area = 4000;
bgframe = imread('bg.bmp')

while(1)

 currentframe = snapshot(camObj);
 imshow(img);
 result = videomotiondetection(bgframe, currentframe, thres, are);
 
 if result = 1
    disp('Motion detected');  
    imwrite(currentframe, 'motiondetected.jpg');
    pathname = pwd;
    attachedfilename = strcat(pwd, '\', 'motiondetected.jpg');
    disp('sending email');
    sendim(attachedfilename);
 else
  disp('Motion not detected');

end