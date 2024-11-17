function [] = Ex1_batch()
    for i=1:6
        name = strcat('c_', num2str(i), '.jpg');
        name_out = strcat('c_', num2str(i), '.bmp');
        I = imread(name);
        I_out = Process(I);
        imwrite(I_out, name_out);
    end
end

function I_out = Process(I)
    im = imresize(I, 0.75);
    im2 = fliplr(im(:,size(im,2)/2:end,:));
    I_out = imrotate(im2, 90);
end