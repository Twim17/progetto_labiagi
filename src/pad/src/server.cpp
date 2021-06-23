#include "ros/ros.h"
#include "geometry_msgs/PoseStamped.h"
#include "/home/me/labiagi_2020_21/workspaces/srrg2_labiagi/devel/include/srrg2_core_ros/PlannerStatusMessage.h"
#include "pad_msgs/ServerMenu.h"

#include <string>
#include <iostream>
#include <stdio.h>
#include <sstream> 
using namespace std;

bool occupato=false; //variabile che mi indica se il robot è occupato

bool ServerMenu(pad_msgs::ServerMenuRequest &request,
		 	pad_msgs::ServerMenuResponse &response){
		 		ROS_INFO("SERVERMENU CALLED");
				cout << request.clientReq << endl;
				response.serverRes = "yo bro";
				return true;
}

void stato_robot(const srrg2_core_ros::PlannerStatusMessage::ConstPtr& status){
	if(status->status!="idle" && status->distance_to_global_goal<0.5){
		cout << "Robot arrivato" << fflush;
	}

}

int main(int argc, char** argv){
	//inizializzo il nodo e creo il nodehandle
	ros::init(argc, argv, "pad_server");
	ros::NodeHandle n;

	// ros::Publisher goal_pub = n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1000); //Goal publisher
	// ros::Subscriber status_sub = n.subscribe("/planner_status", 1000, stato_robot); //Subscribe al topic che indica lo stato del robot

	ros::ServiceServer menu = n.advertiseService("Menu", ServerMenu);



   
    ros::spin();
	return 0;
}