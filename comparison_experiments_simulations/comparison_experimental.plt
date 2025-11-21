set key bottom right
# bead size in nm
bs = 0.46
# freely rotating chain theoretical value (1+alpha/1-alpha aprox 7.55 )
f(x) = bs * sqrt(7.55*x/6)

#plot colors
set style line 1 linetype 1 linecolor rgb "green" lw 1
set style line 2 linetype 6 linecolor rgb "red" lw 1

#Labels
set xlabel "Dp"
set ylabel "Rg (nm)"

#plot data
plot 'comparison.dat' u 1:3 with points pt 6 ps 2 t 'MD sims','experimental.dat' u 1:2 with points pt 1 ps 2 t "Experimental data",f(x) w l ls 2 t "Freely rotating chain"
