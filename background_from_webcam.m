%save background
clc; clear;

camObj = webcam();
preview(camObj);

img = snapshot(camObj);
imshow(img);
imwrite(img, 'bg.bmp');