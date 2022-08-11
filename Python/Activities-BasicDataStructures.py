#activity 1

name=str(input("what is your name?: "))
age=int(input("what is your age?: "))
birthYear=int(input("when is your birth year?: "))

list.append(name)
list.append(age)
list.append(birthYear)
print(list)

#activity 2

list = ["Apple","Orange","Pear"]
toAdd = str(input("key in fruit to add: "))
toAdd = str(input("key in 2nd fruit to add: "))
toAdd = str(input("key in 3rd fruit to add: "))
list.append(toAdd)
print(list)

#activity 3

list = ["Apple","Orange","Pear"]

toPop= str(input("key in fruit to delete: "))
indexToPop= list.index(toPop)
removedFruit = list.pop(indexToPop)


#activity 4

list = ["Apple","Orange","Pear"]
print(list)
toUpdate=str(input("key in existing fruit to update: "))
indextoUpdate= list.index(toUpdate)

list[indexToUpdate]=toUpdate

print(list)


#activity 5

name= ("Jeff","Tor")
profession=("banker")
address=("wall street")
previousAddress=("singapore")

combinedTuple = name + profession + address + previousAddress
print(combinedTuple)

#activity 6

name= ("Jeff","Tor")
profession=("banker")
address=("wall street")
previousAddress=("singapore")
     
combinedTuple = name + profession + address + previousAddress
print(combinedTuple)

combinedList = list(combinedTuple)
print(combinedList)

toUpdateList = str(input("enter value from list to change": ))
afterUpdateList = str(input("enter the new value":))

afterUpdateListIndex = list.index(afterUpdateList)
combinedList[afterUpdateListIndex] = afterUpdateList

print(combinedList)
