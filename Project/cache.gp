set terminal png truecolor             # Set output type to png
set grid                               # Turn on grid

unset log                              # Remove any previous log scaling
unset label                            # Remove any previous labels

set autoscale                          # Scale axes automatically
#set xtic auto                          # set xtics automatically
#set ytic auto                          # set ytics automatically


set output 'graph.png'                # Set output file
set title 'VARYING HITRATE WITH CACHE SIZE '                 # Set plot title

# set datafile separator ","           # Uncomment when using CSV files

set xtic add(8, 128, 256)                                       # Add xtics at points
set ytic add(3.333333,22, 68.33333)               # Add ytics at points

set xr[0:256]
set yr[0:100]


set xlabel "CacheSize"                 # Set X axis label
set ylabel "HitRate"                   # Set Y axis label

plot 'cache.dat' using 1:2 with lines title ''