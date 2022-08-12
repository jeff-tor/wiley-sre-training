class Appliances:
	def __init__(self, type_, material, size_):
		self.type_ = type_
		self.material = material
		self.size_ = size_

class House:
	def __init__(self, name, max_appliances):
		self.name = name
		self.max_appliances = max_appliances
		self.appliances = []

	def add_appliance(self, appliance):
		if len (self.appliances) < self.max_appliances
			self.appliances.append(appliance)
			return True
		return False

	def sentence(self):
		print(self.type_, self.size_)


appliance_1 = Appliances('Computer','Aluminium','Small')
appliance_2 = Appliances("Fridge","Aluminium","Big")
appliance_3 = Appliances("Aircon","Plastic","Medium")
appliance_4 = Appliances("Vaccuum","Aluminium","Small")

House = ("My Home",2)

House.add_appliance(appliance_1)
House.add_appliance(appliance_2)
