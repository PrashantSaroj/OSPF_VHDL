from random import seed
from random import randint
import json

def the_printer(inp, info):
	l = len(inp)
	st = 0
	ed = 8
	print("-- I/P for " + info)
	while(l != 0):
		print("packet_in" + "1" + " <= \"" + inp[st:ed] +"\";")
		print("\twait for clk_period;")
		st = st + 8
		ed = ed + 8
		l = l - 8

# n = input("Number of nodes: ");
m = input("Number of Edges: ");

# print("Give the Ids of the routers in consecutive manner.")

inp = ''
graph = {}
for i in range(32):
	graph[str(i)] = {}
	# for k in range(8):
	# 	graph[str(i)][str(k)] = str(255)

print("'start node' 'end node' 'cost'")
for j in range(m):
	inp = raw_input().split()
	graph[inp[0]][inp[1]] = inp[2]
	graph[inp[1]][inp[0]] = inp[2]

# print(graph)

for satya in range(32):
	x = len(graph[str(satya)])
	for i in range(8 - x):
		graph[str(satya)]['32'] = str(255)

# while(1):
version = "00000010"
p_type = "00000010"
p_len = "0000101110001100" # is 2956

# print("To exit: Ctrl + C")
# print("router and portnum seperated by white space: ")
# temp = map(int, raw_input().split())
temp = int(input())
# grp_len = len(temp)
router_id = '0'*(32 - len(bin(temp)[2:])) + bin(temp)[2:]
area_id = '1'*32
checksum = '0'*16
au_type = '0'*16
authencation = '0'*64
zeros = '0'*8

the_printer(version, "VERSION") #8
the_printer(p_type, "PACKET TYPE") #8
the_printer(p_len, "PACKET LENGTH") #16
the_printer(router_id,"ROUTER ID") #32
the_printer(area_id,"AREA ID") #32
the_printer(checksum, "CHECKSUM") #16
the_printer(au_type, "AU TYPE") #16
the_printer(authencation, "AUTHENTICATION") #64

the_printer(zeros, "ZEROS1") #8
the_printer(zeros, "ZEROS2") #8
the_printer(zeros, "OPTIONS") #8
the_printer(zeros, "ETC") #8
the_printer(zeros*4, "DD SEQ NUM") #32
seed(10000)

#TODO: Make 32 ls advs each with 8 hosts
# counter = 1
for i in range(32):

	# if i == int(temp[counter]):
	# counter = counter + 1
	ls_ip_src = "1100000010101000" + '0'*(8 - len(bin(i)[2:])) + bin(i)[2:] + "00000000"
	the_printer(ls_ip_src, "LS IP SRC of the router_id") #32

	temp_id = bin(i)[2:]
	adv_router = '0'*(32 - len(temp_id)) + temp_id
	the_printer(adv_router, "ADV ROUTER") #32

	ls_seqNum = '1'*32
	the_printer(ls_seqNum, "LS SEQ NUM") #32

	# this is the ip of the neighbours of i
	for ele in graph[str(i)]:

		# dest = bin(int(ele))[2:]
		ls_id_dest = "1100000010101000" + '0'*(8 - len(bin(int(ele))[2:])) + bin(int(ele))[2:] + "00000000"
        the_printer(ls_id_dest, "LS DEST ID") #32

        ls_data = '1'*32
        the_printer(ls_data, "LS DATA") #32


        dist = bin(int(graph[str(i)][ele]))[2:]
        metric = '0'*(16 - len(dist)) + dist
        the_printer(metric, "METRIC COST") #16
	# else:
	# 	ls_ip_src = "0"*32 #"1100000010101000" + '0'*(8 - len(bin(i)[2:])) + bin(i)[2:] + "00000000"
	# 	the_printer(ls_ip_src, "LS IP SRC of the router_id") #32

	# 	temp_id = bin(i)[2:]
	# 	adv_router = "0"*32 #'0'*(32 - len(temp_id)) + temp_id
	# 	the_printer(adv_router, "ADV ROUTER") #32

	# 	ls_seqNum = '1'*32
	# 	the_printer(ls_seqNum, "LS SEQ NUM") #32

	# 	# this is the ip of the neighbours of i
	# 	for ele in graph[str(i)]:

	# 		# dest = bin(int(ele))[2:]
	# 		ls_id_dest = "0"*32 #"1100000010101000" + '0'*(8 - len(bin(int(ele))[2:])) + bin(int(ele))[2:] + "00000000"
	#         the_printer(ls_id_dest, "LS DEST ID") #32

	#         ls_data = "0"*32 #'1'*32
	#         the_printer(ls_data, "LS DATA") #32


	#         dist = bin(int(graph[str(i)][ele]))[2:]
	#         metric = "0"*16 #'0'*(16 - len(dist)) + dist
	#         the_printer(metric, "METRIC COST") #16
