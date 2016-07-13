mkdir ~/ros_workspace
cd ~/ros_workspace
mkdir src
cd src
catkin_init_workspace
cd ~/ros_workspace
catkin_make
echo "source ~/ros_workspace/devel/setup.bash" >> ~/.bashrc 
