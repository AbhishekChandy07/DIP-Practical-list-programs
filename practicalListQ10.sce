clc;
img = imread("dog.jpg")
img1 = rgb2gray(img)
img1=mat2gray(img1)
img2 = edge(img1,'sobel')
img3 = edge(img1,'prewitt')
img4 = edge(img1,'log')

subplot(2,2,1)
imshow(img2)

subplot(2,2,2)
imshow(img2)

subplot(2,2,3)
imshow(img3)

subplot(2,2,4)
imshow(img4)

figure;
imshow(img);
