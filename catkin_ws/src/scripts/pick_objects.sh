
#!/bin/sh

# Define workspace variable
path_catkin_ws="/home/workspace/HomeService/catkin_ws"

# Open the workspace, source and launch turtlebot_world.launch
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch my_robot world.launch" &
sleep 5
# Open the workspace, source and launch amcl_demo.launch
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && roslaunch my_robot amcl.launch" &
sleep 10
# Open the workspace, source and launch pick_objects pick_objects_demo
xterm -e "cd ${path_catkin_ws} && source devel/setup.bash && rosrun pick_objects pick_objects"

