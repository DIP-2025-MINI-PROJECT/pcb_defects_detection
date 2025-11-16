template = imread('C:\Users\Tanmayi\Documents\MATLAB\pcb_images\pcbimages\originalfinal.jpg');
test = imread('C:\Users\Tanmayi\Documents\MATLAB\pcb_images\pcbimages\originalfinal.jpg');
template = rgb2gray(template);
test = rgb2gray(test);
templateR = imresize(template,[600 1200]);
testR = imresize(test,[600 1200]);
templateF = wiener2(templateR,[5 5]);
testF = wiener2(testR,[5 5]);
optimizer = registration.optimizer.OnePlusOneEvolutionary;
metric = registration.metric.MeanSquares;
tform = imregtform(testF,templateF,'similarity',optimizer,metric);
testReg = imwarp(testF,tform,'OutputView',imref2d(size(templateF)));
D = imabsdiff(templateF,testReg);
BW = imbinarize(D,'adaptive','Sensitivity',0.45);
BW = bwareaopen(BW,30);
BW = imopen(BW,strel('disk',3));
L = bwlabel(BW);
rp = regionprops(L,'Area','Perimeter','Centroid','BoundingBox');
mask = false(size(BW));
centers = [];
bbs = [];
for i = 1:length(rp)
    A = rp(i).Area;
    P = rp(i).Perimeter;
    if P==0, continue; end
    circ = 4*pi*A/(P^2);
    if circ > 0.60 && A >= 40 && A <= 1200
        mask(L==i) = true;
        centers = [centers; rp(i).Centroid];
        bbs = [bbs; rp(i).BoundingBox];
    end
end
mask = bwareaopen(mask,40);
numErrors = size(centers,1);
if numErrors == 0
    status = 'PASS';
else
    status = 'FAIL';
end
figure(1)
sgtitle('PCB Defect Detection - Preprocessing Steps')
tiledlayout(2,3)
nexttile, imshow(template), title('Original Template (Gray)')
nexttile, imshow(test), title('Original Defective (Gray)')
nexttile, imshow(templateF), title('Filtered Template')
nexttile, imshow(testF), title('Filtered Test')
nexttile, imshow(D), title('Difference Image')
nexttile, imshow(BW), title('Binary Before Final Filter')
figure(2)
imshow(mask)
title(['Final Defect Mask | Defects = ' num2str(numErrors)])
figure(3)
defectedColor = repmat(testR,[1 1 3]);
imshow(defectedColor)
hold on
for i = 1:numErrors
    rectangle('Position',bbs(i,:),'EdgeColor','r','LineWidth',2)
    text(bbs(i,1),bbs(i,2)-10,num2str(i),'Color','red','FontSize',12,'FontWeight','bold')
end
hold off
title(['Detected Defects | ' status ' | Count = ' num2str(numErrors)])

