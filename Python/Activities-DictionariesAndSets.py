#activity 1

def returnSum(dict):
	sum = 0
	for i in dict.values():
		sum = sum + i
	return sum

dict = {"hello":4,"world":4,"I":1,"am":2,"Martha":3}
print("the sum is :", returnSum(dict)

#activity 2

dict = {"hello":4,"world":4,"I":1,"am":2,"Martha":3}

dict_max = max(dict.keys(), key=(lambda k: dict[k]))
dict_max = min(dict.keys(), key=(lambda k: dict[k]))

print("Maximum Value:" ,dict[dict_max])
print("Minimum value:", dict[dict_min])

#activity 3

number_set = {2,3,4,1,5,1,5,1,2,3,}

print(sum(number_set))

#activity 4

number_set = {2,3,4,1,5,1,5,1,2,3,}

print(max(number_set))
print(min(number_set))

#activity 5

storage = {
    "cupboard" : ["spices", "flour", "sugar"],
    "drawer" : ["fork", "knife", "spoon"],
    "fridge" : ["butter", "milk", "cheese"],
    "emergency jar" : 150
}

storage["freezer"] = ["ice cubes","ice cream","pepperoni pizza"]
storage["cupboard"].sort()

#activity 6

price = {
    "milk" : 4,
    "butter": 2,
    "crackers": 1.5,
    "rice" : 2.25,
    "spaghetti" : 1.75,
    "dish soap": 3.25
}
quantity = {
    "milk" : 1,
    "butter" : 1,
    "crackers" : 3,
    "rice" : 2,
    "spaghetti" : 5,
    "dish soap": 1
}

total_cost = 0
for i in price:
    total_cost += (price[i]*quantity[i])

print("The total cost is ",total_cost)
