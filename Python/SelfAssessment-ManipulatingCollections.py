tupleNum= ( 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 , 11 , 12 )
tupleList= list(tupleNum)
print(tupleList)

for i in tupleList:
	list1=tupleList[i:i+3]
	i += 3
