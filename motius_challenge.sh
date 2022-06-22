#!/bin/sh

xterm  -e  "killall gzserver; killall gzclient" &
sleep 1
xterm  -e  "cd $(pwd)/catkin_ws; catkin_make; source devel/setup.bash; roslaunch diffbot world.launch" &
sleep 10
xterm  -e  "cd $(pwd)/catkin_ws; source devel/setup.bash; roslaunch service_pkg service.launch"
