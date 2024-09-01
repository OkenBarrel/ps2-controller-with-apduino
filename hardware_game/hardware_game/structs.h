#pragma once
#include <stdlib.h>
#include <stdio.h>
#define LENGTH 640
#define WIDTH 480
#define GROUND 200

typedef struct mainChara
{
	int room;
	int blood;
	int jumping;
	int v;
	int x;
	int y;
}mainChara;
//list main bullet+enm bullet0
//list enm
typedef struct mc_blt {
	int fromM;
	int bltId;
	int x;
	int y;
	int up;
	int dead;
	int x_dir;
}blt;
typedef struct enm {
	int enmId;
	int blood;
	int x_dir;
	int x;
	int y;
}enm;

typedef struct eList {
	enm enemy;
	struct eList* next;
} enmList;

typedef struct blt_List {
	blt b;
	struct blt_List* next;
}bltList;

typedef struct room
{
	int num;
	enmList* monsters;
	int monsterNum;
};


int mainSpd = 5;
int enmCount = 0;
int bltCount = 0;
int enmSpd = 8;
int bltSpd = 10;
int crazyField = 20;
int hitField = 3;
int rightEdge, leftEdge, upEdge, downEdge;
int g = -2;
int jumpSpd = 20;
int deltaT = 2;
mainChara mc = {0,5,0,20,50,GROUND };
enmList* enms;
bltList* mainBlts;
bltList* enmBlts;
// room rooms[3];
// enm room2[3]={
//     {0,}
// };
// enm m1={}
