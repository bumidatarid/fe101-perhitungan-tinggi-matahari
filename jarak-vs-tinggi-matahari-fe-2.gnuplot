set datafile separator ","

set grid
set angles degrees

set xrange [1:10000]
set yrange [0.0:12000]
#set xr [-90:90]
#set yr [0.0:8000]
unset key

set title 'Jarak vs Panjang Bayangan'
set xlabel 'Jarak dari Pontianak (derajat)'
set ylabel 'Sudut Pengamatan (derajat)'

set output 'jarak-vs-tinggi-matahari-fe-2.png'
set terminal pngcairo  background "#ffffff" enhanced font "arial,8" fontscale 1.0 size 500, 300
plot 'fe101-sheet.csv' using 8:12 , \
   x  * tan(90-x/111)