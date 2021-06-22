#include "ros/ros.h"
#include "geometry_msgs/PoseStamped.h"
#include "/home/me/labiagi_2020_21/workspaces/srrg2_labiagi/devel/include/srrg2_core_ros/PlannerStatusMessage.h"

void stato_robot(const srrg2_core_ros::PlannerStatusMessage::ConstPtr& status){


}

int main(int argc, char** argv){
	//inizializzo il nodo e creo il nodehandle
	ros::init(argc, argv, "pad_server");
	ros::NodeHandle n;

	ros::Publisher goal_pub = n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1000); //Goal publisher
	ros::Subscriber status_sub = n.subscribe("/planner_status", 1000, stato_robot); //Subscribe al topic che indica lo stato del robot




   
    ros::spin();
	return 0;
}