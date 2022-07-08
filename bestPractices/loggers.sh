#!/bin/bash
#execute with param "test" to see the log-messages

function __msg_error() {
  echo -e "\e[31m[ERROR]\e[0m \e[31m$1\e[0m"
}

function __msg_success() {
  echo -e "\e[32m[SUCCESS]\e[0m \e[32m$1\e[0m"
}

function __msg_warning() {
  echo -e "\e[33m[WARNING]\e[0m \e[33m$1\e[0m"
}

function __msg_info() {
  echo -e "\e[34m[INFO]\e[0m \e[34m$1\e[0m"
}

function __msg_debug() {
  echo -e "\e[35m[DEBUG]\e[0m \e[35m$1\e[0m"
}

if [ "$1" == "test" ]; then
  __msg_error "This is an error message"
  __msg_success "This is a success message"
  __msg_warning "This is a warning message"
  __msg_info "This is an info message"
  __msg_debug "This is a debug message"
  elif [ -z $1 ]; then
    sleep 0
fi
