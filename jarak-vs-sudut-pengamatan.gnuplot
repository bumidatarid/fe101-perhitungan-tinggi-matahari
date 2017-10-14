set datafile separator ","

set grid
set angles degrees

unset key

set title 'Jarak vs Sudut Pengamatan'
set xlabel 'Jarak dari Pontianak (derajat)'
set ylabel 'Sudut Pengamatan (derajat)'

set output 'jarak-vs-sudut-pengamatan.png'
set terminal pngcairo  background "#ffffff" enhanced font "arial,8" fontscale 1.0 size 500, 300
plot 'fe101-sheet.csv' using 9:11 , \
   90-x