#!/bin/bash

 for((i=1; i <= 255; i++)); do
  if ! ping -c 2 192.168.0.$i ; then
     echo "192.168.1.$i n�o respondeu $1 " >> falhou.txt
  else
         echo "192.168.1.$i respondeu $1 " >> respondeu.txt
  fi
 done