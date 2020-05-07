#!/bin/bash
echo "running a visualization on data"

echo -n "Enter index to visualize > "
read ind

#this line has a particular index
#python kitti_object.py -d /media/carter/a317ae96-354a-4690-9708-026380465d2d/Kitti_dataset/object  --show_lidar_with_depth --img_fov --const_box --vis --show_image_with_boxes --ind 100 

#visualizes all from the begining-- ground truth only -- press enter to show next image & cloud
#python kitti_object.py -d /media/carter/a317ae96-354a-4690-9708-026380465d2d/Kitti_dataset/object  --show_lidar_with_depth --img_fov --const_box --vis --show_image_with_boxes 

# show ground truth with the predicted- PointRCNN
#echo "PointRCNN"
#python kitti_object.py -p --preddir /home/carter/Desktop/Viz_Pred/output1_PointRCNN/data -d /media/carter/a317ae96-354a-4690-9708-026380465d2d/Kitti_dataset/object  --show_lidar_with_depth --img_fov --const_box --vis --show_image_with_boxes --ind $((ind))

# show ground truth with the predicted- F-convnet
#python kitti_object.py -p --preddir /home/carter/Desktop/Viz_Pred/data_Fconv_alpha -d /media/carter/a317ae96-354a-4690-9708-026380465d2d/Kitti_dataset/object  --show_lidar_with_depth --img_fov --const_box --vis --show_image_with_boxes --ind $((ind))


# show ground truth with the predicted- F-convnet refined 
echo "F-ConvNet - Refined"
python kitti_object.py -p --preddir /home/carter/Desktop/Viz_Pred/data_FCN_refine -d /media/carter/a317ae96-354a-4690-9708-026380465d2d/Kitti_dataset/object  --show_lidar_with_depth  --ind $((ind))  --vis    # --img_fov --const_box --vis --show_image_with_boxes --ind 8 --pc_label False



