img = imread('car1.jpg');

gray=rgb2gray(img);
[M,N]= size(gray);
arr=zeros(256,1, 'uint32');
arr1=zeros(256,1,'uint32');

for i=1:256
    arr1(i)=i;
end
for i=1:M
    for j=1:N
        arr(gray(i,j)+1)=(1+arr(gray(i,j)+1));
    end
end 
bar(arr1,arr);    //creating a vertical bar graph
xlabel('0-255');  //labeling x-axis
ylabel('frequency'); //labeling y-axis
title("histogram of Image");

figure;
imshow(img);
title("original Image");

//part b

im=imread("car1.jpg");
im=rgb2gray(im);
im=imresize(im,[100,100]);
im=uint16(im);
[r,c]=size(im);
freqn= zeros(1,256);
for i=1:r
    for j=1:c
        freqn(im(i,j)+1)=freqn(im(i,j)+1)+1;
    end
end
figure;
bar(0:255,freqn,"black")

