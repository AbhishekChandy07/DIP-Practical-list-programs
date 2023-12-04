//Question 1 practical list

//b. Read and display an image
im=imread("imgcar.jpg");
subplot(4,4,1);
imshow(im);


//c. Resize image
imgResize=imresize(im,[100,100]);
//this is used to resize pixels of the image
//or
//imgResize=imresize(im,[100,100],'bicubic');
subplot(4,4,2);
imshow(imgResize);
title("resized Image");


//d. convert colored image into gray scale image
grayImg=rgb2gray(im);
subplot(4,4,3);
imshow(grayImg);
title('Grayscale Image');


//e. convert color/gray scale image into black and white image
threshold = 150; // we can adjust this threshold value as needed
bw_image = grayImg > threshold;
subplot(4, 4, 4);
imshow(bw_image);
title('Black and White Image');


//f. Draw Image profile
profileImg=improfile(im);
subplot(4,4,5);
imshow(profileImg);


//g.separate color image in three R,G, and B Planes
//Extraction of Red, Green, and Blue planes
redImgPlane = im(:, :, 1);
greenImgPlane = im(:, :, 2);
blueImgPlane = im(:, :, 3);
subplot(4,4,6);
imshow(blueImgPlane);
title("blue plane image");
subplot(4,4,7);
imshow(greenImgPlane);
title("green plane image");
subplot(4,4,8);
imshow(redImgPlane);
title("red plane image");

[R, C] =size(im);
//here values of R(rows) is 5070 and C(columns) is 3353
//to get only red , only green and only blue images
Rim=zeros(R,C,3);
Gim=zeros(R,C,3);
Bim=zeros(R,C,3);

Rim(:,:,1)=im(:, :, 1);
Gim(:,:,2)=im(:, :, 2);
Bim(:,:,3)= im(:, :, 3);
subplot(4,4,9);
imshow(Rim);
title("red scale image");
subplot(4,4,10);
imshow(Gim);
title("green scale image");
subplot(4,4,11);
imshow(Bim);
title("blue scale image");


//h. Create color image using R,G and B three separate planes
colorImage=cat(3,redImgPlane,greenImgPlane, blueImgPlane);
subplot(4,4,12)
imshow(colorImage);
title('RGB colored Image');


//g. write given 2D data in image file
imwrite(colorImage, 'imgCar01.jpg');
//or
// Create a sample 2-D data (matrix)
data = [1, 2, 3; 4, 5, 6; 7, 8, 9];
// Choose the filename and format (e.g., PNG or JPG)
filename = 'outputImg.png';
// Write the 2-D data to an image file
imwrite(data, filename);
subplot(4,4,13);
im1=imread("outputImg.png");
imshow(im1);
title("output image");

