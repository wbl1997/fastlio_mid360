gnome-terminal -x bash -c "roscore" & sleep 2

gnome-terminal -x bash -c "
source /home/data_zhuang/code/fastlio_ws/devel/setup.bash
roslaunch fast_lio mapping_mid360.launch
" & sleep 2

gnome-terminal -x bash -c "
rosbag play /mnt/d/data/0507/data1_*.bag -r 3 -s 0
"