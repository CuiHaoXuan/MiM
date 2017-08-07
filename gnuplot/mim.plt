# gnuplot mim.plt
# display mim.png
# cp mim.png /root/桌面

set terminal png truecolor
set output "mim.png"  

set xrange [1:10]
set yrange [2.5:7.5]
set ytics 2.5,0.5,7.5

#set ytics nomirror
#set y2range [0:100]
#set y2tics 5
#set y2tics 0,10,100

set grid xtics
set style data histograms
set style fill solid 1.00 border -1

# set key box reverse top Left Right samplen 2 spacing 1.2
set key at 5.1,7.3 top Right samplen 2

set xlabel "Times"
set ylabel "Average Transmission Speed (KB/s)"
#set y2label "CPU Utilization of NS3 Thread-1/Thread-2 (%)"

#----------------------------------------- no use
#  Total Average Speed - TAS-TCP-MDR
#set label 'TAS-TCP-MDR' at 1.5,6.5 left front tc ls 11
#set arrow from 1.5,6.4 to 3,4 nohead front ls 11
#set label 'TAS-MPTCP-MDR' at 3,5.8 left front tc ls 11
#set arrow from 3,5.7 to 4,3 nohead front ls 11
#set label 'TAS-Improved-MPTCP-MDR' at 4.5,5 left front tc ls 11
#set arrow from 4.5,4.9 to 6,3 nohead front ls 11
#-----------------------------------------

#plot 'mim.dat' using 1:2 title "The Average RTT of ping" with lines ls 1 lw 1 lc "red"

#plot 'mim.dat' using 1:2 axis x1y1 title "Average RTT" with linespoints pointtype 2, \
#     'mim.dat' using 1:2 axis x1y2 title "CPU Utilization" with linespoints pointtype 3

set arrow from 1,5.066 to 10,5.066	nohead front ls 10 lt 0 lc "blue"
set arrow from 1,3.960 to 10,3.960	nohead front ls 11 lt 0 lc "red"
set arrow from 1,3.530 to 10,3.530	nohead front ls 12 lt 0 lc "green"

# using 1:2 ＝ 使用 *.dat 文件中的 1，2 列作为 x，y 作图
plot 'mim.dat' using 1:2 axis x1y1 title "TCP-MDR" with lp pt 7 lc "red", \
     'mim.dat' using 1:3 axis x1y1 title "MPTCP-MDR" with lp pt 9 lc "green", \
     'mim.dat' using 1:4 axis x1y1 title "Improved-MPTCP-MDR" with lp pt 9 lc "blue"


#----------------------------------------- no use
#     'mim2.dat' using 2:xtic(10) title "aaa" fs pattern 4, \
#     'mim2.dat' using 3:xtic(10) title "bbb" fs pattern 1, \
#     'mim2.dat' using 4:xtic(10) title "ccc" fs pattern 5

#     'mim2.dat' using 2:xtic(1) title "aaa", '' using 3 title "bbb", '' using 4 title "ccc"
#     'mim2.dat' u 2:xtic(1) ti columnheader(2)  fs pattern 4,\
#     'mim2.dat' u 3:xtic(1) ti columnheader(3)  fs pattern 3,\
#     'mim2.dat' u 4:xtic(1) ti columnheader(4)  fs pattern 2
#-----------------------------------------
