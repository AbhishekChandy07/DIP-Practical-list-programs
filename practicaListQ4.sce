
img1=imread('cat.jpg');  

img=imread('dog2.png'); 
//A) AND operation between two images   

disp(size(img1));
disp(size(img));
[M,N]=size(img1);  

img_s=zeros(M,N,3,'uint8');  

for i =1:M  
    for j=1:N  
        for z =1:3 
            img_s(i,j,z)=bitand(img1(i,j,z),img(i,j,z));  
        end  
    end  
   disp(i)
end  

imshow(img_s);  
title('AND operation');

//B) OR operation between two images  
 

[M,N]=size(img1);  

img=zeros(M,N,3,'uint8');  

img_s=zeros(M,N,3,'uint8');  

for i=1:M 

    for j=1:N  

        for z=1:3  

            img_s(i,j,z) = bitor(img1(i,j,z),img(i,j,z));  

        end  

    end  

end  

imshow(img_s); 

title("OR operation");

//D) NOT operation (negative Image)



[M,N] = size(img1);  

img_s = zeros(M,N,3,'uint8');  

for i=1:M  

    for j=1:N  

        for z=1:3   

            img_s(i,j,z) = ~img(i,j,z)  

        end    

    end   

end  

imshow(img_s)
title("NOT operation");

