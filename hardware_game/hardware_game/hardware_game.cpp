#include <stdio.h>
#include <stdlib.h>
#include "structs.h"
#include <windows.h>
#include <graphics.h>
#include <easyx.h>

#include <iostream>
#include <conio.h>
#include <mmsystem.h>
#pragma comment(lib,"Winmm.lib")
#include <time.h>
#include <io.h>
#include <direct.h>
#include <math.h>

void fromPs2() {
    //获取手柄按钮
    return;
}
// 根据enmId删怪
void deleteEnm(int enmID) {
    enmList* p = enms;
    enmList* prev = NULL;

    while (p != NULL && p->enemy.enmId != enmID) {
        prev = p;
        p = p->next;
    }

    if (p == NULL) {
        printf("Enemy with ID %d not found.\n", enmID);
        return;
    }

    if (prev == NULL) {
        // 删除头节点
        enms = p->next;
    }
    else {
        // 删除非头节点
        prev->next = p->next;
    }

    free(p);
    printf("Enemy with ID %d deleted.\n", enmID);
}
//根据bltId删除子弹
void deleteBlt(int bltID) {
    bltList* p = mainBlts;
    bltList* prev = NULL;

    while (p != NULL && p->b.bltId != bltID) {
        prev = p;
        p = p->next;
    }

    if (p == NULL) {
        printf("Enemy with ID %d not found.\n", bltID);
        return;
    }

    if (prev == NULL) {
        // 删除头节点
        mainBlts = p->next;
    }
    else {
        // 删除非头节点
        prev->next = p->next;
    }

    free(p);
    printf("Enemy with ID %d deleted.\n", bltID);
}
//更新子弹x和判断是否击中怪。击中则怪减血，子弹消失
void updateBlt() {
    bltList* p = mainBlts;
    enmList* e = enms;
    int bltDead = 0;
    while (mainBlts != nullptr && (mainBlts->b.x >= LENGTH|| mainBlts->b.x <= -50)) { // 处理头节点是1的情况
        bltList* temp = mainBlts;
        mainBlts = mainBlts->next;
        delete temp;
    }
    p = mainBlts;
    while (p != nullptr && p->next != nullptr) {
        if (p->next->b.x >= LENGTH|| p->next->b.x<=-50) {
            bltList* temp = p->next;
            p->next = p->next->next;
            delete temp;
        }
        //p = p->next;
        else {
            p = p->next;
        }
    }
    p = mainBlts;
    while (p) {
        while (e) {
            if (p->b.x >= e->enemy.x && p->b.x_dir == 1) {
                e->enemy.blood -= 1;
                p->b.dead = 1;
            }
            else if (p->b.x <= e->enemy.x && p->b.x_dir == -1) {
                e->enemy.blood -= 1;
                p->b.dead = 1;
            }
            int thisId = e->enemy.enmId;
            int thisBlood = e->enemy.blood;
            e = e->next;
            if (thisBlood == 0) {
                deleteEnm(thisId);
            }
            if (p->b.dead) {
                deleteBlt(p->b.bltId);
                bltDead = 1;
                break;
            }
        }
        if (bltDead) {
            p = p->next;
            continue;
        }
        p->b.x = p->b.x + bltSpd * p->b.x_dir;
        p->b.y = p->b.y + bltSpd * p->b.up;
        p = p->next;
    }


    return;
}
void updateEnm() {
    //更新怪x，主角接近到某范围就向主角跑
    enmList* p = enms;
    while (p) {
        if (p->enemy.blood <= 0) {
            int thisId = p->enemy.enmId;
            p = p->next;
            deleteEnm(thisId);
            continue;
        }
        if (mc.x >= p->enemy.x - crazyField && mc.x <= p->enemy.x + crazyField) {
            p->enemy.x_dir = (mc.x - p->enemy.x) / abs(mc.x - p->enemy.x);
            if (p->enemy.x_dir != 0) {
                p->enemy.x = p->enemy.x + p->enemy.x_dir * enmSpd;
            }
        }
        if (mc.x >= p->enemy.x - hitField && mc.x <= p->enemy.x + hitField) {
            mc.blood -= 1;
        }
    }
    return;
}
//根据房间刷新怪
void createEnm(int num) {
    int i;
    enmList* p;
    if (enms == NULL) {
        // 初始化链表头节点
        enms = (enmList*)malloc(sizeof(enmList));
        if (enms == NULL) {
            printf("Memory allocation failed\n");
            exit(1);
        }
        enms->enemy.blood = 0; // 可以根据需要初始化头节点
        enms->enemy.blood = enmCount++;
        enms->next = NULL;
    }
    p = enms;
    // 找到链表末尾
    while (p->next != NULL) {
        p = p->next;
    }
    for (i = 0; i < num; i++) {
        enmList* temp = (enmList*)malloc(sizeof(enmList));
        if (temp == NULL) {
            printf("Memory allocation failed\n");
            exit(1);
        }
        temp->enemy.blood = i;
        temp->enemy.enmId = enmCount++;
        temp->next = NULL;
        p->next = temp;
        p = p->next;
    }
}
//isEnm==0创建主角新子弹
void createBlt(int isEnm, int up, int left, int right) {
    int i;
    bltList* p;
    if (isEnm) {
        //if (enmBlts == NULL) {
        //    // 初始化链表头节点
        //    enmBlts = (bltList*)malloc(sizeof(bltList));
        //    if (enmBlts == NULL) {
        //        printf("Memory allocation failed\n");
        //        exit(1);
        //    }
        //    // enmBlts->enemy.blood = 0; // 可以根据需要初始化头节点
        //    // enms->next = NULL;
        //}
        //p = emp;
        //// 找到链表末尾
        //while (p->next != NULL) {
        //    p = p->next;
        //}
    }
    else {
        if (mainBlts == NULL) {
            // 初始化链表头节点
            mainBlts = (bltList*)malloc(sizeof(bltList));
            if (mainBlts == NULL) {
                printf("Memory allocation failed\n");
                exit(1);
            }
            mainBlts->b.x = mc.x+5; // 可以根据需要初始化头节点
            mainBlts->b.y = mc.y +50;
            mainBlts->b.dead=0;
            mainBlts->b.bltId = bltCount++;
            mainBlts->next = NULL;
            if (left) {
                mainBlts->b.x_dir = -1;
            }
            else {
                mainBlts->b.x_dir = 1;
            }
            mainBlts->b.up = up;
        }
        else {
            p = mainBlts;
            // 找到链表末尾
            while (p->next != NULL) {
                p = p->next;
            }
            bltList* temp = (bltList*)malloc(sizeof(bltList));
            if (temp == NULL) {
                printf("Memory allocation failed\n");
                exit(1);
            }
            temp->b.x = mc.x+100;
            temp->b.y = mc.y+50;
            //temp->b.y = mc.y + 5;
            temp->b.dead = 0;
            temp->b.bltId = bltCount++;
            if (left) {
                temp->b.x_dir = -1;
            }
            else {
                temp->b.x_dir = 1;
            }
            temp->b.up = up;
            temp->next = NULL;
            p->next = temp;
        }
    }

}
// 显示敌人链表函数
void showEnm() {
    enmList* p = enms;
    // 跳过头节点
    if (p != NULL) {
        p = p->next;
    }
    while (p != NULL) {
        printf("enm blood = %d\n", p->enemy.blood);
        p = p->next;
    }
}
void showBlt() {
    IMAGE bltp;
    loadimage(&bltp, L"pics\\blt.png");
    bltList* p = mainBlts;
    // 跳过头节点
    if (p == NULL) {
        return;
    }
    while (p != NULL) {
        BeginBatchDraw();
        printf("blt %d %d\n", p->b.x, p->b.y);
        putimage(p->b.x, p->b.y, &bltp);
        p = p->next;
        EndBatchDraw();
    }
}
//主角移动控制、发射子弹、转换房间判断
int updateMainCharacter(int up, int down, int left, int right, int square, int x) {
    int roomFlag = 0;
    if (left) {
        mc.x -= mainSpd;
    }
    else if (right) {
        mc.x += mainSpd;
        printf("main at %d\n", mc.x);
    }
    if (x&&mc.jumping==0) {
        mc.jumping = 1;
        mc.v = jumpSpd;
        // mc.y;
    }
    if (mc.jumping) {
        mc.y -= mc.v * deltaT;
        mc.v += g * deltaT;
        printf("mc.v=%d mc.y=%d\n", mc.v,mc.y);
        if (mc.y >= GROUND) {
            mc.jumping = 0;
        }
    }
    if (square) {
        createBlt(0, up, left, right);
        //创建新的子弹节点
    }

    if (mc.x >= rightEdge) {//向右房间++
        mc.room++;
        roomFlag = 1;
    }
    else if (mc.x <= leftEdge) {
        mc.room--;
        roomFlag = 1;
    }
    return roomFlag;
}
//新进入房间后怪刷新等
void updateRoom(int roomNum) {
    // enms=rooms[roomNum].monsters;
    return;
}

int main() {
    int up = 0, down = 0, left = 0, right = 0;
    int l1 = 0, l2 = 0, r1 = 0, r2 = 0;
    int trg = 0, o = 0, x = 0, square = 0;

    int roomChanged = 1;
    char p[200];
    initgraph(LENGTH, WIDTH, SHOWCONSOLE);
    IMAGE back,mcp;
    loadimage(&back, L"pics\\trees.jpg");
    loadimage(&mcp, L"pics\\mc.png");
    //GetCurrentDirectory(100, p);
    //printf("working on %s\n
    char key;
    while (1) {
        up = 0, down = 0, left = 0, right = 0;
        l1 = 0, l2 = 0, r1 = 0, r2 = 0;
        trg = 0, o = 0, x = 0, square = 0;
        cleardevice();
        BeginBatchDraw();
        putimage(0, 0, &back);
        if (GetAsyncKeyState(VK_UP))
        {
            x = 1;
        }
        //下键
        if (GetAsyncKeyState(VK_DOWN))
        {
            down = 1;
        }
        //左键
        if (GetAsyncKeyState(VK_LEFT))
        {
            left = 1;
        }
        //右
        if (GetAsyncKeyState(VK_RIGHT))
        {
            right = 1;
        }
        if (_kbhit()) {
            printf("key\n");
            key = _getch();
            if (key == 'f') {
                square = 1;
            }
        }
        printf("up%d down%d left%d right%d square%d\n", up, down, left, right,square);
        
        roomChanged=updateMainCharacter(up, down, left, right, square, x);
        printf("mm at %d %d\n", mc.x,mc.y);
        putimage(mc.x, mc.y, &mcp);
        EndBatchDraw();
        if (roomChanged) {
            updateRoom(mc.room);
            roomChanged = 0;
        }
        updateBlt();
        showBlt();
        Sleep(50);
        //_getch();
        /*updateEnm();
        roomChaged = updateMainCharacter(up, down, left, right, square, x);*/
    }
    closegraph();
    system("pause");
    return 0;
}
