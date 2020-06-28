#include"./../include/supplier.h"
#include"./../include/warehouse.h"
#include<time.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
//#define DG

struct forwarding_agent{
    supplier* sugar_supplier;
    supplier* flour_supplier;
    supplier* choclate_supplier;
    int stop_suppliers;
    pthread_mutex_t mutex;
    pthread_cond_t stop_suply;
    //TO DO
   
};

//FUNCTIONS CALLED BY BAKERY
forwarding_agent* forwarding_agent_create(warehouse* wh){
#ifdef DG
    printf("forwarding_agent_create\n");
#endif
    forwarding_agent* new_fa = malloc(sizeof(forwarding_agent));
    if(new_fa == NULL)
        return NULL;
    
    new_fa->sugar_supplier =supplier_create(wh);
    new_fa->flour_supplier = supplier_create(wh);
    new_fa->choclate_supplier = supplier_create(wh);
    
    new_fa->stop_suppliers = 0;
    //TO DO
    pthread_mutex_init(&new_fa->mutex, NULL);
    pthread_cond_init(&new_fa->stop_suply, NULL);
    return new_fa;
    
}

//THREAD FUNCTION
void* forwarding_agent_working(void* forward_agent){
#ifdef DG
    printf("forwarding_agent_working\n");
#endif
    forwarding_agent* fa = (forwarding_agent*)forward_agent;
    //TO DO
    pthread_t sugar_supplier_thread;
    pthread_t flour_supplier_thread;
    pthread_t choclate_supplier_thread;
    pthread_mutex_lock(&fa->mutex);
    pthread_create(&sugar_supplier_thread,NULL,deliver_sugar,fa->sugar_supplier);
    pthread_create(&flour_supplier_thread,NULL,deliver_flour,fa->flour_supplier);
    pthread_create(&choclate_supplier_thread,NULL,deliver_choclate, fa->choclate_supplier);
    pthread_mutex_unlock(&fa->mutex);
    pthread_mutex_lock(&fa->mutex);
    while(!fa->stop_suppliers) {
        pthread_cond_wait(&fa->stop_suply, &fa->mutex);
    }
    pthread_mutex_unlock(&fa->mutex);
    end_job(fa->sugar_supplier);
    end_job(fa->flour_supplier);
    end_job(fa->choclate_supplier);

    pthread_join(choclate_supplier_thread,NULL);
    pthread_join(sugar_supplier_thread,NULL);
    pthread_join(flour_supplier_thread,NULL);
    
    supplier_destroy(fa->choclate_supplier);
    supplier_destroy(fa->sugar_supplier);
    supplier_destroy(fa->flour_supplier);
    return NULL;
}

//FUNCTIONS CALLED BY MANAGEMENT
void stop_forwarding_agent(forwarding_agent* fa){
#ifdef DG
    printf("stop_forwarding_agen\n");
#endif
    //TO DO
    pthread_cond_signal(&fa->stop_suply);
    fa->stop_suppliers = 1;

}

void forwarding_agent_destroy(forwarding_agent* fa){
#ifdef  DG
    printf("forwarding_agent_destroy\n");
#endif
    //TO DO
    pthread_mutex_destroy(&fa->mutex);
    pthread_cond_destroy(&fa->stop_suply);
    free(fa);
}
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////


struct supplier{
    int working;
    warehouse* wh;
    pthread_mutex_t mutex;
    //TO DO
};

supplier* supplier_create(warehouse* wh){
#ifdef DG
    printf("supplier_create\n");
#endif
    supplier* new_supplier = malloc(sizeof(supplier));
    if(new_supplier == NULL)
        return NULL;
    
    new_supplier->working=1;
    new_supplier->wh = wh;
    //TO DO
    pthread_mutex_init(&new_supplier->mutex, NULL);
    return new_supplier;
}

//THREAD FUNCTIONS
void* deliver_choclate(void* sup){
#ifdef DG
    printf("deliver_choclate\n");
#endif
    //TO DO
    supplier* s = (supplier*)sup;
    pthread_mutex_lock(&s->mutex);
    srand(time(0));
    while(s->working){
        pthread_mutex_unlock(&s->mutex);
        unsigned int amount = rand()%2+1;
        deposit_choclate(amount, s->wh);
        pthread_mutex_lock(&s->mutex);
    }
    pthread_mutex_unlock(&s->mutex);
    return NULL;
}

void* deliver_sugar(void* sup) {
#ifdef DG
    printf("deliver_sugar\n");
#endif
    //TO DO
    supplier *s = (supplier *) sup;
    pthread_mutex_lock(&s->mutex);
    srand(time(0));
    while(s->working){
        pthread_mutex_unlock(&s->mutex);
        unsigned int amount = rand()%3+1;
        deposit_sugar(amount, s->wh);
        pthread_mutex_lock(&s->mutex);
    }
    pthread_mutex_unlock(&s->mutex);
    return NULL;
}

void* deliver_flour(void* sup){
#ifdef DG
    printf("deliver_flour\n");
#endif
    //TO DO
    supplier* s = (supplier*)sup;
    pthread_mutex_lock(&s->mutex);
    srand(time(0));
    while(s->working){
        pthread_mutex_unlock(&s->mutex);
        unsigned int amount = rand()%6+1;
        deposit_flour(amount, s->wh);
        pthread_mutex_lock(&s->mutex);
    }
    pthread_mutex_unlock(&s->mutex);
    return NULL;
}


//FUNCTIONS CALLED BY FORWARDING_AGENT
void end_job(supplier* s){
#ifdef DG
    printf("end_job\n");
#endif
    //TO DO
    s->working=0;

}

void supplier_destroy(supplier* s){
    //TO DO
#ifdef DG
    printf("supplier_destroy\n");
#endif
    pthread_mutex_destroy(&s->mutex);
    free(s);
}
