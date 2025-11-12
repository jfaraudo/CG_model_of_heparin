#set terminal svg size 600,400 dynamic enhanced font 'arial,11' mousing butt dashlength 1.0 
#set output 'Rg_dihedral.svg'
set key top left
# Ideal chain theoretical value (sqrt of number of beads)
f(x) = 4.9

#plot colors
set style line 1 linetype 1 linecolor rgb "blue" lw 2
set style line 2 linetype 6 linecolor rgb "red" lw 1

#Labels
set xlabel "Dihedral energy coefficients"
set ylabel "Rg/bead size"

set xrange[0:3.0]
#plot data
plot 'Rg_dihedral.dat' u 1:2 with points pt 6 ps 2 t 'MD sims',f(x) w l ls 2 t "Ideal polymer chain"
