img = imread("cat.jpg");
subplot(3,3,1);
imshow(img);
title("Original Image") ;

filter = fspecial('gaussian');
imf = imfilter(img, filter);
subplot(3,3,2);
imshow(imf);
title("Image after applying Gaussian");

filter2 = fspecial('sobel');
imf = imfilter(img, filter2);
subplot(3,3,3);
imshow(imf);
title("Image after applying sobel");

filter3 = fspecial('prewitt');
imf = imfilter(img, filter3);
subplot(3,3,4);
imshow(imf);
title("Image after applying Prewitt");

filter4 = fspecial('laplacian');
imf = imfilter(img, filter4);
subplot(3,3,5);
imshow(imf);
title("Image after applying Laplacian");

filter5 = fspecial('average');
imf = imfilter(img, filter5);
subplot(3,3,6);
imshow(imf);
title("Image after applying Average filter");

filter6 = fspecial('log');
imf = imfilter(img, filter6);
subplot(3,3,7);
imshow(imf);
title("Image after applying Log filter");
