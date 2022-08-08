#activity 1

a = input("Enter your value: ")
type(a)

a_int= int(a)

print("The value is", a,"with type", print(type(a_int)))

#when entering integer for a variable requesting a float, number will end with .0 at the end.

#activity 2

result = (5 + 3) ** 2 * 9 
 
#activity 3

a=float(input("Key in decimal number: "))

print(int(a))

#activity 4

P= int(input("enter initial deposit"))
r= float(input("enter interest rate"))
n= int(input("enter number of interest times per year"))
t= int(input("enter compounding period"))

V= P * (1 + (r/n)) ** (n*t)

print("the future value is", V)

#activity 5

principal= int(input("enter principal borrowing amount"))
rate= float(input("enter interest rate")
days= int(input("enter number of days for loan"))

interest= (principal * rate * days) / 365

print("the interest is", interest)

#activity 6
a= 1
b= 0

print(a < b)

#activity 7

import math
a=int(input("enter number"))

print("The boolean of your number is", 
print("The binary of your number is", bin(a))
print("The square root of your number is", math.sqrt(a))

#activity 8

total_sum = 0

for n in range(5):
	#take inputs
	num = int(input("Enter Number: ")
	#calculate total
	total_sum += num

avg = total_sum / 5

print("total sum is", total sum)
print("average is", avg)


#activity 9


address=blk 2 emerald drive 01-01
print(address)
house_num= 01-01
print("the unit number is", house_num)
street_name= emerald drive
print("the street name is", street_name)


