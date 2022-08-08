size = input("what size coffee you want, small, medium or large: ?").lower()
kind = input("what kind of coffee, brewed, espresso or coldbrew: ?")
flavour = input("what kind of flavour? hazelnut, vanilla or caramel?")

price = 0.00
#user will key in size of coffee they want
if size == 'small':
	price += 2
elif size == 'medium':
	price += 3
elif size == 'large':
	price += 4
else:
	print("error in input: size")
#user will key in kind of coffee brew technique
if kind == 'brewed':
    	price += 0
elif kind == 'espresso':
    	price += 0.5
elif kind == 'cold brew':
    	price += 1
else:
    	print("error in input: kind")
#user will select flavour they want
if flavour == 'none':
    price += 0
elif flavour == 'hazelnut' or flavor == 'vanilla' or flavor == 'caramel':
    price += 0.5
else:
    print("error in input: flavour")
#user will tip 15% to the shop
tip= 0.15 * price
#final output
print("the total cost is", price)
print("the total cost is", price+tip, "the tips are", tip)
