num = int(input("enter a number: "))
for i in range(0, num+1):
	if i == num:
		print("TRADITION")
	elif i % 15 == 0:
		print("fizz buzz")
	elif i % 5 == 0:
		print("buzz")
	elif i % 3 == 0:
		print("fizz")
	else:
		print(i)

#for this to work you must consider the elif and if loops,
