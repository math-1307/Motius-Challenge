# Motius-Challenge
White Ball Follower -  Differential Drive Mobile Robot
**Auhtor:** Mathew Emmanuel Augustine

# Coding Challenge from Motius
## Task
To perform a task in ROS in which one node requests and the other node responds.
In the task files attached, two nodes are created of which
1. one is a **Service Server Node** (Also a publisher)
2. the other is a **Service Client Node** (Also a subscriber)

## Structure of the Nodes
### SERVICE CLIENT NODE [client.cpp](https://github.com/math-1307/Motius-Challenge/blob/main/catkin_ws/src/service_pkg/src/client.cpp)
* Subscribes to /camera/rgb/image_raw
* Identifies the presence of a white ball & its position(Callback function)
* Generates velocity values and
* Requests a service command_robot from server node to move

### SERVICE SERVER NODE [server.py](https://github.com/math-1307/Motius-Challenge/blob/main/catkin_ws/src/service_pkg/src/server.py)
* Receives a request from the command_robot service
* Assigns the velocity values to Twist messages
* Publishes these messages to /cmd_vel topic to move the robot

## SOFTWARE PREREQUISITES
* ROS Noetic Desktop Full (Advised)

## TASK EXECUTION
### Method 1
1. Install xterm using the command sudo apt-get install xterm
2. Navigate to **~/Motius_Chsllenge** and enter the following commands
3. chmod +x motius_challenge.sh
4. ./motius_challenge

### Method 2
1. Navigate to **~/Motius_Chsllenge/catkin_ws** and enter the following commands
2. catkin_make
3. Source the terminal: source devel/setup.bash
4. roslaunch diffbot world.launch
5. Open new terminal and source
6. roslaunch service_pkg service.launch

## WORKING OF THE TASK
Tha Objective is to make the mobile robot autonomously navigate towards the white ball which in turn is manually moved.
https://user-images.githubusercontent.com/107972931/174938401-da59a02f-85f0-4493-9e9e-251eb1abdb87.mp4
[![asciicast](https://github.com/math-1307/Motius-Challenge/blob/main/Related%20Docs/Thumbnail.png)](https://github.com/math-1307/Motius-Challenge/blob/main/Related%20Docs/Ball_Follower.mp4)


