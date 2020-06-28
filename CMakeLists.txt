cmake_minimum_required(VERSION 3.14)
project(Vorgabe__1_)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)
include_directories(src)

add_executable(Vorgabe__1_
        include/management.h
        include/order.h
        include/supplier.h
        include/warehouse.h
        include/worker.h
        src/bakery.c
        src/Makefile
        src/management.c
        src/order.c
        src/orders.txt
        src/supplier.c
        src/warehouse.c
        src/worker.c)
