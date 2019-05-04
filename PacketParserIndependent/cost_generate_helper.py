for i in range(0, 32):
	for j in range(0, 8):
		id_down = str(12 + 10*j)
		id_up = str(12 + 10*j + 3)
		cost_down = str(12 + 10*j + 8)
		cost_up = str(12 + 10*j + 9)
		print("graph(%s, to_integer(unsigned(DD(%s, %s to %s)))) <= DD(%s, %s to %s);" % (str(i), str(i), id_down, id_up, str(i), cost_down, cost_up))
