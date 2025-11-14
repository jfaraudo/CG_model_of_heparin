set key bottom right
# bead size in nm
bs = 0.46
# Ideal chain theoretical value (sqrt of number of beads * bead size)
f(x) = bs * sqrt(x)

#plot colors
set style line 1 linetype 1 linecolor rgb "green" lw 1
set style line 2 linetype 6 linecolor rgb "red" lw 1

#Labels
set xlabel "Dp"
set ylabel "Rg (nm)"

#plot data
plot 'comparison.dat' u 1:3 with points pt 6 ps 2 t 'MD sims',f(x) w l ls 2 t "Theory ideal chain",'experimental.dat' u 1:2 with points pt 1 ps 2 t "Experimental"
