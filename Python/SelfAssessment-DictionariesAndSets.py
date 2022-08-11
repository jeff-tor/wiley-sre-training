#activity 1

mySet = {"1","2","3","4","5"}
newSet = mySet.copy()
diff = set()
value = input("enter a value: ").lower()
cmd = input('would you like to "add" or "remove" (enter "quit" to end)').lower()
while cmd !="quit":
	if cmd == "add":
		if value in newSet: #prints error if value found
			print("Error value already in set")
		else: #appends to newSet if value not found
			newSet.add(value)
	if cmd == "remove": 
		if value in newSet: #removes if value found
			newSet.remove(value)
		else: #prints error if value not found
			print("Error value not in set")
	value = input("Kindly enter a value: ").lower()
	cmd = input('would you like to "add" or "remove" (enter "quit" to end): ').lower()

print("Original set to compare: ",mySet)
print("Updated set: ", newSet)
for i in mySet:
	if i not in newSet:
		diff.add(i) #append i from mySet to diff if not found in newSet
for i in newSet:
	if i not in mySet:
		diff.add(i) #append i from newSet to diff if not found in mySet
print("The difference in the 2 sets is: ",diff)
