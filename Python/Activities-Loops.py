#activity 1

fruit_list = ["apple", "banana", "cherry", "gooseberry","kumquat", "orange", "pineapple"]

count=0
for i in fruit_list:
	print(fruit_list[count])
count += 1

#activity 2

word= input("enter a word : ")
for letter in word:
	print(letter)

#activity 3

string= str(input("enter word: ")

count = 0

for i in string:
	count+=1

print("there are ", count," characters in this word")

#activity 4

a = ["a", "bc", "rye", "hello", "c", ""]
listLength = len(a)
newList = []
for i in range(listLength):
        if a[i] >= 2:
                newList.append(a[i])
        i += 1
        print(newList)

#activity 5

#script 1: range

for i in range (100,1000):
        if i % 50 == 0:
                print(i)
        i += 1


#script 2: while

num = 1000
count = 1
while count != num:
	if count % num == 0:
		print(count)
	count += 1

#activity 6
num = 1000
count = 1
while count != num:
	number= count + (count + 1)
	count += 1
print(number)


#activity 7

num = int(input("enter the number: ")

fact = 1
i = 1

while i <= num
	fact = fact*i
	i += 1
print("\nfactorial =", fact)

#activity 8 (quite challenging)

fruit_list = ["apple", "banana", "cherry", "gooseberry","kumquat", "orange", "pineapple"]
print(fruit_list)
fruit_name = str(input("enter a fruit name: ")
for i in fruit_list:
	if fruit_name == fruit_list[i]:
		print(fruit_list.index[fruit_name])
		fruit_name = str(input("please enter another fruit")
	else:
		fruit_name =


#activity 9 (challenging)
int_list = []
int = input("key in a number, or key in quit: ")
if int == quit:
	quit()
else:
	int = int(int)
int_list.append(int)

#activity 10

num = int(input("key in a number: ")
for i in range(1,int)
	answer = i + num
	print( i, "x", num, "=", answer)


#activity 11

number = 100
count = 0
for i in range(2, (number//2 + 1)):
	if (number % i == 0)
	count - count _ 1
	break

if (count == 0 and Number != 1):
	print(" %d is a Prime" %number)
else:
	print(" %d is not a Prime" %number)

#activity 12

import math

num1=int(input("key in 1st number: ")
num2=int(input("key in 2nd  number: ")
print("The greatest common denominator is : ", end="")
print(math.gcd(num1,num2))

#activity 13

def countFrequency(my_list):
	freq={}
	for item in my_list:
		for i in str(item):
			if (i in freq):
				freq[i] += 1
			else:
				freq[i] = 1
	for key, value in freq.items():
		print("%d : % d"%(int(key), int(value)))

my_list =str(input("key in your number: ")
countFrequency(my_list)


#activity 14

def computeLCM(x, y):
	if x > y:
		greater = x
	else:
		greater = y

	while(True)
		if((greater % x == 0) and (greater % y == 0)):
		lcm = greater
		break
	greater += 1

	return lcm

num1 = int(input("key in 1st number: "))
num2 = int(input("key in 2nd number: "))

print("the lcm is ", computeLCM(num1,num2)

#activity 15 (challenging)


