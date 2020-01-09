function [ y ] = medianfilt( imageWithNoise )

% 中值滤波算法
% 指定模板尺寸
boxSize = 3;
template = zeros(boxSize);

y = imageWithNoise;
[rows, cols] = size(imageWithNoise);
for i = 1:rows-boxSize+1
    for j = 1:cols-boxSize+1
        % 取模板内像素
        template = imageWithNoise(i:i+(boxSize-1),j:j+(boxSize-1));
        % 用中值替换模板中心点像素值
        m = median(template(:));
        y(i+(boxSize-1)/2,j+(boxSize-1)/2) = m;
    end
end
end

