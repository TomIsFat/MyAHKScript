clear
clc
corn_gray = imread('test.jpg');
imshow(corn_gray)
location = []

%�궨


%ѡȡ���أ�����ʵ������
while 1
    [x,y] = ginput(1)
    if x<0
        break
    end
    location = [location;[x y]]
end
formatOut = 'yyyymmddTHHMMSS';
filename = datestr(now,formatOut)
title = {'X����','Y����'}
xlswrite(filename,title)
sheet = 1;
xlRange = 'A2';
xlswrite(filename,location,sheet,xlRange)
