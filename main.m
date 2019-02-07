% Aashish Pandey
% aashishpandey@my.unt.edu

% Dillon McDonald
% dillonmcdonald@my.unt.edu

% Start of main

close all
clear variables
clc

%---------------

i=imread("rose512.tif")
[x,y]=snake_manual_input(i,500,'bo-')
snake_display(-x,y,'bo-')