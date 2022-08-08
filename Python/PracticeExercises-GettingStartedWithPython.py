#activity 1

a = input("key in 1st integer: ")

type(a)

int_a = int(a)

print("The value is" a "with" type(int_a))

#activity 2

P= int(input("enter initial deposit"))
r= float(input("enter interest rate"))
n= int(input("enter number of interest times per year"))
t= int(input("enter compounding period"))

V= P * (1 + (r/n)) ** (n*t)

print("the future value is", V)

#activity 3

principal= int(input("enter principal borrowing amount"))
rate= float(input("enter interest rate")
days= int(input("enter number of days for loan"))

interest= (principal * rate * days) / 365

print("the interest is", interest)

#activity 4

total_price=int(input("total payable"))
tax=int(input("tax rate in %")

total_price_with_tax = (tax/100) * total_price

print(total_price_with_tax)

#activity 5

a= 1
b= 0

print(a < b)

#activity 6

first = int(input("Input a number: "))
second = int(input("Input another number: "))

if first > second:
    print(first + " is greater than " + second)
elif first < second:
    print(second + " is greater than " + first)
else:
    print("They are the same number!")

#activity 7

total_sum = 0

for n in range(5):
        #take inputs
        num = int(input("Enter Number: ")
        #calculate total
        total_sum += num

avg = total_sum / 5

print("total sum is", total sum)
print("average is", avg)

#activity 8

import math
a=int(input("enter number"))

print("The boolean of your number is",
print("The binary of your number is", bin(a))
print("The square root of your number is", math.sqrt(a))

#activity 9

#activity 10

address=blk 2 emerald drive 01-01
print(address)
house_num= 01-01
print("the unit number is", house_num)
street_name= emerald drive
print("the street name is", street_name)

#activity 11

print("This program saves a Contact in your Contacts List")
name = input("Contact name? ")
address  = input("Contact address? ")
city = input("Contact city of residence? ")
phone = input("Contact phone? ")

change = input("Which field would you like to change? First Name, Last Name, address, city, state, zip or phone ")
if change == "Name":
    	name = input("What is the new value")
    	print("The updated first name is", name)
elif change == "address":
    	address = input("What is the new value")
    	print("The updated address is", address)
elif change == "city":
    	city = input("What is the new value")
    	print("The updated city is", city)
elif change == "city":
    	state = input("What is the new value")
    	print("The updated state is", city)
elif change == "phone":
    	phone = input("What is the new value")
    	print("The updated phone number is", phone)
else:
	print("pls try again")

#activity 12

name = input("What is your name: ")
address = input("Where do you live: ")
city = input("Which city do you live in: ")
phone = input("What is your phone number: ")

print("Your name is", name)
print("You live on" address, city)
print("Your phone number is" phone)

#activity 13

print("This program saves a Contact in your Contacts List")
name = input("Contact name? ")
address  = input("Contact address? ")
city = input("Contact city of residence? ")
phone = input("Contact phone? ")

change = input("Which field would you like to change? First Name, Last Name, address, city, state, zip or phone ")
if change == "Name":
        name = input("What is the new value")
        print("The updated first name is", name)
elif change == "address":            
        address = input("What is the new value")
        print("The updated address is", address)
elif change == "city":               
        city = input("What is the new value")
        print("The updated city is", city)
elif change == "city":               
        state = input("What is the new value")
        print("The updated state is", city)
elif change == "phone":
        phone = input("What is the new value")
        print("The updated phone number is", phone)
else:
        print("pls try again")

name = input("What is your name: ")
address = input("Where do you live: ")
city = input("Which city do you live in: ")
phone = input("What is your phone number: ")

print("Your name is", name)
print("You live on" address, city)
print("Your phone number is" phone)
