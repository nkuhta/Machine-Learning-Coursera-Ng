
######################################
##########  Plotting Data  ###########
######################################

t=[0:0.01:1];

y1=sin(2*pi*4*t);

%  Plot the t and y1 data
plot(t,y1);

y2=cos(2*pi*4*t);

%  Replace plot with t and y2 data
plot(t,y2);

%  close all figures
close all

%  Now let's put both plots together
plot(t,y1);

%  place figures on top of old ones
hold on

plot(t,y2,'r');

%  Plot Labels
xlabel('time')
ylabel('value')
legend('sin','cos')
title('my plot')

%  print to a png file 
print -dpng 'testPlot.png'

close all

%  Specify a figure number
figure(1); plot(t,y1);
figure(2); plot(t,y2);

######################################
#########  Subplot Command  ##########
######################################

%  Divides plot into a 1x2 grid, and access first element
subplot(1,2,1)
%  plot t,y1 into the first element
plot(t,y1)

%  Divides plot into a 1x2 grid, and access second element
subplot(1,2,2)
%  plot t,y1 into the second element
plot(t,y2)
%  set second element bounds at x=(0.5,1) and y=(-1,1)
axis([0.5 1 -1 1])

close all

A=magic(25);

%  Matrix Density Map - ImageSC

imagesc(A)

%  comma chaining function call
imagesc(A),colorbar,colormap gray;

%  another comma chaining call
a=1,b=2,c=3 %  or you can separate with ; and not print

