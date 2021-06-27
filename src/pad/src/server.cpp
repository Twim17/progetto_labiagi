#include "ros/ros.h"
#include "geometry_msgs/PoseStamped.h"
#include "/home/me/labiagi_2020_21/workspaces/srrg2_labiagi/devel/include/srrg2_core_ros/PlannerStatusMessage.h"
#include "pad_msgs/ServerMenu.h"
#include "std_msgs/String.h"
#include <string>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <sstream>
#define red     		"\x1b[38;5;196m"
#define green   		"\x1b[38;5;46m"
#define yellow  		"\x1b[38;5;11m"
#define normale			"\x1b[0m"
using namespace std;
int32_t cReq = -1;
bool serverWorking=false; //variabile che mi indica se il server è occupato
bool robotWorking = false;
bool robotMoving = false;
bool arrivato = false;
bool inizia = false;
bool unreachable = false;
int warn = -1;

class utente {
	public:
		string nome;
		float x;
		float y;

		utente(){
			this->nome = "nico";
			this->x = 12;
			this->y = 12;
		}

		utente(string nm){
			nome = nm;
		}

		utente(string nm,float a,float b){
			nome = nm;
			x = a;
			y = b;
		}

		// void setXY(float a,float b){
		// 	this->x = a;
		// 	this->y = b;
		// }

		bool operator==(const utente& u){
            if(u.nome==this->nome) return true;
            return false;
        }
        void stampa(){
            cout << "nome: " << nome << endl << "    x: " << x << endl << "    y: " << y << endl;
        }
};

utente mittente = utente();
utente destinatario = utente();

bool ServerMenu(pad_msgs::ServerMenuRequest &request,
		 	pad_msgs::ServerMenuResponse &response){
		 		ROS_INFO("SERVERMENU CALLED");
				cReq = int32_t(request.clientReq);
				cout << cReq << endl;

				if(robotWorking==true && cReq==3) { //CASO IN CUI ROBOT STA GIÀ LAVORANDO
					response.serverRes = "IL ROBOT È ATTUALMENTE OCCUPATO, RIPROVA TRA QUALCHE MINUTO";
					return true;
				}

				while(serverWorking){
					ros::Duration(1).sleep();
				}

				serverWorking = true;

				if(cReq==1){ //LOG IN
					cout << request.nomeUtente.c_str() << endl << flush;
					ifstream f;
					f.open("/home/me/progetto_labiagi/src/pad/src/utenti.txt");
					string s; float a; float b;
					if(f.is_open()){
						while(f >> s >> a >> b) {
    						if (s == request.nomeUtente.c_str()) {
								response.warning = -1;
								response.serverRes = "QUESTO UTENTE E' GIA' ONLINE, EFFETTUA LOG IN COME ALTRO UTENTE";
								serverWorking = false;
								return true;
    						}
						}
						f.close();
					}
					ofstream file;
					file.open("/home/me/progetto_labiagi/src/pad/src/utenti.txt",ofstream::out | ofstream::app);

					ostringstream oss1;
					oss1 << request.x;

					ostringstream oss2;
					oss2 << request.y;
					if(file.is_open()) {
						file << request.nomeUtente.c_str();
						file << ' ' + oss1.str();
						file << ' ' + oss2.str() << endl;
						file.close();
						response.serverRes = "Utente inserito";
					}

				}
				else if(cReq == 2){ //LISTA UTENTI ONLINE
					ifstream f;
					f.open("/home/me/progetto_labiagi/src/pad/src/utenti.txt");
					if (f.is_open()){
						ostringstream oss;
						oss << f.rdbuf();
						response.serverRes = oss.str();
					}
					f.close();
				}
				else if(cReq == 3){ // PICK AND DELIVERY
					string sd = request.destinatario.c_str();
					string sm = request.nomeUtente.c_str();

					ifstream f;
					f.open("/home/me/progetto_labiagi/src/pad/src/utenti.txt");
					string s;
					float a;
					float b;
					string line;
					if(f.is_open()){
						// cout << f.rdbuf() << endl << flush;
						while(f >> s >> a >> b) {
    						if (s == sd) {
								cout << green;
        						cout << "found: " << sd << endl << flush;
								cout << normale;
							 	response.serverRes = "Il destinatario " + sd + " e' online, inviamo i dati al robot";
								destinatario.nome = s; destinatario.x = a; destinatario.y = b;
    						}
							else if(s == sm){
								cout << green;
								cout << "found: " << sm << endl << flush;
								cout << normale;
								mittente.nome = s; mittente.x = a; mittente.y = b;

							}

						}
						f.close();
						if(mittente.nome!=sm || destinatario.nome != sd){
							response.warning =-1;
							response.serverRes = "UTENTE NON ONLINE, NON È POSSIBILE EFFETTUARE IL PICK AND DELIVERY";
							serverWorking = false;
							return true;
						}
						
					}
					warn = 0;
					cout << "MITTENTE: " << flush;
					cout << mittente.nome << " " << mittente.x << " " << mittente.y << endl << flush;
					cout << "DESTINATARIO: " << flush;
					cout << destinatario.nome << " " << destinatario.x << " " << destinatario.y << endl << flush;

				}
				else if(cReq == 0){ // LOG OUT
					if(robotWorking && (request.nomeUtente.c_str() == mittente.nome || request.nomeUtente.c_str() == destinatario.nome)){
						cout << yellow;
						cout << "Non puo sloggarsi" << endl << flush;
						cout << normale;
						response.serverRes = "Non puoi effettuare il log out durante il pick and delivery";
						response.warning = -1;
					}
					else {
						unsigned int curLine = 0;
						ifstream f;
						f.open("/home/me/progetto_labiagi/src/pad/src/utenti.txt");

						ofstream fout;
						fout.open("/home/me/progetto_labiagi/src/pad/src/utenti1.txt");
						string line;
						string deleteLine = request.nomeUtente.c_str();
						if(f.is_open() && fout.is_open() ){
							while(getline(f, line)) {
    							curLine++;
								size_t res = line.find(deleteLine);
    							if (res != string::npos) {
        							cout << "found: " << deleteLine << " line: " << curLine << endl;
							 		line.replace(res,string::npos,"");
							 		response.serverRes = "Utente ha effettuato Log Out";
    							}
								if(!line.empty()) fout << line << endl;
							}

							fout.close();
							f.close();

							remove("/home/me/progetto_labiagi/src/pad/src/utenti.txt");
							rename("/home/me/progetto_labiagi/src/pad/src/utenti1.txt","/home/me/progetto_labiagi/src/pad/src/utenti.txt");
							response.warning = 0;
						}

					}

				}
				serverWorking = false;
				return true;
}


void stato_robot(const srrg2_core_ros::PlannerStatusMessage::ConstPtr& status){

	if(robotMoving){
		if(status->status!="GoalReached"){
			robotMoving = false;
			inizia = true;
		}
	}
	else if(inizia && status->status=="GoalReached"){
		arrivato = true;
		robotMoving = false;
		inizia = false;
	}
	else if(status->status=="GoalUnreachable"){
		unreachable = true;
	}
	// else cout << "HELLOOOOOOOOO" << endl << flush;

}

int main(int argc, char** argv){
	//inizializzo il nodo e creo il nodehandle
	ros::init(argc, argv, "pad_server");
	ros::NodeHandle n;

	ros::ServiceServer menu = n.advertiseService("Menu", ServerMenu);
	ros::Publisher serverchatter;
	ros::Subscriber serverListener;

	serverchatter = n.advertise<std_msgs::String>("serverChatter",1000);
	// serverListener = n.subscribe<std_msgs::String>("clientChatter",1000,serverCB);

	ros::Publisher goal_pub = n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1000); //Goal publisher
	ros::Subscriber status_sub = n.subscribe("/planner_status", 1000, stato_robot); //Subscribe al topic che indica lo stato del robot
	ros::Duration(2).sleep();
	// cout << "SONO QUAAAA" << endl << flush;


	while(ros::ok()){
		if(robotWorking==false && cReq == 3 && warn!=-1) {
			robotWorking = true;
			geometry_msgs::PoseStamped msg1;
			msg1.header.stamp=ros::Time::now();
			msg1.header.frame_id="map";
			msg1.pose.position.x = mittente.x;
			msg1.pose.position.y = mittente.y;
			goal_pub.publish(msg1);
			robotMoving = true;
			// cout << green;
			cout << "GOAL MITTENTE PUBBLICATO" << endl << flush;
			// cout << normale;
			while(ros::ok()){
				// cout << "sono dentro while " << endl << flush;
				if(arrivato){
					cout << green;
					cout << "Robot arrivato al mittente" << endl << flush;
					cout << normale;
					robotMoving = false;
					arrivato = false;
					ros::spinOnce();
					break;
				}
				else if(unreachable){
					std_msgs::String m;
					m.data = "IL PUNTO DI ARRIVO NON E' RAGGIUNGIBILE, PICK & DELIVERY VERRA' ANNULLATO";
					serverchatter.publish(m);
					robotMoving = false;
					arrivato = false;
					ros::spinOnce();
					break;
				}
				ros::spinOnce();

			}
			if(unreachable) {
				cReq=-1;
				unreachable = false;
				robotWorking = false;
				continue;
			}
			// cout << "Pacco ritirato dal mittente" << endl << flush;
			geometry_msgs::PoseStamped msg2;
			msg2.header.stamp = ros::Time::now();
			msg2.header.frame_id="map";
			msg2.pose.position.x = destinatario.x;
			msg2.pose.position.y = destinatario.y;
			goal_pub.publish(msg2);
			// cout << green;
			cout << "GOAL DESTINATARIO PUBBLICATO" << endl << flush;
			// cout << normale;
			robotMoving = true;
			while(ros::ok()){
				if(arrivato){
					cout << green;
					cout << "Robot arrivato al destinatario" << endl << flush;
					cout << normale;
					robotMoving = false;
					arrivato = false;
					ros::spinOnce();
					break;
				}
				else if(unreachable){
					std_msgs::String m;
					m.data = "IL PUNTO DI ARRIVO NON E' RAGGIUNGIBILE, PICK & DELIVERY VERRA' ANNULLATO";
					serverchatter.publish(m);
					robotMoving = false;
					arrivato = false;
					ros::spinOnce();
					break;
				}
				ros::spinOnce();
			}
			if(unreachable){
				cReq=-1;
				unreachable = false;
				robotWorking = false;
				continue;
			}
			cout << green;
			cout << "PICK AND DELIVERY ANDATO A BUON FINE" << endl << flush;
			cout << normale;
			std_msgs::String m;
			m.data = "IL ROBOT E' ORA LIBERO DI PRENDERE UN ALTRO ORDINE";
			serverchatter.publish(m);
			cReq = -1;
			robotWorking = false;
			warn = -1;
		}
		ros::spinOnce();
	}


    ros::spin();
	return 0;
}