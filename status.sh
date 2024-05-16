#!/bin/bash

###
# BASH script that checks:
# - Memory usage
# - CPU load
# - Number of TCP connections
# - Kernel version
###

###
# Color Variables
###

green="\e[32m"
red="\e[31m"
blue="\e[34m"
clear="\e[30m"

server_name=$(hostname)

function memory_check() {
    echo -ne $blue
    echo "Memory usage on ${server_name} is: "
    echo -ne $green
    free -h
    echo -e $clear
}

function cpu_check() {
    echo -ne $blue
    echo "CPU load on ${server_name} is: "
    echo -ne $green
    uptime
    echo -e $clear
}

function tcp_check() {
    echo -ne $blue
    echo "TCP connections on ${server_name}: "
    echo -ne $green
    cat /proc/net/tcp | wc -l
    echo -e $clear
}

function kernel_check() {
    echo -ne $blue
    echo "Kernel version on ${server_name} is: "
    echo -ne $green
    uname -r
    echo -e $clear
}

function all_checks() {
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

all_checks