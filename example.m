% This script shows the use of the code ...
% ... it simply takes into account an image
% and outputs a saliency maps
% code written in 2007 by Matei Mancas during his PhD Thesis
% As usual ... this is provided with no waranty and if you are not happy with it, we are not repsonsible :-)
% 
% if you use this code please cite this paper :
% M. MANCAS, 2009, "Relative Influence of Bottom-Up and Top-Down Attention", Attention in Cognitive Systems, Lecture Notes in Computer Science, Springer Berlin / Heidelberg, 
% ISSN 0302-9743 (Print) 1611-3349 (Online), Volume 5395/2009, DOI 10.1007/978-3-642-00582-4, ISBN 978-3-642-00581-7, February 2009.


I = im2double(imread('1.jpg'));
R = Rare2007(I);

figure
subplot(131), imagesc(I), title('Initial image')
subplot(132), imagesc(R), title('Raw saliency map')
subplot(133), imagesc(imfilter(R,ones(20)/400,'symmetric')), title('Smoothed saliency map... if you want to compare this model to others you should use this kind of output')
