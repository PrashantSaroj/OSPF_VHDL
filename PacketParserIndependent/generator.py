from random import seed
from random import randint

def the_printer(inp,info):
    l = len(inp)
    st = 0
    ed = 8
    print("-- I/P for " + info)
    while(l != 0):
        print("packet_in1 <= \"" + inp[st:ed] +"\";")
        print("\twait for clk_period;")
        st = st + 8
        ed = ed + 8
        l = l - 8

version = "00000010" # 2
p_type = "00000010" # 2
p_length = "0000101110001100" # 2956 bytes
#abhi k liye fix h... but jab 8 port active honge toh 8 alag router id honge.
routed_id = "11000000101010000000001010101000" # 192.168.2.168
area_id = "11000000011001100000001001101001" # 192.102.2.105
checksum = '0'*16
au_type = '0'*16
authencation = '0'*64
zeros = '0'*8
#TODO: Make 32 LS adv packets. Each LS adv have 8 entries.
#TODO: LS adv entries have LSID,LSData, Metric. Metric is cost from the LSID to LSID in the entry.

the_printer(version, "VERSION") #8
the_printer(p_type, "PACKET TYPE") #8
the_printer(p_length, "PACKET LENGTH") #16
the_printer(routed_id,"ROUTER ID") #32
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


for i in range(32):
	
	# the_printer(zeros*2, "LS AGE")
	# the_printer(zeros, "OPT")

    temp_id = bin(i*128)[2:] # multiples of 128 till 128*31
    ls_id_src = '0'*(32 - len(temp_id)) + temp_id
    the_printer(ls_id_src, "LS ID SRC") #32

    temp_id = bin(i*256)[2:] # multiples of 256 till 256*31
    adv_router = '0'*(32 - len(temp_id)) + temp_id
    the_printer(adv_router, "ADV ROUTER") #32

    temp_id = bin(i*512)[2:] # multiples of 512 till 512*31
    ls_seqNum = '0'*(32 - len(temp_id)) + temp_id
    the_printer(ls_seqNum, "LS SEQ NUM") #32

    for k in range(8):
        ls_id_dest = ls_id_src[3:] + '0'*(3 - len(bin(k)[2:])) + bin(k)[2:]
        the_printer(ls_id_dest, "LS DEST ID") #32

        # ls_data is the IP address of the LSID: 172.158.100.*
        host = bin(k*2)[2:]
        ls_data = '101011001001111001100100' + '0'*(8 - len(host)) + host
        the_printer(ls_data, "LS DATA") #32


        dist = bin(randint(0,10000))[2:]
        metric = '0'*(16 - len(dist)) + dist
        the_printer(metric, "METRIC COST") #16
