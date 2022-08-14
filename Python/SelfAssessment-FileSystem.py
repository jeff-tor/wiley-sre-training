class FileItem:
	def __init__(self, perm, owner, size):
		self.perm = perm
		self..owner = owner
		self.size = size

class CsvFile(FileItem):
	def __init__(self, perm, owner, type):
		 super()__init__(perm, owner, type)

class JpgFile(FileItem):
	def __init__(self, perm, owner, type)
		super()__init__(perm, owner, type)

class Mp3File(FileItem):
	def __init__(self, perm, owner, type)
		super()__init__(perm, owner, type)

jpg1 = JpgFile("Read-Only","jeff",".jpg")
jpg2 = JpgFile("Read-Only","jeff",".jpg")
jpg3 = JpgFile("Read-Only","jeff",".jpg")
jpg4 = CsvFile("Full-Access","jeff",".csv")
jpg5 = CsvFile("Full-Access","jeff",".csv")
jpg6 = CsvFile("Full-Access","jeff",".csv")

csv1 = CsvFile("Full-Access","jeff",".csv")
csv2 = CsvFile("Full-Access","jeff",".csv")
csv3 = CsvFile("Full-Access","jeff",".csv")
csv4 = CsvFile("Full-Access","jeff",".csv")
csv5 = CsvFile("Full-Access","jeff",".csv")
csv6 = CsvFile("Full-Access","jeff",".csv")

mp3_1 = CsvFile("Full-Access","jeff",".csv")
mp3_2 = CsvFile("Full-Access","jeff",".csv")
mp3_3= CsvFile("Full-Access","jeff",".csv")
mp3_4= CsvFile("Full-Access","jeff",".csv")
mp3_5= CsvFile("Full-Access","jeff",".csv")
mp3_6= CsvFile("Full-Access","jeff",".csv")

#how do i think that this is a good idea hmmmm...... Probably have to think a bit more...

#sub class and super class, super class is referenced class , sub class is the class taking the reference.

#try to finish up the part after exercising youtube options.
