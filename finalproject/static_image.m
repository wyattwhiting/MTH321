% parameters for image
% bounds for plotting
RE_MIN = -1.7;
RE_MAX =  1.7;
IM_MIN = -1.7;
IM_MAX =  1.7;
% real and imaginary resolution
RE_RES = 1001;
IM_RES = 1001;
% complex constant C
phi = (1 + sqrt(5)) / 2;
C = complex(-0.6, 0.9);
% maximum number of iterations for algorithm to run
MAX_ITER = 100;
% power for Z
POW = 2;
% create vector of values to easy passing
vec = [RE_MIN RE_MAX RE_RES IM_MIN IM_MAX IM_RES C MAX_ITER POW];

% below is the non-saving version for exploring images.
% It displays the image created by all the given parameters
imagesc(param_to_image(vec))
% uncomment line below to save image automatically
% WARNING: requires image processing toolkit.
% imwrite( ind2rgb(im2uint8(mat2gray(param_to_image(vec))), parula(256)), './complexPow.png');