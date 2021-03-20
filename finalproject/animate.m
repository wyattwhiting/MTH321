% parameters for image
RE_MIN = -1.7;
RE_MAX =  1.7;
IM_MIN = -1.7;
IM_MAX =  1.7;
RE_RES = 301;
IM_RES = 301;
C = complex(0,0);
MAX_ITER = 81;
POW = 2;  

fileS = './images/test4/';
fileE = '.png';
paraS = -1;
paraE = 1;
frames = 100;
deltaP = (paraE - paraS)./frames;
fun = @(x) complex(x, x);
% create vector of values to easy passing
vec = [RE_MIN RE_MAX RE_RES IM_MIN IM_MAX IM_RES C MAX_ITER POW];

for ii = 1:1:frames
    filepath = [fileS sprintf('%03d', ii) fileE];
    vec(7) = fun(paraS + ii*deltaP);
    imwrite( ind2rgb(im2uint8(mat2gray(param_to_image(vec))), parula(256)), filepath);
end