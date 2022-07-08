#!/bin/bash
#set -o errexit
#set -p pipefail
set -o nounset

function echoVar(){
  echo "${notExisting}"
}
#Nothing will be echo'ed and no error will be returned, without set -o nounset
#With set -o nounset, it will return an error.
echoVar
