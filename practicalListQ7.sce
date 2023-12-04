clc;
image = imread("bike3.png")
image2 = rgb2gray(image)

// b. remove salt and pepper noise
img3 = imnoise(image2,'salt & pepper',0.3)

subplot(2,2,1)
imshow(image)
title("Original image");

subplot(2,2,2)
imshow(img3)
title("salt & pepper noised image");

mask = ones(3,3)/9
disp(mask)

img4 = imfilter(img3,mask)

subplot(2,2,3)
imshow(img4);
title("imfilter filtered image");


figure;
// c. Minimize gaussian noise
image3 = imnoise(image2,'gaussian')

subplot(2,2,1)
imshow(image)
title("Original image");

subplot(2,2,2)
imshow(image3)
title("gaussian noised image");

mask = ones(3,3)/9
disp(mask)

image4 = imfilter(image3,mask)

subplot(2,2,3)
imshow(image4)
title("gaussian filtered image");

// d. median filter
figure;
// Adding some noise 
noisyImage = imnoise(image2, 'salt & pepper', 0.02);


subplot(2,2,1)
imshow(image)
title("Original image");

subplot(2,2,2)
imshow(noisyImage)
title("salt & pepper noised image");

mask = ones(3,3)/9
disp(mask)

// Applying a median filter to remove noise
MedianfilteredImage = median(noisyImage);

subplot(2,2,3)
imshow(MedianfilteredImage);
title("median filtered image");

