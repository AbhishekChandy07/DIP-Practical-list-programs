
im=imread("car1.jpg");

//translation
mat=[1 0 0;...
    0 1 0;...
    70 70 1];
t= imtransform(im,mat,'affine');
subplot(2,3,1);
imshow(t);
title("TRANSLATION");

//scaling
mat=[2 0 0;...
    0 2 0;...
    0 0 1];
s= imtransform(im,mat,'affine');
subplot(2,3,2);
imshow(s);
title("SCALING");

//rotation
mat=[cosd(30) sind(30) 0;...
    -sind(30) cosd(30) 0;...
    0 0 1];
r= imtransform(im,mat,'affine');
subplot(2,3,3);
imshow(r);
title("ROTATION");

//shrinking image

subplot(2, 3, 4);
imshow(im);
title('Original Image');

//Define scaling factors for shrinking and zooming
shrinkFactor = 0.5;  
zoomFactor = 2;      

//Create affine transformation matrices for shrinking and zooming
shrinkMat = [shrinkFactor 0 0; 0 shrinkFactor 0; 0 0 1];
zoomMat = [zoomFactor 0 0; 0 zoomFactor 0; 0 0 1];

//Apply the shrinking transformation using imtransform
shrunkImage = imtransform(im, shrinkMat, 'affine');

// shrunk image
subplot(2, 3, 5);
imshow(shrunkImage);
title('Shrunk Image');

//Apply the zooming transformation using imtransform
zoomedImage = imtransform(im, zoomMat, 'affine');

//Display the zoomed image
subplot(2, 3, 6);
imshow(zoomedImage);
title('Zoomed Image');
