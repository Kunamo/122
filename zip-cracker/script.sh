#!/bin/bash
#only lower letters and numbers
#min: 3 | max: 5
#unzip -P your-password zipfile.zip

zipfile=testdir.zip

for i in {0..9}; do
  #1 char
  pass=${i}
  unzip -P "$pass" "$zipfile"
  echo "$pass"
  #echo $i
  for j in {0..9}; do
    #2 char
    pass=${i}${j}
    unzip -P "$pass" "$zipfile"
    echo "$pass"
    #echo "${i}${j}"
    for n in {0..9}; do
      #3 char
      pass=${i}${j}${n}
      unzip -P "$pass" "$zipfile"
      if [ $? -eq 0 ]; then
          echo "Password: $pass"
          break
        fi
      echo "$pass"
      #echo "${i}${j}${n}"
      for b in {0..9}; do
        #4 char
        pass=${i}${j}${n}${b}
        unzip -P "$pass" "$zipfile"
        if [ $? -eq 0 ]; then
            echo "Password: $pass"
            break
          fi
        echo "$pass"
        #echo "${i}${j}${n}${b}"
        for v in {0..9}; do
          #5 char
          pass=${i}${j}${n}${b}${v}
          unzip -P "$pass" "$zipfile"
          if [ $? -eq 0 ]; then
              echo "Password: $pass"
              break
            fi
          echo "$pass"
          #echo "${i}${j}${n}${b}${v}"
        done
      done
    done
  done
done
