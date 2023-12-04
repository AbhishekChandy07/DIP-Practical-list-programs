inputImage = imread("cat.jpg");
binaryImage = im2bw(inputImage,0.08);
//structuring element
//se = strel('disk', 5);
se1 = imcreatese("rect",10,10);
se2 = imcreatese("ellipse",10,10);
dilatedImage = imdilate(binaryImage, se1);
erodedImage = imerode(binaryImage, se2);

subplot(2, 2, 1), imshow(inputImage), title('Original Image');
subplot(2, 2, 2), imshow(binaryImage), title('Binary Image');
subplot(2, 2, 3), imshow(dilatedImage), title('Dilated Image');
subplot(2, 2, 4), imshow(erodedImage), title('Eroded Image');
