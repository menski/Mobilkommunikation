set terminal postscript eps enhanced
set output "datenraten.eps"
set boxwidth 0.7
set style fill solid 0.75 border -1
unset key
set border 3
unset mytics
set xrange [1:7]
set xtics ("GPRS" 2, "EDGE" 3, "UMTS" 4, "HSDPA" 5, "LTE" 6) nomirror
set ylabel "max. kb/s"
set logscale y
set yrange [1:200000]
set ytics (10, 100, 1000, 10000, 100000) nomirror
set grid y

plot 'datenraten.txt' using ($1+1):2:3 with boxes lc variable

# vim: set ft=gnuplot:
