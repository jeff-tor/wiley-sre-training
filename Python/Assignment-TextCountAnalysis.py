s = """Imagine a vast sheet of paper on which straight Lines, Triangles, Squares, Pentagons, Hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows - only hard and with luminous edges - and you will then have a pretty correct notion of my country and countrymen. Alas, a few years ago, I should have said "my universe": but now my mind has been opened to higher views of things."""

#do not change any code above this line
#your code here
s = s.lower()
#Step 2: Split the String into Words
words = list()
#your code goes here
words = s.split()

print(words) #do not delete 
#do not write any code past here

#Step 3: Count the Words
count = len(words)
print(count)

#Step 4: Count the Distinct Words
wordset = set(words)
unique = len(wordset)

#Step 5: Compute the Word Frequencies
word_freq = dict()

#your code goes here
for s in words:
	if s not in word_freq:
		word_freq[s] = 1
	else:
		word_freq[s] += 1

#Step 6: Remove Punctuation Marks
import string #import the string module 
#use the string.punctuation built-in python to create a list of all punctuations
punctuation_list =  list(string.punctuation)

print(words)
w_clean = list()

#your code goes here
for s in parsed_text:
	clean = s
	if len(parsed_test) <= 1:
		w_clean.append(parsed_text)
		continue
	for p in punctuation_list:
		if p in parsed_text:
		parsed_text = parsed_text.replace(p,"")
	w_clean.append(parsed_text)
print(w_clean)
print(len(w_clean))

#Step 7
#Finally, create a single script that performs all of the following operations on the original 's' string.
#Convert the string to lowercase characters.
#Split the lowercase string into individual words.
#Remove the punctuation from the lowercase words. Assume that all punctuation is either the first character or the last character of each item in the list.
#Perform a count analysis on the words without punctuation characters.
#Display the dictionary with the word counts and the number of distinct words in the original string.
s = """Imagine a vast sheet of paper on which straight Lines, Triangles, Squares, Pentagons, Hexagons, and other figures, instead of remaining fixed in their places, move freely about, on or in the surface, but without the power of rising above or sinking below it, very much like shadows - only hard and with luminous edges - and you will then have a pretty correct notion of my country and countrymen. Alas, a few years ago, I should have said "my universe": but now my mind has been opened to higher views of things."""

s = s.lower()

words = s.split()

w_clean = list()

for s in words:
    clean = s
    if len(clean) <= 1:
        w_clean.append(clean)
        continue
    for p in punctuation_list:
        if p in clean:
            clean = clean.replace(p,"")
    w_clean.append(clean)

word_freq = dict()
for s in w_clean:
    if s not in word_freq:
        word_freq[s] = 1
    else:
        word_freq[s] += 1

wordset = set(w_clean)
unique = len(wordset)
print(word_freq)
print("The number of unique words is:", unique)
print("The total number of words is:",len(w_clean))
