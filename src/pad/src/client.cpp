#include "ros/ros.h"
#include "pad_msgs/ServerMenu.h"

#include <string>
#include <iostream>
#include <stdio.h>
#include <sstream> 
using namespace std;



int main(int argc, char** argv){
	//inizializzo il nodo e creo il nodehandle
	ros::init(argc, argv, "pad_client");
	ros::NodeHandle n;

    ros::ServiceClient menuClient = n.serviceClient<pad_msgs::ServerMenu>("Menu");
    
    cout << "SCEGLI UNA OPZIONE:" << endl;
    cout << "1 - LISTA UTENTI" << endl;
    cout << "2 - INSERISCI UTENTE" << endl;
    cout << "3 - PICK AND DELIVERY" << endl;

    pad_msgs::ServerMenu srv;
    cin >> srv.request.clientReq;
    if(menuClient.call(srv)){
        ROS_INFO("%s", srv.response.serverRes.c_str());
    }
    else {
        ROS_ERROR("Failed to call service Menu");
        return 1;
    }
    


    // ros::spin();
	return 0;
}