#include "ros/ros.h"
#include "pad_msgs/ServerMenu.h"
#include "std_msgs/String.h"
#include <string>
#include <iostream>
#include <stdio.h>
#include <sstream> 
#define red     		"\x1b[38;5;196m"
#define green   		"\x1b[38;5;46m"
#define yellow  		"\x1b[38;5;11m"
#define normale			"\x1b[0m"
#define purple 			"\x1b[38;5;129m"
using namespace std;
// bool onmenu = true;
int32_t warn = 0;
int check = 0;
void chatterCallBack(const std_msgs::String::ConstPtr& msg){
    cout << yellow;
    cout << msg->data.c_str() << endl << flush;
    cout << normale;
    check=-1;
}

int main(int argc, char** argv){
	//inizializzo il nodo e creo il nodehandle
	ros::init(argc, argv, "pad_client",ros::init_options::AnonymousName);
	ros::NodeHandle n;

    ros::ServiceClient menuClient = n.serviceClient<pad_msgs::ServerMenu>("Menu");
    ros::Subscriber clientlistener = n.subscribe("serverChatter", 1000, chatterCallBack);
    ros::Publisher clientchatter = n.advertise<std_msgs::String>("clientChatter",1000);
    string nomeUtente = "";
    string destinatario =  "";
    while(ros::ok()){
        ros::spinOnce();
        cout << purple;
        cout << "SCEGLI UNA OPZIONE:" << endl;
        cout << normale;
        cout << "1 - LOG IN" << endl;
        cout << "2 - LISTA UTENTI ONLINE" << endl;
        cout << "3 - PICK AND DELIVERY" << endl;
        cout << "0 - LOG OUT" << endl;

        pad_msgs::ServerMenu srv;
        cin >> srv.request.clientReq;

        if(srv.request.clientReq==1){
            cout << purple;
            cout << "INSERISCI NOME UTENTE:" << endl << flush;
            cout << normale;
            cin >> srv.request.nomeUtente;
            cout << purple;
            cout << "INSERISCI COORDINATA X:" << endl << flush;
            cout << normale;
            cin >> srv.request.x;
            cout << purple;
            cout << "INSERISCI COORDINATA Y:" << endl << flush;
            cout << normale;
            cin >> srv.request.y;

            nomeUtente = srv.request.nomeUtente;

            if(menuClient.call(srv)){
                warn = srv.response.warning;
                if(warn==-1){
                    cout << yellow;
                    cout << srv.response.serverRes.c_str() << endl << flush;
                    cout << normale;
                    warn = 0;
                    continue;
                }
                else{
                    cout << green;
                    cout << srv.response.serverRes.c_str() << endl << flush;
                    cout << normale;
                }
                
            }
            else {
                cout << red;
                ROS_ERROR("Failed to call service Menu");
                cout << normale;
                return 1;
            }
        
        }
        else if(srv.request.clientReq==2){
            // cout << "STAMPO LA REQ " << endl << flush;
            // cout << "NOME UTENTE: " << flush;
            // cout << nomeUtente << endl << flush;
            // cout << "DESTINATARIO: " << flush;
            // cout << destinatario << endl << flush;
            if(menuClient.call(srv)){
                cout << purple;
                cout << "LISTA UTENTI: " << endl << flush;
                cout << normale;
                // ROS_INFO("\n%s", srv.response.serverRes.c_str());
                cout << srv.response.serverRes.c_str() << endl << flush;
                
        }
            else {
                ROS_ERROR("Failed to call service Menu");
                return 1;
            }

        }
        else if(srv.request.clientReq==3){
            if(nomeUtente==""){ //CASO IN CUI NON SI È LOGGATI
                cout << yellow;
                cout << "DEVI PRIMA EFFETTUARE IL LOGIN" << endl << flush;
                cout << normale;
                continue;
            }
            cout << purple;
            cout << "INSERISCI NOME DEL DESTINATARIO:" << endl << flush;
            cout << normale;
            cin >> srv.request.destinatario;
            destinatario = srv.request.destinatario;
            srv.request.nomeUtente = nomeUtente;
            if(menuClient.call(srv)){
                warn = srv.response.warning;
                if(warn == -1){//UTENTE NON ONLINE
                    cout << yellow; 
                    cout << srv.response.serverRes.c_str() << endl << flush;
                    cout << normale;
                    warn = 0;
                    continue;
                }
                cout << green;
                cout << srv.response.serverRes.c_str() << endl << flush;
                // ROS_INFO("\n%s", srv.response.serverRes.c_str());
                cout << normale;
                cout << purple;
                cout << "ASPETTANDO CHE IL PICK AND DELIVERY FINISCA" << endl << flush;
                cout << normale;
                while (ros::ok()){
                   ros::spinOnce();
                   if(check!=0) break;
                }
                check=0;
                
            }
            else {
                ROS_ERROR("Failed to call service Menu");
                return 1;
            }
        }
        else if(srv.request.clientReq==0){
            if(nomeUtente==""){
                return 0;
            }
            srv.request.nomeUtente = nomeUtente;

            if(menuClient.call(srv)){
                cout << yellow;
                cout << srv.response.serverRes.c_str() << endl << flush;
                // ROS_INFO("\n%s", srv.response.serverRes.c_str());
                cout << normale;
                warn = srv.response.warning;
                if(warn == -1){
                    warn = 0;
                    continue;
                } 
                else {
                    ros::Duration(1).sleep();
                    return 0;
                }
                
            }
            else {
                ROS_ERROR("Failed to log out");
            }
        }
        
        ros::spinOnce();
    }

    // ros::spin();
	return 0;
}