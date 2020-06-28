cmake_minimum_required(VERSION 3.14)
project(src)

set(CMAKE_CXX_STANDARD 14)

add_executable(src
        bakery.c
        Makefile
        management.c
        order.c
        orders.txt
        supplier.c
        warehouse.c
        worker.c)
