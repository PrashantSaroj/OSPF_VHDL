def the_printer(inp,info):
    l = len(inp)
    if l%8 != 0:
    	print("error in length of " + info)
    	return
    st = 0
    ed = 8
    print("-- I/P for " + info)
    while(l != 0):
        print("packet_in1 <= \"" + inp[st:ed] +"\";")
        print("\twait for clk_period;")
        st = st + 8
        ed = ed + 8
        l = l - 8

version = "00000010"
p_type = "00000010"
p_lenght = "0"*8 + "01001100" #76
router_id = "00000000000010000000000000001000" #8
zeros = '0'*8
area_id = "00001000000011000000100000001100" #12

checksum = zeros*2
auType = zeros*2

authentication = zeros*8
network_mask = zeros*4
helloInterval = "0"*8 + "00010000" #16
Options = zeros
rte_pri = zeros
routerDeadInterval = "0"*24 + "00100000" #32
designated_router = zeros*4
backup_designated_routed = zeros*4
# 8 neighbours
the_printer(version, "VERSION")
the_printer(p_type, "PACKET TYPE")
the_printer(p_lenght, "PACKET LENGTH")
the_printer(router_id, "ROUTER ID")
the_printer(area_id, "AREA ID")
the_printer(checksum, "CHECKSUM")
the_printer(auType, "AU TYPE")
the_printer(authentication, "AUTHENTICATION")
the_printer(network_mask, "NETWORK MASK")
the_printer(helloInterval, "HELLO INTERVAL")
the_printer(Options, "OPTIONS")
the_printer(rte_pri, "RTE PRI")
the_printer(routerDeadInterval,"ROUTER DEAD INTERVAL")
the_printer(designated_router, "Designated ROUTER")
the_printer(backup_designated_routed, "BACKUP ROUTER")
for i in range(8):
	neighbours = bin(i)[2:]
	th = '0'*(32 - len(neighbours)) + neighbours
	the_printer(th, "Neighbour" + str(i))

