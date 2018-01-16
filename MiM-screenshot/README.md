经过测试 (每个大实验，nc 35次，去掉 5 个最高值)

截图:	mim-tcp-original-mdr---nc-[1-5].png

截图:	mim-tcp-original-mdr---iperf3-[1-4].png

截图:	mim-tcp-original-mdr---180s-iperf3-[1-4].png

截图:	mim-tcp-original-mdr---routing-table.png


(Iface: eth0)			

(bgpd file size: 1849608)

mim-tcp-original-mdr ----- nc-用时 113, 129, 82, 125, 119, 125, 97, 130, 98, 123, 93, 127, 90, 102, 129, 94, 84, 149, 115, 90, 126, 118, 89, 83, 119, 101, 125, 136, 120, 87, 130, 127, 111, 82, 126

			iperf3: [ iperf3 -s ]	[ iperf3 -c 112.26.0.1 -t 180 ]

				(180秒，传输 3.23 MBytes，bandwidth 150 Kbits/s, Retry 192)

				(180秒，传输 2.78 MBytes，bandwidth 129 Kbits/s, Retry 218)

				(180秒，传输 3.81 MBytes，bandwidth 178 Kbits/s, Retry 151)

				(180秒，传输 2.79 MBytes，bandwidth 130 Kbits/s, Retry 261)

				(180秒，传输 2.81 MBytes，bandwidth 131 Kbits/s, Retry 240)





经过测试 (每个大实验，nc 35次，去掉 5 个最高值)

截图:	mim-mptcp-fullpath-mdr---nc-[1-4].png

截图:	mim-mptcp-fullpath-mdr---iperf3-[1-8].png

截图:	mim-mptcp-fullpath-mdr---routing-table-[1-3].png

截图:	mim-mptcp-fullpath-mdr---mptcp.png

截图:	mim-mptcp-fullpath-mdr---NS3.png

(Iface: eth0)			

(bgpd file size: 1849608)


mim-mptcp-fullpath-mdr ----- nc-用时 89, 86, 102, 99, 94, 93, 127, 101, 111, 92, 94, 95, 89, 87, 94, 123, 104, 89, 90, 86, 136, 102, 92, 95, 93, 87, 96, 95, 96, 98, 92, 91, 94, 88, 89

			iperf3: [ iperf3 -s ]	[ iperf3 -c 112.26.0.1 -t 180 ]

				(180秒，传输 2.88 MBytes，bandwidth 134 Kbits/s, Retry 0)

				(180秒，传输 2.59 MBytes，bandwidth 121 Kbits/s, Retry 0)

				(180秒，传输 2.61 MBytes，bandwidth 122 Kbits/s, Retry 0)

				(180秒，传输 2.70 MBytes，bandwidth 126 Kbits/s, Retry 0)

				(180秒，传输 2.86 MBytes，bandwidth 133 Kbits/s, Retry 0)



