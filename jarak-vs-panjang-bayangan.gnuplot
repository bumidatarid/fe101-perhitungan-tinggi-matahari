set datafile separator ","

set grid
set angles degrees

unset key

set title 'Jarak vs Panjang Bayangan'
set xlabel 'Jarak dari Pontianak (km)'
set ylabel 'Panjangan Bayangan Normalized (cm)'

set output 'jarak-vs-panjang-bayangan.png'
set terminal pngcairo  background "#ffffff" enhanced font "arial,8" fontscale 1.0 size 500, 300
plot 'fe101-sheet.csv' using 8:5 , \
   200 * tan(x/111.31944)