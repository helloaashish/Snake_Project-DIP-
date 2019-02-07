% Aashish Pandey
% aashishpandey@my.unt.edu

% Dillon McDonald
% dillonmcdonald@my.unt.edu

function [x,y]=snake_manual_input(i,np,style)

disp('')
disp('Click around the image then press enter to connect the last point to the first point.')
disp('')
figure
imshow(i)

% Call myginput function

[y1,x1]=myginput; 
x=x1;
y=y1;

% Close the snake

[keep,~]=size(x);
x(keep+1)=x(1);

[keep,~]=size(y);
y(keep+1)=y(1);

% Close image without snake overlay

close gcf

% Call the interparc function

p=interparc(np,y,x,'linear'); 
x=p(:,2); 
y=p(:,1);

% Display new image with snake overlay

figure 
imshow(i)
hold on
plot(y,x,style)