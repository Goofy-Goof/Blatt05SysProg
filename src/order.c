#include "./../include/order.h"
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <stdio.h>
//#define DG
struct order{
    char* client;
    unsigned int muffin;
};

order* order_create(char* client, unsigned int muffin){
#ifdef DG
    printf("order_create\n");
#endif
    order* new_order = malloc(sizeof(order));
    if(new_order == NULL)
        return NULL;
    
    new_order->client = malloc(sizeof(char)*(strlen(client)+1));
    strncpy(new_order->client,client,strlen(client));
    new_order->client[strlen(client)]='\0';
    
    new_order->muffin = muffin;
#ifdef DG
    printf("order %s \t %u erstellt\n", client, muffin);
#endif
    return new_order;
}

char* get_client(order* o){
#ifdef DG
    printf("get_client\n");
#endif
    if(o == NULL )
        return NULL;
    return o->client;
}

unsigned int get_muffin(order* o){
#ifdef DG
    printf("get_muffin\n");
#endif
    if(o == NULL) return 1;
    return o->muffin;
}

void order_destroy(order* o){
#ifdef DG
    printf("order_destroy\n");
#endif
    if(o == NULL) return;
    free(o->client);
    free(o);
}



struct order_list{
    //TO DO
    unsigned int count;
    unsigned int head;
    unsigned int tail;
    order** orders;
    pthread_mutex_t mutex;
    pthread_cond_t not_empty;
    pthread_cond_t not_full;
};

//returns the number of orders in the list
unsigned int get_count(order_list* ol){
#ifdef DG
    printf("get_count");
#endif
    return ol->count;
}

//FUNCTIONS CALLED BY MANAGEMENT
order_list* order_list_create(){
#ifdef DG
    printf("order_list_create\n");
#endif
    //TO DO
    order_list* new_order_list = malloc(sizeof(order_list));    
    if(new_order_list == NULL)
        return NULL;
    
    new_order_list->orders = malloc(MAX_ORDERS * sizeof(order*));    
    if(new_order_list->orders == NULL)
        return NULL;
    pthread_mutex_init(&new_order_list->mutex, NULL);
    pthread_cond_init(&new_order_list->not_empty, NULL);
    pthread_cond_init(&new_order_list->not_full, NULL);
    new_order_list->count = 0;
    new_order_list->head = 0;
    new_order_list->tail = 0;
    return  new_order_list;
    
}


//puts the order o in the order list ol
void deposit_order(order_list* ol, order* o){
#ifdef DG
    printf("deposit_order\n");
#endif
    //TO DO
    pthread_mutex_lock(&ol->mutex);
    while(ol->count == MAX_ORDERS){
        pthread_cond_wait(&ol->not_full, &ol->mutex);
    }
    ol->orders[ol->head] = o;
    ol->head = (ol->head+1)%MAX_ORDERS;
    ol->count++;
    pthread_cond_signal(&ol->not_empty);
    pthread_mutex_unlock(&ol->mutex);
    
}

//return the next order from order_list ol
order* get_order(order_list* ol){
#ifdef DG
    printf("get_order\n");
#endif
    //TO DO
    pthread_mutex_lock(&ol->mutex);
    order* o;
    while(ol->count == 0){
        pthread_cond_wait(&ol->not_empty, &ol->mutex);
    }
    o = ol->orders[ol->tail];
    ol->tail = (ol->tail+1)%MAX_ORDERS;
    ol->count--;
    pthread_cond_signal(&ol->not_full);
    pthread_mutex_unlock(&ol->mutex);
    return o;
}

void order_list_destroy(order_list* ol){
#ifdef DG
    printf("order_list_destroy\n");
#endif
    //TO DO
    pthread_mutex_destroy(&ol->mutex);
    pthread_cond_destroy(&ol->not_empty);
    pthread_cond_destroy(&ol->not_full);
    free(ol->orders);
    free(ol);

}
