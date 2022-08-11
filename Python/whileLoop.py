num = 50
userguess = int(input("enter value: "))
count = 1
while userguess != num
	#print ("the value is not equal")
	if userguess < num:
		print("low")
	else:
		print("high")
	#adds 1 count to count, acting as an exit loop
	count += 1
	userguess = int(input("enter 2nd value: "))
print("Done", count, "result")


#random function from python
import random
num = random.randint(1,100)
print(num)

#random choice function from python
color = random.choice(["red","yellow])
print(color)


#turtle
