#include "./../include/warehouse.h"
#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
//#define DG
struct warehouse{
    unsigned int flour, sugar, choclate;
    int locked;
    
    unsigned int sugar_taken, flour_taken, choclate_taken;
    //TO DO
    pthread_mutex_t mutex;
    pthread_cond_t  choco_deposited, sugar_deposited,  flour_deposited;
};

warehouse* warehouse_create(){
#ifdef DG
    printf("warehouse_create\n");
#endif
    warehouse* new_warehouse = (warehouse*) malloc(sizeof(warehouse));
    if(new_warehouse== NULL){
        printf("Unable to allocate memory in function %s()\n",__func__);
        return NULL;
    }
    new_warehouse->flour = 0;
    new_warehouse->sugar = 0;
    new_warehouse->choclate = 0;
    new_warehouse->locked = 0;
    //TO DO
    pthread_mutex_init(&new_warehouse->mutex, NULL);
    pthread_cond_init(&new_warehouse->sugar_deposited,NULL);
    pthread_cond_init(&new_warehouse->choco_deposited,NULL);
    pthread_cond_init(&new_warehouse->flour_deposited,NULL);
    new_warehouse->choclate_taken = 0;
    new_warehouse->flour_taken = 0;
    new_warehouse->sugar_taken = 0;
    return new_warehouse;
}

//FUNCTIONS CALLED BY WORKER THREADS
//@param: amount of flour/sugar/choclate to be taken from warehouse wh
unsigned int get_choclate(unsigned int amount, warehouse* wh){
#ifdef DG
    printf("get_choclate\n");
#endif
    //TO DO
    pthread_mutex_lock(&wh->mutex);
    while(amount > wh->choclate){
#ifdef DG
        printf("\t\t\twait for choco\n");
#endif
        pthread_cond_wait(&wh->choco_deposited, &wh->mutex);
    }
    wh->choclate_taken += amount;
    wh->choclate -= amount;
    pthread_mutex_unlock(&wh->mutex);
    return amount;
}

unsigned int get_flour(unsigned int amount, warehouse* wh){
#ifdef DG
    printf("get_flour\n");
#endif
    //TO DO
    pthread_mutex_lock(&wh->mutex);
    while(amount > wh->flour){
#ifdef DG
        printf("\twait for flour\n");
#endif
        pthread_cond_wait(&wh->flour_deposited, &wh->mutex);
    }
    wh->flour_taken += amount;
    wh->flour -= amount;
    pthread_mutex_unlock(&wh->mutex);
    return amount;
}

unsigned int get_sugar(unsigned int amount, warehouse* wh){
#ifdef DG
    printf("get_sugar\n");
#endif
    //TO DO
    pthread_mutex_lock(&wh->mutex);
    while(amount > wh->flour){
#ifdef DG
        printf("\twait for sugar\n");
#endif
        pthread_cond_wait(&wh->sugar_deposited, &wh->mutex);
    }
    wh->sugar_taken += amount;
    wh->sugar -= amount;
    pthread_mutex_unlock(&wh->mutex);
    return amount;
}


//FUNCTIONS CALLED BY SUPPLIER THREADS
//@param: amount of flour/sugar/choclate to be store in warehouse wh
void deposit_choclate(unsigned int amount, warehouse* wh){
#ifdef DG
    printf("deposit_choclate\n");
#endif
    //TO DO
    pthread_mutex_lock(&wh->mutex);
    if(wh->choclate + amount > MAX_STORE_CAPACITY){
        wh->choclate = MAX_STORE_CAPACITY;
    }else{
        wh->choclate += amount;
    }
    pthread_cond_signal(&wh->choco_deposited);
    pthread_mutex_unlock(&wh->mutex);
    return;
}

void deposit_sugar(unsigned int amount, warehouse* wh){
    //TO DO
#ifdef DG
    printf("deposit_sugar\n");
#endif
    pthread_mutex_lock(&wh->mutex);
    if(wh->sugar + amount > MAX_STORE_CAPACITY){
        wh->sugar = MAX_STORE_CAPACITY;
    }else{
        wh->sugar += amount;
    }
    pthread_cond_signal(&wh->sugar_deposited);
    pthread_mutex_unlock(&wh->mutex);
    return;
}

void deposit_flour(unsigned int amount, warehouse* wh){
#ifdef DG
    printf("deposit_flour\n");
#endif
    //TO DO
    pthread_mutex_lock(&wh->mutex);
    if(wh->flour + amount > MAX_STORE_CAPACITY){
        wh->flour = MAX_STORE_CAPACITY;
    }else{
        wh->flour += amount;
    }
    pthread_cond_signal(&wh->flour_deposited);
    pthread_mutex_unlock(&wh->mutex);
    return;
}


//FUNCTIONS CALLED BY BAKERY
void lock_warehouse(warehouse* wh){
#ifdef DG
    printf("lock_warehouse\n");
#endif
    //TO DO
    wh->locked=1;

}

unsigned int get_used_resources(warehouse* wh, int type){
#ifdef DG
    printf("get_used_resources\n");
#endif
    //deadlock
    if(type == SUGAR) return wh->sugar_taken;
    if(type == FLOUR) return wh->flour_taken;
    if(type == CHOCLATE) return wh->choclate_taken;
    return 0;
}


void warehouse_destroy(warehouse* wh){
    //TO DO
#ifdef DG
    printf("warehouse_destroy\n");
#endif
    pthread_mutex_destroy(&wh->mutex);
    pthread_cond_destroy(&wh->sugar_deposited);
    pthread_cond_destroy(&wh->flour_deposited);
    pthread_cond_destroy(&wh->choco_deposited);
    free(wh);
    return;
}
