img = [0 0 0 0 0 0 0 1 1 0;
       1 0 0 1 0 0 1 0 0 1;
       1 0 0 1 0 1 1 0 0 0;
       0 0 1 1 1 0 0 0 0 0;
       0 0 1 1 1 0 0 1 1 1];
% fit the image to window while showing
imshow(img, 'InitialMagnification', 'fit')
S1 = img(1:4,2:5);
S2 = img(1:4,6:9);
fprintf('%u nonzeros in S1, %u nonzeros in S2\n', nz_count(S1), nz_count(S2));
load('S.mat','S');
fprintf('%u nonzeros in the file\n', nz_count(S));

function zeros = nz_count(S)
    c = S~=0;
    zeros = sum(c(:));
end

% C=S==0
% sum(C(:))