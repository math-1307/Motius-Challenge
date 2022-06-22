from geometry_msgs.msg import Twist
from service_pkg.srv import DriveReqRes,DriveReqResResponse

import rospy

# Callback function whenever a service is requested
def handle_drive_request(req):
    
    motor_command = Twist();	# Instantiate the predefined Twist message
    
    # Setting velocity Values
    motor_command.linear.x = req.lin_vel ;
    motor_command.angular.z = req.ang_vel;
    
    # Publishing the message
    motor_command_publisher.publish(motor_command);
    
    # Response message
    return DriveReqResResponse("Successfully navigated")

# Initializing the node
rospy.init_node('server') 

# Instantiating a publisher to publish the velocity commands
motor_command_publisher = rospy.Publisher("/cmd_vel", Twist, queue_size = 10)

# Instantiating a service request
service = rospy.Service('/service_pkg/command_robot', DriveReqRes , handle_drive_request) 

rospy.spin() 	# maintain the service open    

