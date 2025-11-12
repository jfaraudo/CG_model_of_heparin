# Bead size is 1.4 in simulation units
bs=1.4
# Average Rg
l(x) = avRg 
fit l(x) 'Rg.dat' u 2:($3/bs) via avRg 

#plot colors
set style line 1 linetype 1 linecolor rgb "blue" lw 2
set style line 2 linetype 1 linecolor rgb "black" lw 1

set xlabel "Time (LJ units)"
set ylabel "Rg/bead size"

plot 'Rg.dat' u 2:($3/bs) t 'MD sims',l(x) w l ls 2 t sprintf("<Rg>= %.2f",avRg)



