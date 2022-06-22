#include "ros/ros.h"
#include "service_pkg/DriveReqRes.h"
#include <sensor_msgs/Image.h>

ros::ServiceClient client;	// Global Service Client Object

// Function to call the command_robot service
void drive_robot(float lin_x, float ang_z)
{
    ROS_INFO("Driving the Robot towards the ball");
 
    service_pkg::DriveReqRes srv;	// Object for the service message
    
    // Setting velocities
    srv.request.lin_vel = lin_x;	
    srv.request.ang_vel = ang_z;

    //Call the service_pkg/command_robot service
    if(client.call(srv))	{
       ROS_INFO("Request cleared with the Response Message");
       std::cout<<srv.response;
    }	else if(!client.call(srv))	{
       ROS_ERROR("Failed to call service command_robot");
    }
}

// Subscriber callback function for identifying the presence of white ball and setting velocity //values
void process_image_callback(const sensor_msgs::Image img)	{

    int white_pixel = 255;

    bool ball_present = false;
    int  seen_point = 0;
    int pixel_location ;
    float lv = 0;
    float av = 0;

    for(int i = 0; i < img.height * img.step; i+= 3) {

       if (img.data[i] == white_pixel && img.data[i+1] == white_pixel && img.data[i+2] == white_pixel) {
           
           ball_present = true;
           seen_point = i;
           pixel_location =(seen_point % img.step);
           
           if (pixel_location < img.step/3) {           // Drive left
           	lv = 0.5;
           	av = 0.8;             
           }
           else if (pixel_location >= img.step/3 && pixel_location < 2*(img.step/3)) {     // Drive straight
           	lv = 0.5;
           	av = 0.0;
           }
           else if (pixel_location >= 2*(img.step/3)) {     // Drive Right
           	lv = 0.5;
           	av = -0.8; 
           }
           break; 
        }
    }

    if (ball_present == false) {        // Stop bot if no ball seen
           	lv = 0.0;
           	av = 0.0; 
    }
    
    drive_robot(lv,av);	// Calling the function that requests
}

int main(int argc, char** argv)	{
    
    // Initialize the node and create a handle to it
    ros::init(argc, argv, "client");
    ros::NodeHandle n;

    // Define a client service capable of requesting services from command_robot
    client = n.serviceClient<service_pkg::DriveReqRes>("/service_pkg/command_robot");

    // Subscribe to /camera/rgb/image_raw topic processthe imagein the callback function
    ros::Subscriber sub1 = n.subscribe("/camera/rgb/image_raw", 10, process_image_callback);

    // Handle ROS communication events
    ros::spin();

    return 0;
}
