//Question 2 write and execute image programs using point processing method

//a. Obtain  negative image
im =imread("img1.png");
subplot(3,2,1);
imshow(im);
title("original image");

[m,n]=size(im);

//a. obtain negative image
//calculating negative image
negImg = 255 - im;
subplot(3,2,2);
imshow(negImg);
title('negative image');


//b. Obtain flip image

//calculating horizontally flipped image
flippedImg=flipdim(im,1);

//1 :- use for flipping vertically
//2 :- use forf flipping horizontally

subplot(3,2,3);
imshow(flippedImg);
title('flipped image');

//c. thresholding
threshold_value = 100;
binary_image= (im > threshold_value)*255;
//display binary image
subplot(3,2,4);
imshow(binary_image);
title("binary Image");


//d. contrast Streaching 
I =imread("bike2.png");
J = imadjust(I,[0 0.5],[0 1]);
subplot(3,2,5);
imshow(I);
subplot(3,2,6);
imshow(J);
 
