set datafile separator ","

set grid
set angles degrees

unset key

set title 'Jarak vs Ketinggian Matahari FE'
set xlabel 'Jarak dari Pontianak (km)'
set ylabel 'Ketinggian Matahari (km)'

set output 'jarak-vs-tinggi-matahari-fe.png'
set terminal pngcairo  background "#ffffff" enhanced font "arial,8" fontscale 1.0 size 500, 300
plot 'fe101-sheet.csv' using 8:12 , \
   x * tan(90-x/111.31944)