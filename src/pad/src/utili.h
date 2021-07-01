#include "ros/ros.h"
#include <string>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <sstream>
#define red     		"\x1b[38;5;196m"
#define green   		"\x1b[38;5;46m"
#define yellow  		"\x1b[38;5;11m"
#define purple 			"\x1b[38;5;129m"
#define normale			"\x1b[0m"
using namespace std;
class utente {
	public:
		string nome;
		float x;
		float y;

		utente(){
			this->nome = "utente";
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
