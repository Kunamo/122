#!/bin/bash
#set -o errexit
#set -p pipefail
set -o nounset #for unbound variables

function echoVar(){
  echo "${notExisting}"
}
#Nothing will be echo'ed and no error will be returned, without set -o nounset
#With set -o nounset, it will return an error.
echoVar
