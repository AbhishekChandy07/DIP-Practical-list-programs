//q5 part a

img = imread("cat.jpg");
I = rgb2gray(img);

Iequal = imhistequal(I);

[qtd, level] = imhist(I);

[qtde, levele]= imhist(Iequal);

subplot(2,2,1);

imshow(I);

subplot(2,2,2);

bar(level, qtd);

subplot(2,2,3);

imshow(Iequal);

subplot(2,2,4);

bar(levele, qtde);

// Q5 part b

img = imread("cat.jpg");

gray = rgb2gray(img);

[M,N]= size(gray)

arr = zeros(256,1, 'uint32'); 
arr1= zeros(256,1, 'uint32');

for i=1:256
    arr1(i) =i;
end

for i=1:M

    for j=1:N

        arr(gray(i,j)+1) = (1+arr(gray(i,j)+1)); 
    end

end

bar(arr1, arr); // Create a vertical bar graph 
xlabel('0-255'); // Label the x-axis 
ylabel('frequency'); // Label the y-axis

//equalization of image

img =imread("cat.jpg"); 
[M,N]= size(img); 
subplot(2,2,1);
imshow(img)

//gray image

gray =rgb2gray(img);
subplot(2,2,2);
imshow(gray)

//for getting frequency of gray Levels

arr = zeros(256,1, 'uint32');

arr1 = zeros(256,1, 'uint32');

for i=1:256
    arr1(i) =i; 
end

//getting gray value of a pixel, and increment the //arr[ gray value ]

for i=1:M

    for j=1:N 
       d= gray(i,j);
       arr (d+1)= arr(d+1)+1;
    end

pd = zeros(256,1, 'double');

//probability //distribution of gray Levels

for i=1:256

pd(i)=double(arr(i)) / double (M*N)
end

cdd =zeros(256,1, 'double');

temp =0.0

//cumulative prob. Distribution

for i=1:256 
    temp=temp + pd(i)
     cdd (i) = temp;
    
end


fin= zeros(256,1, 'double');

//multiplying with max gray Level

for i=1:256

fin(i)= round(cdd(i)*255) 
end
bar(arr1, fin); // Create a vertical bar graph 
xlabel('0-255'); // Label the x-axis
ylabel('frequency'); // Label the y-axis

img_s =zeros(M,N, 'uint8');

// replacing image pixels with equalized value of gray Levels

for i=1:M 
    for j=1:N

        curr= gray(i,j)

        img_s(i,j)=fin(curr+1)
    end

end

subplot(2,2,3)
imshow(img_s);
