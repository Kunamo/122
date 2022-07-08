#!/bin/bash
source loggers.sh

if [ -z $1 ]; then
    __msg_error "no parameter, use with: measureTime.sh INTEGER"
    __msg_info  "INTEGER determines execution time"
    exit 0
fi

time source cleanSlate.sh $1
