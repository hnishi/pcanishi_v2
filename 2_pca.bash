#!/bin/bash

if [ -f pca.exe ]; then
  echo ""
else
  make
  rm *.o
fi

if [ -d outputPC ]; then
  echo "WARNING: you want to delete outputPC?  y or n"
  read yesno 
  if [ $yesno == y ]; then
    echo "OK! delete outputPC/ and remake outputPC/"
    rm -r outputPC
    mkdir outputPC
  else
    echo "STOP"
    exit
  fi
else
  mkdir outputPC
fi

cp res_extr.res outputPC/
./a.out prm_pca.inp > res_pca.res
cp res_pca.res outputPC/
cat outputPC/res_pca.res

cp prm_pca.inp  outputPC/
mv PC*.dat outputPC/
