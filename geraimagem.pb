#!/usr/bin/gnuplot
reset
set terminal png enhanced font "/usr/share/fonts/truetype/msttcorefonts/verdana.ttf,12" size 1200,600
set style line 1 lc rgb '#4286f4' pt 4 ps 0 lt 1 lw 2
set style line 2 lc rgb '#8b1a0e' pt 5 ps 0 lt 1 lw 2
set style line 3 lc rgb '#5e9c36' pt 6 ps 0 lt 1 lw 2

set xdata time
set timefmt "%H:%M:%S"
set format x "%H:%M"
set xlabel "horario"

set ylabel "Valor"
set yrange [ 10600:12020]

set title "Valor do Bitcoin hoje"
set key reverse left outside
set grid
set tics scale 0

set style data linespoints
plot ARG1 using 1:2 title "MercadoBitCoin" w lp ls 1, \
		 ARG1 every 30 using 1:2:2 with labels textcolor '#4286f4' enhanced font "/usr/share/fonts/truetype/msttcorefonts/Arial_Bold.ttf,9" rotate by 45 notitle, \
		 ARG1 using 1:3 title "FoxBit" w lp ls 2, \
		 ARG1 every 30 using 1:3:3 with labels textcolor '#8b1a0e' enhanced font "/usr/share/fonts/truetype/msttcorefonts/Arial_Bold.ttf,9" rotate by 45 notitle, \
		 ARG1 using 1:4 title "BitCambio" w lp ls 3, \
		 ARG1 every 30 using 1:4:4 with labels textcolor '#5e9c36' enhanced font "/usr/share/fonts/truetype/msttcorefonts/Arial_Bold.ttf,9" rotate by 45 notitle, \
		 
#
