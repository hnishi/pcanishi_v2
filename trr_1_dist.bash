#!/bin/bash

g++ trr_extr_dista.cpp quatnishi.cpp pdbnishi.cpp trr_tranishi.cpp inpnishi.cpp math_nishi.cpp -o trr_extr_dista.exe -I ~/nishitool/eigen-eigen-1306d75b4a21

./trr_extr_dista.exe prm_dista.inp > res_dista.res 

cat res_dista.res


